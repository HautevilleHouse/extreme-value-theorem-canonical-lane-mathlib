import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExtremeValueTheoremCanonicalLaneLean

structure CompactSpace where
  carrier : Type u
  topology : TopologicalSpace carrier
  compact : IsCompact (Set.univ : Set carrier)

structure ContinuousFunction (X Y : Type u) [TopologicalSpace X] [TopologicalSpace Y] where
  toFun : X → Y
  continuous_toFun : Continuous toFun

structure ExtremeValueObject where
  compactSpace : CompactSpace
  range : Set ℝ
  continuousFunction : ContinuousFunction compactSpace.carrier ℝ
  supremumAttained : Prop
  infimumAttained : Prop

structure AdmittedExtremeValueObject where
  object : ExtremeValueObject
  supremumAttained : object.supremumAttained
  infimumAttained : object.infimumAttained

def ExtremeValueWitnessClosed (O : AdmittedExtremeValueObject) : Prop :=
  O.supremumAttained ∧ O.infimumAttained

end ExtremeValueTheoremCanonicalLaneLean
end HautevilleHouse