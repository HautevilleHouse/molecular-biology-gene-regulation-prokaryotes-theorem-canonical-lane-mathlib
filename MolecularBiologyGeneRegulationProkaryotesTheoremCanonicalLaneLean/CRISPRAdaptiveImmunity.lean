import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyGeneRegulationProkaryotesTheorem

structure CRISPRAdaptiveImmunityPackage where
  casGenes : Type
  spacerAcquisition : Prop
  crRNAProcessing : Prop
  interferenceComplex : Prop
  phageResistance : Prop

structure CRISPRAdaptiveImmunityEvidence (C : CRISPRAdaptiveImmunityPackage) where
  spacerAcquisitionClosed : C.spacerAcquisition
  crRNAProcessingClosed : C.crRNAProcessing
  interferenceComplexClosed : C.interferenceComplex
  phageResistanceClosed : C.phageResistance

def CRISPRAdaptiveImmunityClosed (C : CRISPRAdaptiveImmunityPackage) : Prop :=
  C.spacerAcquisition ∧ C.crRNAProcessing ∧ C.interferenceComplex ∧ C.phageResistance

theorem crispr_adaptive_immunity_closed_from_evidence (C : CRISPRAdaptiveImmunityPackage) (E : CRISPRAdaptiveImmunityEvidence C) :
    CRISPRAdaptiveImmunityClosed C := by
  exact And.intro E.spacerAcquisitionClosed (And.intro E.crRNAProcessingClosed (And.intro E.interferenceComplexClosed E.phageResistanceClosed))

end MolecularBiologyGeneRegulationProkaryotesTheorem
end HautevilleHouse