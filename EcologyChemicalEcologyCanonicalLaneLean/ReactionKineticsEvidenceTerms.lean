import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyChemicalEcologyCanonicalLaneLean

structure ReactionKineticsEvidence where
  rateLawClosed : Prop
  equilibriumReachedClosed : Prop

def ReactionKineticsEvidenceClosed (E : ReactionKineticsEvidence) : Prop :=
  E.rateLawClosed ∧ E.equilibriumReachedClosed

theorem reaction_kinetics_evidence_closed (E : ReactionKineticsEvidence) :
    ReactionKineticsEvidenceClosed E := by
  exact And.intro E.rateLawClosed E.equilibriumReachedClosed

end EcologyChemicalEcologyCanonicalLaneLean
end HautevilleHouse