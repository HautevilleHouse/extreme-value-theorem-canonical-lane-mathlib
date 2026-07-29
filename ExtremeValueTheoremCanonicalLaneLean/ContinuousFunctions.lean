import ExtremeValueTheoremCanonicalLaneLean.MetricSpaces

namespace HautevilleHouse
namespace ExtremeValueTheoremCanonicalLaneLean

structure ContinuousFunctionPackage (X Y : Type u) [TopologicalSpace X] [TopologicalSpace Y] where
  continuousFunctions : Set (X → Y)
  allContinuousFunctions : ∀ (f : X → Y), Continuous f → f ∈ continuousFunctions

def ContinuousFunctionsClosed (X Y : Type u) [TopologicalSpace X] [TopologicalSpace Y]
    (P : ContinuousFunctionPackage X Y) : Prop :=
  ∀ (f : X → Y), Continuous f → f ∈ P.continuousFunctions

theorem continuous_functions_closed (X Y : Type u) [TopologicalSpace X] [TopologicalSpace Y]
    (P : ContinuousFunctionPackage X Y) : ContinuousFunctionsClosed X Y P := by
  intro f hf
  exact P.allContinuousFunctions f hf

end ExtremeValueTheoremCanonicalLaneLean
end HautevilleHouse