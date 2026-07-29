import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyChemicalEcologyCanonicalLaneLean

structure ReactionMechanismPackage where
  elementarySteps : Prop
  rateDeterminingStep : Prop
  reactionPathway : Prop
  catalysisEffect : Prop

structure ReactionMechanismEvidence (R : ReactionMechanismPackage) where
  elementaryStepsClosed : R.elementarySteps
  rateDeterminingStepClosed : R.rateDeterminingStep
  reactionPathwayClosed : R.reactionPathway
  catalysisEffectClosed : R.catalysisEffect

def ReactionMechanismClosed (R : ReactionMechanismPackage) : Prop :=
  R.elementarySteps ∧ R.rateDeterminingStep ∧ R.reactionPathway ∧ R.catalysisEffect

theorem reaction_mechanism_closed_from_evidence (R : ReactionMechanismPackage)
    (E : ReactionMechanismEvidence R) : ReactionMechanismClosed R := by
  exact And.intro E.elementaryStepsClosed
    (And.intro E.rateDeterminingStepClosed
      (And.intro E.reactionPathwayClosed E.catalysisEffectClosed))

end EcologyChemicalEcologyCanonicalLaneLean
end HautevilleHouse