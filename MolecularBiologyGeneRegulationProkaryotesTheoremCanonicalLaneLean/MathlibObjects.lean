import molecularBiologyGeneRegulationProkaryotesTheorem.Statement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace MolecularBiologyGeneRegulationProkaryotesTheorem

open HautevilleHouse.CanonicalLaneMathlibCore

structure ProkaryoteGeneRegulationSpace where
  cell : Type
  environment : TopologicalSpace cell

structure ProkaryoteGeneRegulationAdmittedObject where
  space : ProkaryoteGeneRegulationSpace
  promoterRegionPresent : Prop
  rnaPolymeraseBinding : Prop
  operonStructure : Prop
  regulationMechanism : Prop
  witness : regulationMechanism

def ProkaryoteGeneRegulationWitnessClosed (O : ProkaryoteGeneRegulationAdmittedObject) : Prop :=
  O.regulationMechanism

end MolecularBiologyGeneRegulationProkaryotesTheorem
end HautevilleHouse
