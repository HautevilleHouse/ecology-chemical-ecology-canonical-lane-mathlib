import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyChemicalEcologyCanonicalLaneLean

def ConstrainedChemicalEquilibriumClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_chemical_equilibrium_endgame (A : AdmissibleClass) :
    ConstrainedChemicalEquilibriumClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EcologyChemicalEcologyCanonicalLaneLean
end HautevilleHouse