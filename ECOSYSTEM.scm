;; SPDX-License-Identifier: AGPL-3.0-or-later
;; SPDX-FileCopyrightText: 2025 hyperpolymath
;; ECOSYSTEM.scm - Project ecosystem positioning for wagasm-ssg

(ecosystem
  (version "1.0")
  (name "wagasm-ssg")
  (type "ssg-engine")
  (purpose "Proving WebAssembly Text is viable as a source language, not just compilation target")

  (position-in-ecosystem
    (role "satellite")
    (hub "poly-ssg-mcp")
    (category "esoteric-ssgs")
    (uniqueness "Hand-written WAT - exploring the boundaries of WASM as a programming paradigm"))

  (related-projects
    (project
      (name "poly-ssg-mcp")
      (relationship "hub")
      (description "Central MCP orchestrator for all SSG engines")
      (integration "Provides wagasm adapter for unified SSG access"))
    (project
      (name "brainfuck-ssg")
      (relationship "sibling")
      (description "Brainfuck-based SSG")
      (shared-aspects ("esoteric language" "minimalism" "proving viability")))
    (project
      (name "befunge-ssg")
      (relationship "sibling")
      (description "Befunge-based SSG")
      (shared-aspects ("unconventional paradigm" "educational value")))
    (project
      (name "anvil-ssg")
      (relationship "sibling")
      (description "Rust-based SSG that can compile to WASM")
      (shared-aspects ("WASM output" "systems-level thinking"))
      (differences ("anvil compiles TO wasm, wagasm IS wasm")))
    (project
      (name "whitespace-ssg")
      (relationship "sibling")
      (description "Whitespace language SSG")
      (shared-aspects ("extreme minimalism" "unconventional syntax"))))

  (what-this-is
    ("A static site generator hand-written in WebAssembly Text format")
    ("A demonstration that WAT is a viable source language")
    ("An exploration of stack machine programming for real applications")
    ("An educational resource for learning WAT/WASM internals")
    ("Part of the poly-ssg esoteric language collection"))

  (what-this-is-not
    ("Not Rust/C/AssemblyScript compiled to WASM")
    ("Not a toy project - it actually generates sites")
    ("Not dependent on high-level abstractions")
    ("Not limited to WASM experts")))
