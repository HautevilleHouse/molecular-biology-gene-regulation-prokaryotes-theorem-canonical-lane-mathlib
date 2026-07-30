import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyGeneRegulationProkaryotesTheorem

structure AttenuationMechanismPackage where
  leaderPeptide : Type
  attenuationSite : Prop
  ribosomeStalling : Prop
  transcriptionalTermination : Prop
  tryptophanOperonModel : Prop

structure AttenuationMechanismEvidence (A : AttenuationMechanismPackage) where
  attenuationSiteClosed : A.attenuationSite
  ribosomeStallingClosed : A.ribosomeStalling
  transcriptionalTerminationClosed : A.transcriptionalTermination
  tryptophanOperonModelClosed : A.tryptophanOperonModel

def AttenuationMechanismClosed (A : AttenuationMechanismPackage) : Prop :=
  A.attenuationSite ∧ A.ribosomeStalling ∧ A.transcriptionalTermination ∧ A.tryptophanOperonModel

theorem attenuation_mechanism_closed_from_evidence (A : AttenuationMechanismPackage) (E : AttenuationMechanismEvidence A) :
    AttenuationMechanismClosed A := by
  exact And.intro E.attenuationSiteClosed (And.intro E.ribosomeStallingClosed (And.intro E.transcriptionalTerminationClosed E.tryptophanOperonModelClosed))

end MolecularBiologyGeneRegulationProkaryotesTheorem
end HautevilleHouse