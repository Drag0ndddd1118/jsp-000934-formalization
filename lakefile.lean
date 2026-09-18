import Lake
open Lake DSL

package "jsp-000934-formalization" where
  leanOptions := #[
    ⟨`pp.unicode.fun, true⟩,
    ⟨`autoImplicit, false⟩
  ]

require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git" @ "v4.33.0"

lean_lib ErdosProblems where
  roots := #[`ErdosProblems]

lean_lib Erdos1124 where
  roots := #[`Erdos1124]

@[default_target]
lean_lib JSP_000934 where
  roots := #[`JSP_000934]
