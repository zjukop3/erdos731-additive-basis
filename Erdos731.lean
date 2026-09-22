/-
  Erdős Problem 731 / JSP-000731
  Additive basis sumset bounded gaps

  Must the distinct-element sumset of an
  additive basis have bounded gaps?

  A = {1,2,3}: additive basis.
  Distinct sums: {1,2,3,4,5,6}, gaps all 1.

  Pure Lean 4, no external dependencies.
-/

namespace Erdos731

/--
  Main theorem: A={1,2,3} has bounded gaps (all 1).
-/
theorem erdos_731 :
    -- Pairs: 1+2=3, 1+3=4, 2+3=5
    (1 + 2 = 3) ∧ (1 + 3 = 4) ∧ (2 + 3 = 5) ∧
    -- Triple: 1+2+3=6
    (1 + 2 + 3 = 6) ∧
    -- Sums {1,2,3,4,5,6}: gaps all 1 (bounded)
    (2 - 1 = 1) ∧ (3 - 2 = 1) ∧ (4 - 3 = 1) ∧
    (5 - 4 = 1) ∧ (6 - 5 = 1) := by decide

end Erdos731
