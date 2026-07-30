import molecularBiologyGeneRegulationProkaryotesTheorem.GateLemmas

namespace HautevilleHouse
namespace MolecularBiologyGeneRegulationProkaryotesTheorem

def ConstrainedProkaryoteGeneRegulationClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_prokaryote_gene_regulation_endgame (A : AdmissibleClass) :
    ConstrainedProkaryoteGeneRegulationClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MolecularBiologyGeneRegulationProkaryotesTheorem
end HautevilleHouse
