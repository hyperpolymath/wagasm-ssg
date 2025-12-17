;;; STATE.scm — wagasm-ssg
;; SPDX-License-Identifier: AGPL-3.0-or-later
;; SPDX-FileCopyrightText: 2025 Jonathan D.A. Jewell

(define metadata
  '((version . "0.1.0")
    (updated . "2025-12-17")
    (project . "wagasm-ssg")
    (required-language . "WebAssembly Text (WAT)")
    (status . "EXPERIMENTAL")))

(define language-enforcement
  '((primary-language . "WAT")
    (description . "WebAssembly Text format - the human-readable form of WASM")
    (file-extension . ".wat")
    (compiler . "wat2wasm (wabt)")
    (host-runtime . "Deno/ReScript provides I/O imports")
    (forbidden-languages . ("JavaScript" "TypeScript" "AssemblyScript" "Python"))
    (rationale . "wagasm-ssg is the EXPERIMENTAL pure WebAssembly SSG. The core logic MUST be in WAT. Host runtime provides only I/O.")
    (enforcement . "strict")))

(define experimental-notes
  '((why-experimental
     "WAT is a low-level language meant as a compilation target, not a source language.
      Writing an SSG in pure WAT is an extreme challenge:
      - No built-in file I/O (needs host imports)
      - No string type (manual memory management)
      - No high-level abstractions
      This is an experiment to prove it's possible.")
    (architecture
     "1. src/wagasm-ssg.wat - Pure WAT SSG logic
      2. runtime/host.ts - Deno host provides write_file, log imports
      The WAT is compiled to WASM, loaded by host, and executed.")))

(define current-position
  '((phase . "v0.1 - Experimental WAT Implementation")
    (overall-completion . 50)
    (components ((wat-engine ((status . "complete") (file . "src/wagasm-ssg.wat") (completion . 100)))
                 (host-runtime ((status . "complete") (file . "runtime/host.ts") (completion . 100)))
                 (mcp-adapter ((status . "pending") (language . "ReScript") (completion . 0)))))))

(define blockers-and-issues
  '((critical ())
    (high-priority (("Needs wat2wasm to compile WAT to WASM" . high)))))

(define state-summary
  '((project . "wagasm-ssg")
    (language . "WAT")
    (status . "EXPERIMENTAL")
    (completion . 55)
    (blockers . 1)
    (updated . "2025-12-17")))
