import EcologyChemicalEcologyCanonicalLaneLean.RateLawsPackage

namespace HautevilleHouse
namespace EcologyChemicalEcologyCanonicalLaneLean

structure ChemicalKineticsPackage where
  rateConstants : Type u
  reactionRates : Type v
  activationEnergies : Type w
  arrheniusLaw : Prop
  rateLawEquations : Prop
  steadyStateAssumption : Prop

structure ChemicalKineticsEvidence (K : ChemicalKineticsPackage) where
  arrheniusLawClosed : K.arrheniusLaw
  rateLawEquationsClosed : K.rateLawEquations
  steadyStateAssumptionClosed : K.steadyStateAssumption

def ChemicalKineticsClosed (K : ChemicalKineticsPackage) : Prop :=
  K.arrheniusLaw ∧ K.rateLawEquations ∧ K.steadyStateAssumption

theorem chemical_kinetics_closed_from_evidence (K : ChemicalKineticsPackage)
    (E : ChemicalKineticsEvidence K) : ChemicalKineticsClosed K := by
  exact And.intro E.arrheniusLawClosed
    (And.intro E.rateLawEquationsClosed E.steadyStateAssumptionClosed)

end EcologyChemicalEcologyCanonicalLaneLean
end HautevilleHouse