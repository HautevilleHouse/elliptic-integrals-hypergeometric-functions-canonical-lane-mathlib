import AdmissibleClass

namespace HautevilleHouse
namespace EllipticIntegralsHypergeometricFunctionsCanonicalLaneLean

structure EllipticCurveParameters where
  modulus : ℂ
  parameter : ℂ
  characteristic : ℂ
  latticeInvariant : ℂ
  discriminantNonZero : Prop
  jInvariant : ℂ

def EllipticCurveParametersClosed (E : EllipticCurveParameters) : Prop :=
  E.discriminantNonZero

end EllipticIntegralsHypergeometricFunctionsCanonicalLaneLean
end HautevilleHouse