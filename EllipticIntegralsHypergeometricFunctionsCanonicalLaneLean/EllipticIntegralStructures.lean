import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EllipticIntegralsHypergeometricFunctionsCanonicalLaneLean

/-!
# Elliptic Integral and Hypergeometric Function Structures

This file defines the core objects for elliptic integrals and hypergeometric functions.
-/

structure EllipticCurve where
  modulus : ℝ
  completeEllipticIntegralFirstKind : ℝ
  completeEllipticIntegralSecondKind : ℝ
  nome : ℝ

structure HypergeometricSeries where
  a : ℚ
  b : ℚ
  c : ℚ
  radiusOfConvergence : ℝ
  analyticContinuation : ℂ → ℂ

structure AdmissibleEllipticObject where
  curve : EllipticCurve
  series : HypergeometricSeries
  modulusRelation : series.radiusOfConvergence = 1
  K_modulus : ℝ
  K_modulusClosed : K_modulus = curve.completeEllipticIntegralFirstKind

end EllipticIntegralsHypergeometricFunctionsCanonicalLaneLean
end HautevilleHouse