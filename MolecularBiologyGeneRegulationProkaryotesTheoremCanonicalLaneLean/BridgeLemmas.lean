import molecularBiologyGeneRegulationProkaryotesTheorem.Projection

namespace HautevilleHouse
namespace MolecularBiologyGeneRegulationProkaryotesTheorem

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ProkaryoteGeneRegulationWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.witness

end MolecularBiologyGeneRegulationProkaryotesTheorem
end HautevilleHouse
