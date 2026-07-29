import ExtremeValueTheoremCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace ExtremeValueTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : EVTAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  EVTWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ExtremeValueTheoremCanonicalLaneLean
end HautevilleHouse