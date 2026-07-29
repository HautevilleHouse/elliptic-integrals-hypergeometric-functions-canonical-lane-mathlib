import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EllipticIntegralsHypergeometricFunctionsCanonicalLaneLean

structure HypergeometricData where
  a : Complex
  b : Complex
  c : Complex
  z : Complex
  convergenceRadius : Prop
  analyticContinuation : Set Complex
  monodromyGroup : Type

structure HypergeometricAdmittedObject where
  data : HypergeometricData
  seriesConverges : Prop
  integralRepresentationExists : Prop
  specialValuesKnown : Prop
  conclusion : seriesConverges ∧ integralRepresentationExists ∧ specialValuesKnown

end EllipticIntegralsHypergeometricFunctionsCanonicalLaneLean
end HautevilleHouse