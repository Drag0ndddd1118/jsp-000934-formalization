# Formalization of JSP-000934 (Erdős Problem #1124: Tarski's Circle-Squaring Problem)

## Problem Overview

**Catalog ID:** [JSP-000934](https://github.com/TheJustinSunPrize/awards/blob/main/problems/catalog-0901-1000.md#JSP-000934)  
**Erdős Problem:** [#1124](https://www.erdosproblems.com/1124)  
**Mathematical Area:** Geometry / Measure Theory / Combinatorial Geometry  

### Problem Statement
Alfred Tarski (1925) asked whether a disk and a square of the same area in the Euclidean plane can be partitioned into finitely many pairwise congruent pieces. In 1990, Miklós Laczkovich resolved this problem affirmatively, proving moreover that the pieces can be reassembled using only translations.

### Resolution
Miklós Laczkovich proved in *Equidecomposability and discrepancy; a solution of Tarski's circle-squaring problem* (J. Reine Angew. Math. 419 (1990), 77–117) that a closed disk of radius $r > 0$ and a closed square of equal area ($\pi r^2$) are translation-equidecomposable. The proof establishes an extraordinary link between discrepancy theory, Fourier analysis (Fejér kernels), Diophantine approximation, dynamical systems on tori, and network flow/Hall marriage theorems.

## Formalization Details

- **Bridge File:** `JSP_000934.lean`
- **Main Modules:** `Erdos1124.lean`, `ErdosProblems/Erdos1124/`
- **Main Theorem:**
  ```lean
  theorem jsp_000934_solved (r : ℝ) (hr : 0 < r) :
      Erdos1124.TranslationEquidecomposable (Erdos1124.disk r) (Erdos1124.square r) :=
    Erdos1124.erdos_1124 r hr
  ```
- **Axiom Audit:**
  `#print axioms jsp_000934_solved` depends solely on standard Lean 4 axioms:
  ```lean
  [propext, Classical.choice, Quot.sound]
  ```
  Zero `sorry`, zero `admit`, zero custom axioms.

## Build & Verification Instructions

### Toolchain
- **Lean:** `leanprover/lean4:v4.33.0`
- **Mathlib:** `v4.33.0`

### Build & Verify
```bash
lake update
lake exe cache get
lake build
```

Verify zero unproved assumptions:
```bash
grep -rn --exclude-dir=".lake" --include="*.lean" "sorry" .
grep -rn --exclude-dir=".lake" --include="*.lean" "admit" .
```

## Attribution & Provenance
- **Mathematical Solution:** Miklós Laczkovich (1990).
- **Formal Authors:** OpenAI Codex, GPT-5.6 Sol via upstream formalization in `plby/lean-proofs` (`src/latest/ErdosProblems/Erdos1124.lean`).
- **Packaging & Verification:** Maintained and verified by Qin Zhao ([@Drag0ndddd1118](https://github.com/Drag0ndddd1118)).
