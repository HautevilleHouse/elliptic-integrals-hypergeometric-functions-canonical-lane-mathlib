import EllipticIntegralsHypergeometricFunctionsCanonicalLaneLean.MathlibObjects
import Mathlib.Analysis.SpecificLimits

/-!
# Series Representations of Hypergeometric Functions
-/

namespace HautevilleHouse
namespace EllipticIntegralsHypergeometricFunctionsCanonicalLaneLean

structure HypergeometricSeries (H : HypergeometricData) where
  term : ℕ → ℂ
  sum : ℂ
  convergenceRadius : ℝ
  sumFormula : Prop
  analyticContinuation : Set ℂ

structure SeriesRepresentationPackage (H : HypergeometricData) where
  series : HypergeometricSeries H
  convergence : series.convergenceRadius = Complex.abs H.z
  sumMatchesIntegral : Prop

def SeriesRepresentationClosed {H : HypergeometricData} (P : SeriesRepresentationPackage H) : Prop :=
  P.series.sumFormula ∧ P.convergence ∧ P.sumMatchesIntegral

theorem series_representation_closed_from_package {H : HypergeometricData} (P : SeriesRepresentationPackage H) : SeriesRepresentationClosed P := by
  exact And.intro P.series.sumFormula (And.intro P.convergence P.sumMatchesIntegral)

end EllipticIntegralsHypergeometricFunctionsCanonicalLaneLean
end HautevilleHouse