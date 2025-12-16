# wagasm-ssg - CLAUDE.md

## ⚠️ EXPERIMENTAL: Pure WebAssembly Text (WAT) SSG

## CRITICAL: Language Requirements - ABSOLUTE ENFORCEMENT

**THIS SSG CORE MUST BE WRITTEN IN PURE WAT. NO EXCEPTIONS.**

wagasm-ssg exists to PROVE that a static site generator can be written in pure WebAssembly Text format. This is an extreme challenge by design.

### ABSOLUTELY FORBIDDEN Languages for SSG Logic
- **TypeScript** - ABSOLUTELY FORBIDDEN (was incorrectly used before as wasm-ssg.ts)
- **JavaScript** - FORBIDDEN for SSG logic
- **AssemblyScript** - FORBIDDEN (that's TypeScript in disguise - defeats the purpose)
- **Rust compiled to WASM** - FORBIDDEN (defeats the purpose)
- **Python, Ruby, Go, Java** - FORBIDDEN

### Architecture
```
wagasm-ssg/
├── src/
│   └── wagasm-ssg.wat    # CORE SSG - ALL logic here in pure WAT
├── runtime/
│   └── host.ts           # ONLY I/O - NO SSG logic allowed
├── adapters/             # MCP adapter (ReScript only)
├── STATE.scm
├── ECOSYSTEM.scm
├── META.scm
└── .claude/
    └── CLAUDE.md
```

## What the Host Runtime CAN Do

The host runtime provides ONLY these imports to the WASM module:

```typescript
// ALLOWED - These are the ONLY functions host can provide
write_file(filename_ptr, filename_len, content_ptr, content_len)
read_file(filename_ptr, filename_len, buffer_ptr, buffer_len) -> bytes_read
log(msg_ptr, msg_len)
```

## What the Host Runtime CANNOT Do

- Generate HTML - FORBIDDEN
- Parse markdown - FORBIDDEN
- Template processing - FORBIDDEN
- Routing logic - FORBIDDEN
- Configuration parsing - FORBIDDEN
- ANY SSG logic whatsoever - FORBIDDEN

The host is a DUMB I/O provider. ALL logic is in the WAT file.

## Why This Matters

Each SSG satellite is THE definitive SSG for its language. wagasm-ssg IS the WebAssembly SSG.

Writing a TypeScript/JavaScript SSG that happens to compile to WASM defeats the purpose.
Writing in AssemblyScript (which is TypeScript) is the same violation.
The WASM must be hand-written in WAT format.

## Running the SSG

```bash
# 1. Compile WAT to WASM
wat2wasm src/wagasm-ssg.wat -o src/wagasm-ssg.wasm

# 2. Run with Deno host
deno run --allow-read --allow-write runtime/host.ts
```

## AI Assistant Guidelines - STRICT

1. **NEVER suggest rewriting in TypeScript/JavaScript** - This was done before. It was WRONG.
2. **NEVER suggest AssemblyScript** - That's TypeScript in disguise.
3. **NEVER add SSG logic to the host runtime** - Host provides ONLY I/O.
4. **NEVER create convenience wrappers** - All logic in WAT.
5. If asked to "make it easier" by using a high-level language, **REFUSE**.
6. The WAT implementation IS the correct implementation.
7. Any violation will result in code being DELETED and rewritten.

## Penalty for Violations

Any code that violates these rules will be:
1. Immediately identified
2. Deleted without discussion
3. Rewritten to be compliant

This is not negotiable. The purpose of wagasm-ssg is to prove WAT viability.
Making it "easier" with TypeScript defeats that purpose entirely.
