import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyGeneRegulationProkaryotesTheoremCanonicalLaneLean

structure TrpOperonState where
  tryptophanPresent : Bool
  trpRepressorActive : Bool
  leaderPeptideSynthesized : Bool
  attenuationHairpinFormed : Bool
  transcriptionTerminated : Bool

structure TrpOperonEvidence (T : TrpOperonState) where
  repressorActiveCondition : T.trpRepressorActive ↔ T.tryptophanPresent
  attenuationCondition : T.attenuationHairpinFormed ↔ (T.leaderPeptideSynthesized ∧ T.tryptophanPresent)
  terminationCondition : T.transcriptionTerminated ↔ (T.trpRepressorActive ∨ T.attenuationHairpinFormed)

def TrpOperonRegulationClosed (T : TrpOperonState) : Prop :=
  (T.trpRepressorActive ↔ T.tryptophanPresent) ∧
  (T.attenuationHairpinFormed ↔ (T.leaderPeptideSynthesized ∧ T.tryptophanPresent)) ∧
  (T.transcriptionTerminated ↔ (T.trpRepressorActive ∨ T.attenuationHairpinFormed))

theorem trp_operon_closed_from_evidence (T : TrpOperonState) (E : TrpOperonEvidence T) : TrpOperonRegulationClosed T := by
  exact And.intro E.repressorActiveCondition (And.intro E.attenuationCondition E.terminationCondition)

end MolecularBiologyGeneRegulationProkaryotesTheoremCanonicalLaneLean
end HautevilleHouse