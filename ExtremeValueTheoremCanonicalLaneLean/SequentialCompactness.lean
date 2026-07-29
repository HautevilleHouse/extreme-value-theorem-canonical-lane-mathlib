import ExtremeValueTheoremCanonicalLaneLean.ExtremeValueObject

namespace HautevilleHouse
namespace ExtremeValueTheoremCanonicalLaneLean

structure SequentialCompactPackage (X : Type u) [TopologicalSpace X] where
  sequentiallyCompact : Prop
  everySequenceHasConvergentSubsequence : sequentiallyCompact

def SequentialCompactClosed (X : Type u) [TopologicalSpace X] (S : SequentialCompactPackage X) : Prop :=
  S.sequentiallyCompact

theorem sequential_compact_closed (X : Type u) [TopologicalSpace X] (S : SequentialCompactPackage X) :
    SequentialCompactClosed X S := by
  exact S.everySequenceHasConvergentSubsequence

end ExtremeValueTheoremCanonicalLaneLean
end HautevilleHouse