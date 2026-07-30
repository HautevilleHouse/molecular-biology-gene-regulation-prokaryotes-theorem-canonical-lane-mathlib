import molecularBiologyGeneRegulationProkaryotesTheorem.PopulationGeneticsFoundation

/-!
# Hardy-Weinberg Equilibrium Package
-/

namespace HautevilleHouse
namespace MolecularBiologyGeneRegulationProkaryotesTheorem

structure HardyWeinbergEquilibriumPackage {P : PopulationGeneticsFoundation} where
  panmicticPopulationAssumed : Prop
  alleleFrequenciesStable : Prop
  genotypeFrequenciesExpected : Prop
  noEvolutionaryForces : Prop

structure HardyWeinbergEquilibriumEvidence {P : PopulationGeneticsFoundation} (H : HardyWeinbergEquilibriumPackage P) where
  panmicticPopulationAssumedClosed : H.panmicticPopulationAssumed
  alleleFrequenciesStableClosed : H.alleleFrequenciesStable
  genotypeFrequenciesExpectedClosed : H.genotypeFrequenciesExpected
  noEvolutionaryForcesClosed : H.noEvolutionaryForces

def HardyWeinbergEquilibriumClosed {P : PopulationGeneticsFoundation} (H : HardyWeinbergEquilibriumPackage P) : Prop :=
  H.panmicticPopulationAssumed ∧ H.alleleFrequenciesStable ∧ H.genotypeFrequenciesExpected ∧ H.noEvolutionaryForces

theorem hardy_weinberg_equilibrium_closed_from_evidence
    {P : PopulationGeneticsFoundation} (H : HardyWeinbergEquilibriumPackage P)
    (E : HardyWeinbergEquilibriumEvidence H) : HardyWeinbergEquilibriumClosed H := by
  exact And.intro E.panmicticPopulationAssumedClosed
    (And.intro E.alleleFrequenciesStableClosed
      (And.intro E.genotypeFrequenciesExpectedClosed E.noEvolutionaryForcesClosed))

end MolecularBiologyGeneRegulationProkaryotesTheorem
end HautevilleHouse
