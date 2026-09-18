import Mathlib
import ErdosProblems.Erdos1124

/--
JSP-000934 (Erdős Problem #1124 / Tarski's circle-squaring problem):
For every positive radius r > 0, the closed disk and closed square of equal area
in the Euclidean plane are equidecomposable using finitely many translations.
Mathematical resolution: Miklós Laczkovich, Equidecomposability and discrepancy;
a solution of Tarski's circle-squaring problem, J. Reine Angew. Math. 404 (1990), 77–117.
Formalization: OpenAI Codex and GPT-5.6 Sol (upstream in plby/lean-proofs).
-/
theorem jsp_000934_solved (r : ℝ) (hr : 0 < r) :
    Erdos1124.TranslationEquidecomposable (Erdos1124.disk r) (Erdos1124.square r) :=
  Erdos1124.erdos_1124 r hr

#print axioms jsp_000934_solved
