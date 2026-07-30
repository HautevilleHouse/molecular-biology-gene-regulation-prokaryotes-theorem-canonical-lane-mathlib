import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyGeneRegulationProkaryotesTheoremCanonicalLaneLean

structure SigmaFactorState where
  sigmaFactorType : String
  promoterRecognition : Prop
  rnaPolymeraseHoloenzyme : Bool
  transcriptionInitiation : Prop
  stressCondition : Bool

structure SigmaFactorEvidence (S : SigmaFactorState) where
  promoterRecognitionCondition : S.promoterRecognition ↔ (S.sigmaFactorType = "σ70" ∨ S.sigmaFactorType = "σ54")
  holoenzymeFormation : S.rnaPolymeraseHoloenzyme → S.promoterRecognition
  initiationUnderStress : S.stressCondition → (S.sigmaFactorType = "σ38" ∨ S.sigmaFactorType = "σ32") → S.transcriptionInitiation

def SigmaFactorRegulationClosed (S : SigmaFactorState) : Prop :=
  (S.promoterRecognition ↔ (S.sigmaFactorType = "σ70" ∨ S.sigmaFactorType = "σ54")) ∧
  (S.rnaPolymeraseHoloenzyme → S.promoterRecognition) ∧
  (S.stressCondition → (S.sigmaFactorType = "σ38" ∨ S.sigmaFactorType = "σ32") → S.transcriptionInitiation)

theorem sigma_factor_closed_from_evidence (S : SigmaFactorState) (E : SigmaFactorEvidence S) : SigmaFactorRegulationClosed S := by
  exact And.intro E.promoterRecognitionCondition (And.intro E.holoenzymeFormation E.initiationUnderStress)

end MolecularBiologyGeneRegulationProkaryotesTheoremCanonicalLaneLean
end HautevilleHouse