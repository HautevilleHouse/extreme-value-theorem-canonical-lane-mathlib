import canonicalLaneMathlib.AdmissibleClass
import ExtremeValueTheoremCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace ExtremeValueTheoremCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end ExtremeValueTheoremCanonicalLaneLean
end HautevilleHouse