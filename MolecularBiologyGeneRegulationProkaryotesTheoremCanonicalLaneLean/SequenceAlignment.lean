import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyGeneRegulationProkaryotesTheorem

structure SequenceAlignmentPackage where
  scoringMatrix : Prop
  gapPenalty : Prop
  alignmentAlgorithm : Prop
  optimalAlignment : Prop

structure SequenceAlignmentEvidence (S : SequenceAlignmentPackage) where
  scoringMatrixClosed : S.scoringMatrix
  gapPenaltyClosed : S.gapPenalty
  alignmentAlgorithmClosed : S.alignmentAlgorithm
  optimalAlignmentClosed : S.optimalAlignment

def SequenceAlignmentClosed (S : SequenceAlignmentPackage) : Prop :=
  S.scoringMatrix ∧ S.gapPenalty ∧ S.alignmentAlgorithm ∧ S.optimalAlignment

theorem sequence_alignment_closed_from_evidence (S : SequenceAlignmentPackage) (E : SequenceAlignmentEvidence S) :
    SequenceAlignmentClosed S := by
  exact And.intro E.scoringMatrixClosed (And.intro E.gapPenaltyClosed (And.intro E.alignmentAlgorithmClosed E.optimalAlignmentClosed))

end MolecularBiologyGeneRegulationProkaryotesTheorem
end HautevilleHouse