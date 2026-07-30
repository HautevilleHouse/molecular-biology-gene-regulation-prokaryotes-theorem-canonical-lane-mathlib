import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyGeneRegulationProkaryotesTheoremCanonicalLaneLean

structure ProkaryoteAdmittedObject where
  genomeSequence : String
  promoterSite : String
  operatorSite : String
  rnaPolymeraseBinding : Prop
  repressorProtein : String
  repressorBinding : Prop
  operonActive : Prop
  conclusion : operonActive

structure ProkaryoteEndgameState where
  object : ProkaryoteAdmittedObject

def ProkaryoteWitnessClosed (O : ProkaryoteAdmittedObject) : Prop :=
  O.operonActive

end MolecularBiologyGeneRegulationProkaryotesTheoremCanonicalLaneLean
end HautevilleHouse