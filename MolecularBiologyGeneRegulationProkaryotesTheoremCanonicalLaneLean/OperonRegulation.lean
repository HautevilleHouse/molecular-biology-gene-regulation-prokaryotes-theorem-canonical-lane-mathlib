import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyGeneRegulationProkaryotesTheorem

structure OperonRegulationPackage where
  operatorRegion : Type
  repressorBinding : Prop
  rnaPolymeraseAccess : Prop
  inducibleControl : Prop
  lacOperonModel : Prop

structure OperonRegulationEvidence (O : OperonRegulationPackage) where
  repressorBindingClosed : O.repressorBinding
  rnaPolymeraseAccessClosed : O.rnaPolymeraseAccess
  inducibleControlClosed : O.inducibleControl
  lacOperonModelClosed : O.lacOperonModel

def OperonRegulationClosed (O : OperonRegulationPackage) : Prop :=
  O.repressorBinding ∧ O.rnaPolymeraseAccess ∧ O.inducibleControl ∧ O.lacOperonModel

theorem operon_regulation_closed_from_evidence (O : OperonRegulationPackage) (E : OperonRegulationEvidence O) :
    OperonRegulationClosed O := by
  exact And.intro E.repressorBindingClosed (And.intro E.rnaPolymeraseAccessClosed (And.intro E.inducibleControlClosed E.lacOperonModelClosed))

end MolecularBiologyGeneRegulationProkaryotesTheorem
end HautevilleHouse