import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExtremeValueTheoremCanonicalLaneLean

structure HeineBorelCoverPackage where
  openCoverGiven : Prop
  finiteSubcoverExists : Prop
  subcoverIndexSet : Type u
  subcoverFinite : Prop
  subcoverCovers : Prop

structure HeineBorelCoverEvidence (H : HeineBorelCoverPackage) where
  openCoverGivenClosed : H.openCoverGiven
  finiteSubcoverExistsClosed : H.finiteSubcoverExists
  subcoverFiniteClosed : H.subcoverFinite
  subcoverCoversClosed : H.subcoverCovers

def HeineBorelCoverClosed (H : HeineBorelCoverPackage) : Prop :=
  H.openCoverGiven ∧ H.finiteSubcoverExists ∧ H.subcoverFinite ∧ H.subcoverCovers

theorem heine_borel_cover_closed_from_evidence (H : HeineBorelCoverPackage) (E : HeineBorelCoverEvidence H) :
    HeineBorelCoverClosed H := by
  exact And.intro E.openCoverGivenClosed
    (And.intro E.finiteSubcoverExistsClosed
      (And.intro E.subcoverFiniteClosed E.subcoverCoversClosed))

end ExtremeValueTheoremCanonicalLaneLean
end HautevilleHouse