import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyGeneRegulationProkaryotesTheorem

structure OperonPackage where
  promoterSite : Prop
  operatorSite : Prop
  structuralGenes : Prop
  repressorBinding : Prop
  inducerPresence : Prop
  transcriptionInitiation : Prop
  mrnaSynthesis : Prop
  proteinTranslation : Prop

structure OperonEvidence (O : OperonPackage) where
  promoterSiteClosed : O.promoterSite
  operatorSiteClosed : O.operatorSite
  structuralGenesClosed : O.structuralGenes
  repressorBindingClosed : O.repressorBinding
  inducerPresenceClosed : O.inducerPresence
  transcriptionInitiationClosed : O.transcriptionInitiation
  mrnaSynthesisClosed : O.mrnaSynthesis
  proteinTranslationClosed : O.proteinTranslation

def OperonClosed (O : OperonPackage) : Prop :=
  O.promoterSite ∧ O.operatorSite ∧ O.structuralGenes ∧
  O.repressorBinding ∧ O.inducerPresence ∧
  O.transcriptionInitiation ∧ O.mrnaSynthesis ∧ O.proteinTranslation

theorem operon_closed_from_evidence (O : OperonPackage) (E : OperonEvidence O) :
    OperonClosed O := by
  exact And.intro E.promoterSiteClosed
    (And.intro E.operatorSiteClosed
      (And.intro E.structuralGenesClosed
        (And.intro E.repressorBindingClosed
          (And.intro E.inducerPresenceClosed
            (And.intro E.transcriptionInitiationClosed
              (And.intro E.mrnaSynthesisClosed E.proteinTranslationClosed))))))

end MolecularBiologyGeneRegulationProkaryotesTheorem
end HautevilleHouse
