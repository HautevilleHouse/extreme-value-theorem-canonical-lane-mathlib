import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ExtremeValueTheoremCanonicalLaneLean.ContinuityPackage

namespace HautevilleHouse
namespace ExtremeValueTheoremCanonicalLaneLean

structure CompactnessExtremumPackage {C : ContinuityPackage} (E : ContinuityEvidence C) where
  maxAttained : Prop
  minAttained : Prop
  extremumExists : Prop
  extremumValueBounded : Prop

structure CompactnessExtremumEvidence {C : ContinuityPackage} {E : ContinuityEvidence C}
    (P : CompactnessExtremumPackage E) where
  maxAttainedClosed : P.maxAttained
  minAttainedClosed : P.minAttained
  extremumExistsClosed : P.extremumExists
  extremumValueBoundedClosed : P.extremumValueBounded

def CompactnessExtremumClosed {C : ContinuityPackage} {E : ContinuityEvidence C}
    (P : CompactnessExtremumPackage E) : Prop :=
  P.maxAttained ∧ P.minAttained ∧ P.extremumExists ∧ P.extremumValueBounded

theorem compactness_extremum_closed_from_evidence
    {C : ContinuityPackage} {E : ContinuityEvidence C}
    (P : CompactnessExtremumPackage E) (Ev : CompactnessExtremumEvidence P) :
    CompactnessExtremumClosed P := by
  exact And.intro Ev.maxAttainedClosed
    (And.intro Ev.minAttainedClosed
      (And.intro Ev.extremumExistsClosed Ev.extremumValueBoundedClosed))

end ExtremeValueTheoremCanonicalLaneLean
end HautevilleHouse