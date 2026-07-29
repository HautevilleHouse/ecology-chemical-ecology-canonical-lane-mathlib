import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyChemicalEcologyCanonicalLaneLean

structure ChemicalReactionKineticsPackage where
  species : List String
  reactionRates : List Float
  rateConstants : List Float
  equilibriumConstant : Float
  rateLawDerived : Prop
  activationEnergyKnown : Prop

structure ChemicalReactionKineticsEvidence (R : ChemicalReactionKineticsPackage) where
  rateLawDerivedClosed : R.rateLawDerived
  activationEnergyKnownClosed : R.activationEnergyKnown

def ChemicalReactionKineticsClosed (R : ChemicalReactionKineticsPackage) : Prop :=
  R.rateLawDerived ∧ R.activationEnergyKnown

theorem chemical_reaction_kinetics_closed_from_evidence
    (R : ChemicalReactionKineticsPackage) (E : ChemicalReactionKineticsEvidence R) :
    ChemicalReactionKineticsClosed R := by
  exact And.intro E.rateLawDerivedClosed E.activationEnergyKnownClosed

end EcologyChemicalEcologyCanonicalLaneLean
end HautevilleHouse