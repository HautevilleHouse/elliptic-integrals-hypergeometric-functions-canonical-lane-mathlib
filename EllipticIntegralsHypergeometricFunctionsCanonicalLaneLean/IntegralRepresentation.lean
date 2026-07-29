import EllipticCurveParameters
import HypergeometricSeries

namespace HautevilleHouse
namespace EllipticIntegralsHypergeometricFunctionsCanonicalLaneLean

structure IntegralRepresentation where
  ellipticCurve : EllipticCurveParameters
  hypergeometricSeries : HypergeometricSeries
  integrandFormula : Prop
  integralConverges : Prop
  identityHolds : Prop

def IntegralRepresentationClosed (I : IntegralRepresentation) : Prop :=
  I.integralConverges ∧ I.identityHolds

end EllipticIntegralsHypergeometricFunctionsCanonicalLaneLean
end HautevilleHouse