import canonicalLaneMathlib.AdmissibleClass
import ExtremeValueTheoremCanonicalLaneLean.ExtremeValueObject

namespace HautevilleHouse
namespace ExtremeValueTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ExtremeValueWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.supremumAttained

end ExtremeValueTheoremCanonicalLaneLean
end HautevilleHouse