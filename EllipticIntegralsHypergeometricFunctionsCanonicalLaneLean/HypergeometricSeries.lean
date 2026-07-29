import AdmissibleClass

namespace HautevilleHouse
namespace EllipticIntegralsHypergeometricFunctionsCanonicalLaneLean

structure HypergeometricSeries where
  a : ℂ
  b : ℂ
  c : ℂ
  z : ℂ
  radiusOfConvergence : ℝ
  termsSumDefined : Prop
  analyticContinuationPossible : Prop

def HypergeometricSeriesClosed (S : HypergeometricSeries) : Prop :=
  S.termsSumDefined ∧ S.analyticContinuationPossible

end EllipticIntegralsHypergeometricFunctionsCanonicalLaneLean
end HautevilleHouse