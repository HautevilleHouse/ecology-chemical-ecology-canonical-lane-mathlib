import EcologyChemicalEcologyCanonicalLaneLean.ChemicalKinetics
import EcologyChemicalEcologyCanonicalLaneLean.MolecularOrbitalTheory
import EcologyChemicalEcologyCanonicalLaneLean.ChemicalEquilibrium

namespace HautevilleHouse
namespace EcologyChemicalEcologyCanonicalLaneLean

structure EcologicalChemicalInteractionPackage where
  chemicalEcosystemFlux : Prop
  biochemicalCycle : Prop
  competitionInhibition : Prop
  synergyAmplification : Prop

structure EcologicalChemicalInteractionEvidence
    (E : EcologicalChemicalInteractionPackage) where
  chemicalEcosystemFluxClosed : E.chemicalEcosystemFlux
  biochemicalCycleClosed : E.biochemicalCycle
  competitionInhibitionClosed : E.competitionInhibition
  synergyAmplificationClosed : E.synergyAmplification

def EcologicalChemicalInteractionClosed
    (E : EcologicalChemicalInteractionPackage) : Prop :=
  E.chemicalEcosystemFlux ∧ E.biochemicalCycle ∧
  E.competitionInhibition ∧ E.synergyAmplification

theorem ecological_chemical_interaction_closed_from_evidence
    (E : EcologicalChemicalInteractionPackage)
    (Ev : EcologicalChemicalInteractionEvidence E) :
    EcologicalChemicalInteractionClosed E := by
  exact And.intro Ev.chemicalEcosystemFluxClosed
    (And.intro Ev.biochemicalCycleClosed
      (And.intro Ev.competitionInhibitionClosed Ev.synergyAmplificationClosed))

end EcologyChemicalEcologyCanonicalLaneLean
end HautevilleHouse