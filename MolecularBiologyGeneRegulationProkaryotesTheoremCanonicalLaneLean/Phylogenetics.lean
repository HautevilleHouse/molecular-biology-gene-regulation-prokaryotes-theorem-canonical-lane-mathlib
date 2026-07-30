import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyGeneRegulationProkaryotesTheorem

structure PhylogeneticsPackage where
  treeTopology : Prop
  branchLengths : Prop
  substitutionModel : Prop
  likelihoodFunction : Prop

structure PhylogeneticsEvidence (P : PhylogeneticsPackage) where
  treeTopologyClosed : P.treeTopology
  branchLengthsClosed : P.branchLengths
  substitutionModelClosed : P.substitutionModel
  likelihoodFunctionClosed : P.likelihoodFunction

def PhylogeneticsClosed (P : PhylogeneticsPackage) : Prop :=
  P.treeTopology ∧ P.branchLengths ∧ P.substitutionModel ∧ P.likelihoodFunction

theorem phylogenetics_closed_from_evidence (P : PhylogeneticsPackage) (E : PhylogeneticsEvidence P) :
    PhylogeneticsClosed P := by
  exact And.intro E.treeTopologyClosed (And.intro E.branchLengthsClosed (And.intro E.substitutionModelClosed E.likelihoodFunctionClosed))

end MolecularBiologyGeneRegulationProkaryotesTheorem
end HautevilleHouse