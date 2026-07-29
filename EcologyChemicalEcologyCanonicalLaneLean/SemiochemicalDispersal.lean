import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyChemicalEcologyCanonicalLaneLean

structure SemiochemicalDispersalPackage {G : AdmissibleClass} where
  diffusionCoefficient : ℝ
  plumeStructure : Prop
  windAdvection : Prop
  sensorArray : Prop
  thresholdDetection : Prop
  signalRange : ℝ
  environmentalNoise : ℝ

def SemiochemicalDispersalClosed {G : AdmissibleClass} (Pkg : SemiochemicalDispersalPackage G) : Prop :=
  Pkg.diffusionCoefficient > 0 ∧ Pkg.plumeStructure ∧ Pkg.windAdvection ∧ Pkg.sensorArray ∧ Pkg.thresholdDetection ∧ Pkg.signalRange < Pkg.environmentalNoise

end EcologyChemicalEcologyCanonicalLaneLean
end HautevilleHouse
