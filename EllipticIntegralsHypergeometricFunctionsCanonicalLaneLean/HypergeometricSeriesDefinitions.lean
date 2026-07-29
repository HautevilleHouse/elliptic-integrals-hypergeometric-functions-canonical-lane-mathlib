import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EllipticIntegralsHypergeometricFunctionsCanonicalLaneLean

structure HypergeometricSeriesPackage where
  a : Type u
  b : Type v
  c : Type w
  z : Type x
  gaussHypergeometric : Type y
  convergenceRadius : Prop
  seriesRepresentation : Prop
  analyticContinuation : Prop
  gaussHypergeometricDefined : gaussHypergeometric
  convergenceRadiusClosed : convergenceRadius
  seriesRepresentationClosed : seriesRepresentation
  analyticContinuationClosed : analyticContinuation

def HypergeometricSeriesPackageClosed (H : HypergeometricSeriesPackage) : Prop :=
  H.convergenceRadius ∧ H.seriesRepresentation ∧ H.analyticContinuation

structure HypergeometricAdmittedObject where
  package : HypergeometricSeriesPackage
  conclusion : HypergeometricSeriesPackageClosed package

def HypergeometricWitnessClosed (O : HypergeometricAdmittedObject) : Prop :=
  HypergeometricSeriesPackageClosed O.package

theorem hypergeometric_series_package_closed_from_witness (O : HypergeometricAdmittedObject) :
    HypergeometricWitnessClosed O := by
  exact O.conclusion

end EllipticIntegralsHypergeometricFunctionsCanonicalLaneLean
end HautevilleHouse