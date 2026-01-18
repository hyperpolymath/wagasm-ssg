;; SPDX-License-Identifier: AGPL-3.0-or-later
;; SPDX-FileCopyrightText: 2025 hyperpolymath
;; META.scm - Meta-level information for wagasm-ssg

(meta
  (media-type "application/meta+scheme")
  (version "1.0")

  (architecture-decisions
    (adr-001
      (title "Write directly in WebAssembly Text format")
      (status "accepted")
      (date "2024-12-29")
      (context "Exploring whether WAT can be a practical source language")
      (decision "Hand-write all SSG logic in WAT, not compile from higher-level language")
      (consequences
        (positive
          ("Direct control over every instruction")
          ("Deep understanding of WASM execution model")
          ("No compiler dependencies")
          ("Portable to any WASM runtime"))
        (negative
          ("Verbose compared to high-level languages")
          ("Manual memory management")
          ("Limited tooling support"))))
    (adr-002
      (title "Use S-expression format for readability")
      (status "accepted")
      (date "2024-12-29")
      (context "WAT supports both S-expression and flat formats")
      (decision "Use S-expression format exclusively for its readability")
      (consequences
        (positive
          ("Familiar to Lisp/Scheme developers")
          ("Clear nesting structure")
          ("Easier to read and maintain"))
        (negative
          ("More verbose than flat format")
          ("Extra parentheses"))))
    (adr-003
      (title "Import-based I/O model")
      (status "accepted")
      (date "2024-12-29")
      (context "WASM cannot access filesystem directly")
      (decision "Define imported functions for all I/O operations")
      (consequences
        (positive
          ("Clean separation between pure WASM and host")
          ("Works with any WASM runtime that provides imports")
          ("Security through sandboxing"))
        (negative
          ("Requires host glue code")
          ("Different hosts may have different import implementations")))))

  (development-practices
    (code-style
      (indentation "2 spaces")
      (naming "snake_case for functions, UPPER_CASE for constants")
      (comments "Extensive inline documentation")
      (structure "One major function per logical section"))
    (testing
      (approach "Host-side integration tests")
      (validation "Manual verification with test inputs")
      (location "test/"))
    (versioning
      (scheme "semantic")
      (changelog "CHANGELOG.adoc"))
    (documentation
      (format "AsciiDoc")
      (cookbook "cookbook.adoc with WAT patterns")
      (annotated-source "Inline comments explain each instruction"))
    (branching
      (strategy "trunk-based")
      (main-branch "main")))

  (design-rationale
    (why-wat-as-source
      "Everyone compiles TO WebAssembly - Rust, C, Go, AssemblyScript. But WAT 
       (WebAssembly Text format) is a complete, human-readable language in its own 
       right. wagasm proves that real applications can be written directly in WAT, 
       treating it as a first-class programming language rather than just a 
       compilation target.")
    (why-s-expressions
      "WAT's S-expression syntax resembles Lisp/Scheme. This is intentional - WAT 
       is designed to be readable. The S-expression format makes the stack machine 
       semantics visible while maintaining clear structure. For those familiar with 
       Scheme, WAT feels surprisingly natural.")
    (why-stack-machine-ssg
      "Stack-based programming is fundamentally different from register-based. 
       Building an SSG in WAT demonstrates how data flows through a stack machine, 
       making wagasm both a practical tool and an educational resource for 
       understanding WASM's execution model.")))
