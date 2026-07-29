import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ExtremeValueTheoremCanonicalLaneLean.CompactnessExtremum

namespace HautevilleHouse
namespace ExtremeValueTheoremCanonicalLaneLean

structure BoundednessAttainmentPackage {C : ContinuityPackage} {E : ContinuityEvidence C}
    {P : CompactnessExtremumPackage E} (Ev : CompactnessExtremumEvidence P) where
  supFinite : Prop
  infFinite : Prop
  supAttained : Prop
  infAttained : Prop

structure BoundednessAttainmentEvidence {C : ContinuityPackage} {E : ContinuityEvidence C}
    {P : CompactnessExtremumPackage E} {Ev : CompactnessExtremumEvidence P}
    (B : BoundednessAttainmentPackage Ev) where
  supFiniteClosed : B.supFinite
  infFiniteClosed : B.infFinite
  supAttainedClosed : B.supAttained
  infAttainedClosed : B.infAttained

def BoundednessAttainmentClosed {C : ContinuityPackage} {E : ContinuityEvidence C}
    {P : CompactnessExtremumPackage E} {Ev : CompactnessExtremumEvidence P}
    (B : BoundednessAttainmentPackage Ev) : Prop :=
  B.supFinite ∧ B.infFinite ∧ B.supAttained ∧ B.infAttained

theorem boundedness_attainment_closed_from_evidence
    {C : ContinuityPackage} {E : ContinuityEvidence C}
    {P : CompactnessExtremumPackage E} {Ev : CompactnessExtremumEvidence P}
    (B : BoundednessAttainmentPackage Ev) (E2 : BoundednessAttainmentEvidence B) :
    BoundednessAttainmentClosed B := by
  exact And.intro E2.supFiniteClosed
    (And.intro E2.infFiniteClosed
      (And.intro E2.supAttainedClosed E2.infAttainedClosed))

end ExtremeValueTheoremCanonicalLaneLean
end HautevilleHouse