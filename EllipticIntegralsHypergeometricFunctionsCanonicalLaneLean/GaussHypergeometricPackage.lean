import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EllipticIntegralsHypergeometricFunctionsCanonicalLaneLean.EllipticIntegralStructures

namespace HautevilleHouse
namespace EllipticIntegralsHypergeometricFunctionsCanonicalLaneLean

/-!
# Gauss Hypergeometric Function Package
-/

structure GaussHypergeometricPackage (A : AdmissibleEllipticObject) where
  hypergeometricEquation : Prop
  seriesConvergence : Prop
  analyticContinuation : Prop
  transformationFormulas : Prop

structure GaussHypergeometricEvidence (A : AdmissibleEllipticObject) (G : GaussHypergeometricPackage A) where
  hypergeometricEquationClosed : G.hypergeometricEquation
  seriesConvergenceClosed : G.seriesConvergence
  analyticContinuationClosed : G.analyticContinuation
  transformationFormulasClosed : G.transformationFormulas

def GaussHypergeometricClosed (A : AdmissibleEllipticObject) (G : GaussHypergeometricPackage A) : Prop :=
  G.hypergeometricEquation ∧ G.seriesConvergence ∧ G.analyticContinuation ∧ G.transformationFormulas

theorem gauss_hypergeometric_closed_from_evidence
    (A : AdmissibleEllipticObject) (G : GaussHypergeometricPackage A)
    (E : GaussHypergeometricEvidence A G) : GaussHypergeometricClosed A G := by
  exact And.intro E.hypergeometricEquationClosed
    (And.intro E.seriesConvergenceClosed
      (And.intro E.analyticContinuationClosed E.transformationFormulasClosed))

end EllipticIntegralsHypergeometricFunctionsCanonicalLaneLean
end HautevilleHouse