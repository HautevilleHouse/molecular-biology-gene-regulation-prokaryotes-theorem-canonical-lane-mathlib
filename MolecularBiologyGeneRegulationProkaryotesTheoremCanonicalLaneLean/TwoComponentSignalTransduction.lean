import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyGeneRegulationProkaryotesTheoremCanonicalLaneLean

structure TwoComponentSignal where
  sensorKinase : Type
  responseRegulator : Type
  environmentalSignal : Bool
  sensorAutophosphorylation : Prop
  phosphotransfer : Prop
  regulatorActivation : Prop
  transcriptionalResponse : Prop

structure TwoComponentEvidence (S : TwoComponentSignal) where
  sensorActivationCondition : S.sensorAutophosphorylation ↔ S.environmentalSignal
  phosphotransferCondition : S.phosphotransfer → (S.sensorAutophosphorylation ∧ (S.responseRegulator ≠ Type))
  regulatorActivationCondition : S.regulatorActivation ↔ S.phosphotransfer
  responseCondition : S.transcriptionalResponse ↔ S.regulatorActivation

def TwoComponentSignalClosed (S : TwoComponentSignal) : Prop :=
  (S.sensorAutophosphorylation ↔ S.environmentalSignal) ∧
  (S.phosphotransfer → (S.sensorAutophosphorylation ∧ (S.responseRegulator ≠ Type))) ∧
  (S.regulatorActivation ↔ S.phosphotransfer) ∧
  (S.transcriptionalResponse ↔ S.regulatorActivation)

theorem two_component_signal_closed_from_evidence (S : TwoComponentSignal) (E : TwoComponentEvidence S) : TwoComponentSignalClosed S := by
  exact And.intro E.sensorActivationCondition (And.intro E.phosphotransferCondition (And.intro E.regulatorActivationCondition E.responseCondition))

end MolecularBiologyGeneRegulationProkaryotesTheoremCanonicalLaneLean
end HautevilleHouse