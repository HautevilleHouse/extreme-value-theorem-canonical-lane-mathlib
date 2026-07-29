import ExtremeValueTheoremCanonicalLaneLean.BridgeLemmas
import ExtremeValueTheoremCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace ExtremeValueTheoremCanonicalLaneLean

def ConstrainedEVTClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_evt_endgame (A : AdmissibleClass) :
    ConstrainedEVTClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ExtremeValueTheoremCanonicalLaneLean
end HautevilleHouse