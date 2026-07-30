import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyGeneRegulationProkaryotesTheorem

structure ProkaryoteAdmittedObject where
  operonModel : Prop
  transcriptionFactors : Prop
  regulatoryNetwork : Prop
  conclusion : operonModel ∧ transcriptionFactors ∧ regulatoryNetwork

def ProkaryoteWitnessClosed (O : ProkaryoteAdmittedObject) : Prop :=
  O.operonModel ∧ O.transcriptionFactors ∧ O.regulatoryNetwork

end MolecularBiologyGeneRegulationProkaryotesTheorem
end HautevilleHouse