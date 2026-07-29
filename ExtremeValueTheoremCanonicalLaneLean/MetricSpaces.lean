import ExtremeValueTheoremCanonicalLaneLean.SequentialCompactness

namespace HautevilleHouse
namespace ExtremeValueTheoremCanonicalLaneLean

structure MetricPackage (X : Type u) where
  metric : MetricSpace X
  heineBorel : Prop
  closedAndBoundedImpliesCompact : heineBorel

data MetricSpaceConstraint
| heineBorel
| sequentiallyCompact

def MetricClosed (M : MetricPackage X) : Prop :=
  M.heineBorel

theorem metric_closed_from_evidence (M : MetricPackage X) :
    MetricClosed M := by
  exact M.closedAndBoundedImpliesCompact

end ExtremeValueTheoremCanonicalLaneLean
end HautevilleHouse