import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyGeneRegulationProkaryotesTheoremCanonicalLaneLean

structure OperonPackage where
  promoterRegion : Prop
  operatorSite : Prop
  structuralGenes : Prop
  transcriptionUnit : Prop
  inductionMode : Prop
  repressionMode : Prop

structure OperonEvidence (O : OperonPackage) where
  promoterRegionClosed : O.promoterRegion
  operatorSiteClosed : O.operatorSite
  structuralGenesClosed : O.structuralGenes
  transcriptionUnitClosed : O.transcriptionUnit
  inductionModeClosed : O.inductionMode
  repressionModeClosed : O.repressionMode

def OperonClosed (O : OperonPackage) : Prop :=
  O.promoterRegion ∧ O.operatorSite ∧ O.structuralGenes ∧
  O.transcriptionUnit ∧ O.inductionMode ∧ O.repressionMode

theorem operon_closed_from_evidence (O : OperonPackage) (E : OperonEvidence O) :
    OperonClosed O := by
  exact And.intro E.promoterRegionClosed
    (And.intro E.operatorSiteClosed
      (And.intro E.structuralGenesClosed
        (And.intro E.transcriptionUnitClosed
          (And.intro E.inductionModeClosed E.repressionModeClosed))))

end MolecularBiologyGeneRegulationProkaryotesTheoremCanonicalLaneLean
end HautevilleHouse