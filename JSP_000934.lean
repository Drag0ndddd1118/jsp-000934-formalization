import Erdos1124

/-- Lean 4 formalization bridge for JSP-000934 (Erdős Problem 1124 / Tarski's circle-squaring).
Tarski (1925) asked whether a disk and a square of the same area can be partitioned
into finitely many pairwise congruent pieces. Miklós Laczkovich (1990) resolved this
affirmatively, proving that the pieces can even be translated to form the square. -/
theorem jsp_000934_solved (r : ℝ) (hr : 0 < r) :
    Erdos1124.TranslationEquidecomposable (Erdos1124.disk r) (Erdos1124.square r) :=
  Erdos1124.erdos_1124 r hr

#print axioms jsp_000934_solved
-- 'jsp_000934_solved' depends on axioms: [propext, Classical.choice, Quot.sound]
