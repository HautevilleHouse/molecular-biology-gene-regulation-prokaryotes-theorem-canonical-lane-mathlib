import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyGeneRegulationProkaryotesTheoremCanonicalLaneLean

structure PrimitiveOperon where
  promoter : Type
  operator : Type
  structuralGenes : List Type
  promoterFunction : Prop
  operatorFunction : Prop
  genesExpressed : Prop
  promoterFunctionTerm : promoterFunction
  operatorFunctionTerm : operatorFunction
  genesExpressedTerm : genesExpressed

structure PrimitiveRegulatoryRegion where
  operatorSequence : String
  repressorBinding : Prop
  inducerPresent : Bool
  operon : PrimitiveOperon
  repressorBindingTerm : repressorBinding

structure PrimitiveGeneRegulationState where
  operon : PrimitiveOperon
  regulatoryRegion : PrimitiveRegulatoryRegion
  basalTranscription : Prop
  activatedTranscription : Prop
  basalTranscriptionTerm : basalTranscription
  activatedTranscriptionTerm : activatedTranscription

def PrimitiveOperonClosed (O : PrimitiveOperon) : Prop :=
  O.promoterFunction ∧ O.operatorFunction ∧ O.genesExpressed

theorem primitive_operon_closed_from_evidence (O : PrimitiveOperon) (E : O.promoterFunction ∧ O.operatorFunction ∧ O.genesExpressed) : PrimitiveOperonClosed O := by
  exact E

end MolecularBiologyGeneRegulationProkaryotesTheoremCanonicalLaneLean
end HautevilleHouse