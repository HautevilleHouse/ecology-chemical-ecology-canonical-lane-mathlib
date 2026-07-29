import EcologyChemicalEcologyCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace EcologyChemicalEcologyCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure EcologicalSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure EcologicalAdmittedObject where
  space : EcologicalSpace
  ecosystemClosed : Prop
  chemicalCycleClosed : Prop
  ecologicalModel : Type
  modelTopology : TopologicalSpace ecologicalModel
  modelCoherent : Prop
  conclusion : modelCoherent

structure EcologicalEndgameState where
  object : EcologicalAdmittedObject

def EcologicalWitnessClosed (O : EcologicalAdmittedObject) : Prop :=
  O.modelCoherent

end EcologyChemicalEcologyCanonicalLaneLean
end HautevilleHouse