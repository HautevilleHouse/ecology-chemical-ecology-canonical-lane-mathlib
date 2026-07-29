import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyChemicalEcologyCanonicalLaneLean

structure ChemicalEquilibriumPackage where
  reactants : List (String × Float)
  products : List (String × Float)
  equilibriumConstant : Float
  reactionQuotient : Float
  leChatelierPrincipleApplied : Prop
  equilibriumShiftPredicted : Prop

structure ChemicalEquilibriumEvidence (C : ChemicalEquilibriumPackage) where
  leChatelierPrincipleAppliedClosed : C.leChatelierPrincipleApplied
  equilibriumShiftPredictedClosed : C.equilibriumShiftPredicted

def ChemicalEquilibriumClosed (C : ChemicalEquilibriumPackage) : Prop :=
  C.leChatelierPrincipleApplied ∧ C.equilibriumShiftPredicted

theorem chemical_equilibrium_closed_from_evidence
    (C : ChemicalEquilibriumPackage) (E : ChemicalEquilibriumEvidence C) :
    ChemicalEquilibriumClosed C := by
  exact And.intro E.leChatelierPrincipleAppliedClosed E.equilibriumShiftPredictedClosed

end EcologyChemicalEcologyCanonicalLaneLean
end HautevilleHouse