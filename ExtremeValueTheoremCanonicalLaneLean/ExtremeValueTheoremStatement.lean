import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ExtremeValueTheoremCanonicalLaneLean.BoundednessAttainment

namespace HautevilleHouse
namespace ExtremeValueTheoremCanonicalLaneLean

structure ExtremeValueTheoremStatementPackage where
  domainCompact : Prop
  functionContinuous : Prop
  supAttained : Prop
  infAttained : Prop
  functionBounded : Prop
  extremumReached : Prop
  conclusion : domainCompact ∧ functionContinuous → (supAttained ∧ infAttained ∧ functionBounded ∧ extremumReached)

structure ExtremeValueTheoremEvidence (S : ExtremeValueTheoremStatementPackage) where
  domainCompactGiven : S.domainCompact
  functionContinuousGiven : S.functionContinuous
  supAttainedFromConclusion : S.supAttained
  infAttainedFromConclusion : S.infAttained
  functionBoundedFromConclusion : S.functionBounded
  extremumReachedFromConclusion : S.extremumReached
  conclusionClosed : S.conclusion

def ExtremeValueTheoremClosed (S : ExtremeValueTheoremStatementPackage) : Prop :=
  (S.domainCompact ∧ S.functionContinuous) → (S.supAttained ∧ S.infAttained ∧ S.functionBounded ∧ S.extremumReached)

theorem extreme_value_theorem_closed_from_evidence (S : ExtremeValueTheoremStatementPackage)
    (E : ExtremeValueTheoremEvidence S) : ExtremeValueTheoremClosed S := by
  intro h
  rcases h with ⟨hdom, hfun⟩
  have := E.conclusionClosed ⟨hdom, hfun⟩
  exact this

end ExtremeValueTheoremCanonicalLaneLean
end HautevilleHouse