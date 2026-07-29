import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExtremeValueTheoremCanonicalLaneLean

structure ContinuityPackage where
  domainCompact : Prop
  functionContinuous : Prop
  supAttained : Prop
  infAttained : Prop
  domainNonempty : Prop

structure ContinuityEvidence (C : ContinuityPackage) where
  domainCompactClosed : C.domainCompact
  functionContinuousClosed : C.functionContinuous
  supAttainedClosed : C.supAttained
  infAttainedClosed : C.infAttained
  domainNonemptyClosed : C.domainNonempty

def ContinuityClosed (C : ContinuityPackage) : Prop :=
  C.domainCompact ∧ C.functionContinuous ∧ C.supAttained ∧ C.infAttained ∧ C.domainNonempty

theorem continuity_closed_from_evidence (C : ContinuityPackage) (E : ContinuityEvidence C) : ContinuityClosed C := by
  exact And.intro E.domainCompactClosed
    (And.intro E.functionContinuousClosed
      (And.intro E.supAttainedClosed
        (And.intro E.infAttainedClosed E.domainNonemptyClosed)))

end ExtremeValueTheoremCanonicalLaneLean
end HautevilleHouse