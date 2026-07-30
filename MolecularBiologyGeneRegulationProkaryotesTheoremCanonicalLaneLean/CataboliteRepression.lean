import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyGeneRegulationProkaryotesTheorem

structure CataboliteRepressionPackage where
  glucoseLevel : Prop
  campSynthesis : Prop
  capBinding : Prop
  capActivatorSite : Prop
  rnaPolymeraseEnhancement : Prop
  positiveRegulation : Prop

structure CataboliteRepressionEvidence (C : CataboliteRepressionPackage) where
  glucoseLevelClosed : C.glucoseLevel
  campSynthesisClosed : C.campSynthesis
  capBindingClosed : C.capBinding
  capActivatorSiteClosed : C.capActivatorSite
  rnaPolymeraseEnhancementClosed : C.rnaPolymeraseEnhancement
  positiveRegulationClosed : C.positiveRegulation

def CataboliteRepressionClosed (C : CataboliteRepressionPackage) : Prop :=
  C.glucoseLevel ∧ C.campSynthesis ∧ C.capBinding ∧
  C.capActivatorSite ∧ C.rnaPolymeraseEnhancement ∧ C.positiveRegulation

theorem catabolite_repression_closed_from_evidence (C : CataboliteRepressionPackage)
    (E : CataboliteRepressionEvidence C) : CataboliteRepressionClosed C := by
  exact And.intro E.glucoseLevelClosed
    (And.intro E.campSynthesisClosed
      (And.intro E.capBindingClosed
        (And.intro E.capActivatorSiteClosed
          (And.intro E.rnaPolymeraseEnhancementClosed E.positiveRegulationClosed))))

end MolecularBiologyGeneRegulationProkaryotesTheorem
end HautevilleHouse
