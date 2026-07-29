import EcologyChemicalEcologyCanonicalLaneLean.EnergyPackage

namespace HautevilleHouse
namespace EcologyChemicalEcologyCanonicalLaneLean

structure ThermodynamicsPackage where
  internalEnergy : Type u
  enthalpy : Type v
  entropy : Type w
  gibbsFreeEnergy : Type x
  firstLaw : Prop
  secondLaw : Prop
  thirdLaw : Prop
  gibbsFreeEnergyMinimization : Prop

structure ThermodynamicsEvidence (T : ThermodynamicsPackage) where
  firstLawClosed : T.firstLaw
  secondLawClosed : T.secondLaw
  thirdLawClosed : T.thirdLaw
  gibbsFreeEnergyMinimizationClosed : T.gibbsFreeEnergyMinimization

def ThermodynamicsClosed (T : ThermodynamicsPackage) : Prop :=
  T.firstLaw ∧ T.secondLaw ∧ T.thirdLaw ∧ T.gibbsFreeEnergyMinimization

theorem thermodynamics_closed_from_evidence (T : ThermodynamicsPackage)
    (E : ThermodynamicsEvidence T) : ThermodynamicsClosed T := by
  exact And.intro E.firstLawClosed
    (And.intro E.secondLawClosed
      (And.intro E.thirdLawClosed E.gibbsFreeEnergyMinimizationClosed))

end EcologyChemicalEcologyCanonicalLaneLean
end HautevilleHouse