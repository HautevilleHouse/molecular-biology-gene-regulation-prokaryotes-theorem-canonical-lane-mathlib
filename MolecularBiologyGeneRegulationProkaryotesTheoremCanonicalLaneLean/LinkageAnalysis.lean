import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyGeneRegulationProkaryotesTheorem

structure LinkageAnalysisPackage where
  recombinationFraction : Prop
  linkageEquilibrium : Prop
  lodScore : Prop
  geneOrdering : Prop

structure LinkageAnalysisEvidence (L : LinkageAnalysisPackage) where
  recombinationFractionClosed : L.recombinationFraction
  linkageEquilibriumClosed : L.linkageEquilibrium
  lodScoreClosed : L.lodScore
  geneOrderingClosed : L.geneOrdering

def LinkageAnalysisClosed (L : LinkageAnalysisPackage) : Prop :=
  L.recombinationFraction ∧ L.linkageEquilibrium ∧ L.lodScore ∧ L.geneOrdering

theorem linkage_analysis_closed_from_evidence (L : LinkageAnalysisPackage) (E : LinkageAnalysisEvidence L) :
    LinkageAnalysisClosed L := by
  exact And.intro E.recombinationFractionClosed (And.intro E.linkageEquilibriumClosed (And.intro E.lodScoreClosed E.geneOrderingClosed))

end MolecularBiologyGeneRegulationProkaryotesTheorem
end HautevilleHouse