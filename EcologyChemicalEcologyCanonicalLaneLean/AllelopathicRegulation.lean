import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyChemicalEcologyCanonicalLaneLean

structure RegulationType where
  concentration : ℝ
  inhibitionRate : ℝ
  targetSpeciesAffected : Prop

structure AllelopathicRegulationPackage {G : AdmissibleClass} where
  growthInhibitionRegulation : RegulationType
  releaseKinetics : RegulationType
  soilPersistence : RegulationType
  neighborDensityModulated : Prop
  rootExudationFlux : Prop

def AllelopathicRegulationClosed {G : AdmissibleClass} (Pkg : AllelopathicRegulationPackage G) : Prop :=
  Pkg.growthInhibitionRegulation.concentration ≥ 0 ∧ Pkg.releaseKinetics.inhibitionRate < 0.5 ∧ Pkg.soilPersistence.targetSpeciesAffected ∧ Pkg.neighborDensityModulated ∧ Pkg.rootExudationFlux

end EcologyChemicalEcologyCanonicalLaneLean
end HautevilleHouse
