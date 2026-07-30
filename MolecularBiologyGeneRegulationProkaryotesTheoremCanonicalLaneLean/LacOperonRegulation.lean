import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyGeneRegulationProkaryotesTheoremCanonicalLaneLean

structure LacOperonState where
  glucosePresent : Bool
  lactosePresent : Bool
  campHigh : Prop
  capBinding : Prop
  lacRepressorActive : Bool
  transcriptionActive : Bool

structure LacOperonEvidence (L : LacOperonState) where
  campHighCondition : L.campHigh ↔ (¬ L.glucosePresent)
  capBindingCondition : L.capBinding ↔ (L.campHigh ∧ L.lactosePresent)
  repressorInactiveWhenLactose : L.lacRepressorActive = (¬ L.lactosePresent)
  transcriptionActiveCondition : L.transcriptionActive ↔ (L.capBinding ∧ ¬ L.lacRepressorActive)

def LacOperonRegulationClosed (L : LacOperonState) : Prop :=
  (L.campHigh ↔ (¬ L.glucosePresent)) ∧
  (L.capBinding ↔ (L.campHigh ∧ L.lactosePresent)) ∧
  (L.lacRepressorActive = (¬ L.lactosePresent)) ∧
  (L.transcriptionActive ↔ (L.capBinding ∧ ¬ L.lacRepressorActive))

theorem lac_operon_closed_from_evidence (L : LacOperonState) (E : LacOperonEvidence L) : LacOperonRegulationClosed L := by
  exact And.intro E.campHighCondition (And.intro E.capBindingCondition (And.intro E.repressorInactiveWhenLactose E.transcriptionActiveCondition))

end MolecularBiologyGeneRegulationProkaryotesTheoremCanonicalLaneLean
end HautevilleHouse