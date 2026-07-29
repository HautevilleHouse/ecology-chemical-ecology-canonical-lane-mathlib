import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyChemicalEcologyCanonicalLaneLean

structure ThermodynamicsFreeEnergyPackage where
  enthalpy : Float
  entropy : Float
  temperature : Float
  gibbsFreeEnergy : Float
  spontaneityCondition : Prop
  equilibriumCondition : Prop

structure ThermodynamicsFreeEnergyEvidence (T : ThermodynamicsFreeEnergyPackage) where
  spontaneityConditionClosed : T.spontaneityCondition
  equilibriumConditionClosed : T.equilibriumCondition

def ThermodynamicsFreeEnergyClosed (T : ThermodynamicsFreeEnergyPackage) : Prop :=
  T.spontaneityCondition ∧ T.equilibriumCondition

theorem thermodynamics_free_energy_closed_from_evidence
    (T : ThermodynamicsFreeEnergyPackage) (E : ThermodynamicsFreeEnergyEvidence T) :
    ThermodynamicsFreeEnergyClosed T := by
  exact And.intro E.spontaneityConditionClosed E.equilibriumConditionClosed

end EcologyChemicalEcologyCanonicalLaneLean
end HautevilleHouse