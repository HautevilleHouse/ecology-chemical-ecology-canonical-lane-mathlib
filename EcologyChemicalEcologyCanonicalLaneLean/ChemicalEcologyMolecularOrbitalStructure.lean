import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyChemicalEcologyCanonicalLaneLean

structure MolecularOrbitalConfiguration where
  atomicOrbitals : Type
  molecularOrbitals : Type
  overlapIntegrals : Prop
  energyLevels : Prop

def MolecularOrbitalConfigurationClosed (M : MolecularOrbitalConfiguration) : Prop :=
  M.overlapIntegrals ∧ M.energyLevels

theorem molecular_orbital_configuration_closed (M : MolecularOrbitalConfiguration) :
    MolecularOrbitalConfigurationClosed M := by
  exact And.intro M.overlapIntegrals M.energyLevels

end EcologyChemicalEcologyCanonicalLaneLean
end HautevilleHouse