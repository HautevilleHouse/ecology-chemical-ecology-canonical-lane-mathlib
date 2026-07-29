import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyChemicalEcologyCanonicalLaneLean

structure ChemicalKineticsAdmittedObject where
  reactionSystem : Type
  concentrationTrajectory : Type
  rateLawClosed : Prop
  equilibriumReached : Prop
  conclusion : equilibriumReached

structure AdmissibleClass where
  object : ChemicalKineticsAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ChemicalKineticsWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def ChemicalKineticsWitnessClosed (O : ChemicalKineticsAdmittedObject) : Prop :=
  O.equilibriumReached

end EcologyChemicalEcologyCanonicalLaneLean
end HautevilleHouse