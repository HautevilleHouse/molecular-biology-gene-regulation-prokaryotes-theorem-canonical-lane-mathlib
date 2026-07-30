import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyGeneRegulationProkaryotesTheorem

structure GeneRegulationCorePackage where
  operonStructure : Prop
  repressorBinding : Prop
  inducerEffect : Prop
  transcriptionInitiation : Prop

structure GeneRegulationCoreEvidence (G : GeneRegulationCorePackage) where
  operonStructureClosed : G.operonStructure
  repressorBindingClosed : G.repressorBinding
  inducerEffectClosed : G.inducerEffect
  transcriptionInitiationClosed : G.transcriptionInitiation

def GeneRegulationCoreClosed (G : GeneRegulationCorePackage) : Prop :=
  G.operonStructure ∧ G.repressorBinding ∧ G.inducerEffect ∧ G.transcriptionInitiation

theorem gene_regulation_core_closed_from_evidence (G : GeneRegulationCorePackage) (E : GeneRegulationCoreEvidence G) :
    GeneRegulationCoreClosed G := by
  exact And.intro E.operonStructureClosed (And.intro E.repressorBindingClosed (And.intro E.inducerEffectClosed E.transcriptionInitiationClosed))

end MolecularBiologyGeneRegulationProkaryotesTheorem
end HautevilleHouse