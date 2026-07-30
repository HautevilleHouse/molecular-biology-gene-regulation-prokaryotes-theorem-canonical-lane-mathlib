import molecularBiologyGeneRegulationProkaryotesTheorem.MathlibObjects

namespace HautevilleHouse
namespace MolecularBiologyGeneRegulationProkaryotesTheorem

structure AdmissibleClass where
  object : ProkaryoteGeneRegulationAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ProkaryoteGeneRegulationWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MolecularBiologyGeneRegulationProkaryotesTheorem
end HautevilleHouse
