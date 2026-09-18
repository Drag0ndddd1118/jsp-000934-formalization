# Lean 4 Formalization of JSP-000934 (Erdős Problem #1124)

This repository provides a standalone, reproducible Lean 4 verification package for **JSP-000934** (Erdős Problem #1124 / Tarski's circle-squaring problem).

## Mathematical Overview

- **Problem Statement**: Can a square and a disk of equal area be partitioned into finitely many pieces and reassembled into each other using the prescribed rigid motions?
- **Mathematical Resolution**: Miklós Laczkovich, *Equidecomposability and discrepancy; a solution of Tarski's circle-squaring problem*, J. Reine Angew. Math. 404 (1990), 77–117. Laczkovich proved the stronger result that the pieces can be translated without rotation.
- **Formalization Authors**: OpenAI Codex and GPT-5.6 Sol (upstream formalization in `plby/lean-proofs`).
- **Packaging & Verification**: Qin Zhao (`Drag0ndddd1118`).

## Main Formalized Theorem

In `JSP_000934.lean`:
```lean
theorem jsp_000934_solved (r : ℝ) (hr : 0 < r) :
    Erdos1124.TranslationEquidecomposable (Erdos1124.disk r) (Erdos1124.square r) :=
  Erdos1124.erdos_1124 r hr
```

## Axiom Verification

`#print axioms jsp_000934_solved` relies strictly on standard Lean foundational axioms:
- `propext`
- `Classical.choice`
- `Quot.sound`

Zero `sorry`, zero `admit`, zero custom unproved axioms.

## Building and Verifying

Requires `elan` and Lean `v4.33.0`:

```bash
lake update
lake exe cache get
lake build
lake env lean JSP_000934.lean
```

## License

This project is licensed under the Apache License 2.0. See [LICENSE](LICENSE) for details.
