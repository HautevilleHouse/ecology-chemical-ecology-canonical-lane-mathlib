import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyChemicalEcologyCanonicalLaneLean

structure PredatorPreyInterfacePackage {G : AdmissibleClass} where
  surfaceVolatiles : Prop
  infochemicalStructure : Prop
  behavioralResponse : Prop
  attackRateModulation : Prop
  aggregationDensity : Prop

def PredatorPreyInterfaceClosed {G : AdmissibleClass} (Pkg : PredatorPreyInterfacePackage G) : Prop :=
  Pkg.surfaceVolatiles ∧ Pkg.infochemicalStructure ∧ Pkg.behavioralResponse ∧ Pkg.attackRateModulation ∧ Pkg.aggregationDensity

structure PredatorPreyInterfaceEvidence {G : AdmissibleClass} (Pkg : PredatorPreyInterfacePackage G) where
  surfaceVolatilesClosed : Pkg.surfaceVolatiles
  infochemicalStructureClosed : Pkg.infochemicalStructure
  behavioralResponseClosed : Pkg.behavioralResponse
  attackRateModulationClosed : Pkg.attackRateModulation
  aggregationDensityClosed : Pkg.aggregationDensity

theorem predator_prey_interface_closed_from_evidence {G : AdmissibleClass} (Pkg : PredatorPreyInterfacePackage G) (E : PredatorPreyInterfaceEvidence Pkg) : PredatorPreyInterfaceClosed Pkg := by
  exact And.intro E.surfaceVolatilesClosed (And.intro E.infochemicalStructureClosed (And.intro E.behavioralResponseClosed (And.intro E.attackRateModulationClosed E.aggregationDensityClosed)))

end EcologyChemicalEcologyCanonicalLaneLean
end HautevilleHouse
