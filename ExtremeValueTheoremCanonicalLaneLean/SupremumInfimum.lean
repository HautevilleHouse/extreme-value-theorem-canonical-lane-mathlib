import ExtremeValueTheoremCanonicalLaneLean.ContinuousFunctions

namespace HautevilleHouse
namespace ExtremeValueTheoremCanonicalLaneLean

structure SupremumInfimumPackage where
  supremumExists : Prop
  infimumExists : Prop
  supremumAttained : Prop
  infimumAttained : Prop
  supremumAttainedProof : supremumAttained
  infimumAttainedProof : infimumAttained

def SupremumInfimumClosed (S : SupremumInfimumPackage) : Prop :=
  S.supremumAttained ∧ S.infimumAttained

theorem supremum_infimum_closed (S : SupremumInfimumPackage) :
    SupremumInfimumClosed S := by
  exact And.intro S.supremumAttainedProof S.infimumAttainedProof

end ExtremeValueTheoremCanonicalLaneLean
end HautevilleHouse