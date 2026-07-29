import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyChemicalEcologyCanonicalLaneLean

structure TritrophicCascadePackage {G : AdmissibleClass} where
  herbivoreInducedVolatile : Prop
  predatorAttraction : Prop
  herbivoreParasitoidAttack : Prop
  plantFitnessGain : Prop
  enemyFreeSpaceTime : Prop
  volatileBlendRatio : ℝ

def TritrophicCascadeClosed {G : AdmissibleClass} (Pkg : TritrophicCascadePackage G) : Prop :=
  Pkg.herbivoreInducedVolatile ∧ Pkg.predatorAttraction ∧ Pkg.herbivoreParasitoidAttack ∧ Pkg.plantFitnessGain ∧ Pkg.enemyFreeSpaceTime ∧ Pkg.volatileBlendRatio > 0.3 ∧ Pkg.volatileBlendRatio < 0.7

end EcologyChemicalEcologyCanonicalLaneLean
end HautevilleHouse
