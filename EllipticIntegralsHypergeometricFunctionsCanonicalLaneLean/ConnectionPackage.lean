import canonicalLaneMathlib.AdmissibleClass
import EllipticIntegralsHypergeometricFunctionsCanonicalLaneLean.EllipticIntegralDefinitions
import EllipticIntegralsHypergeometricFunctionsCanonicalLaneLean.HypergeometricSeriesDefinitions

namespace HautevilleHouse
namespace EllipticIntegralsHypergeometricFunctionsCanonicalLaneLean

structure ConnectionPackage (E : EllipticIntegralPackage) (H : HypergeometricSeriesPackage) where
  ellipticIntegralAsHypergeometric : Prop
  parameterRelations : Prop
  kParameterAsModulus : Prop
  completeKAsHypergeometric : Prop
  completeEAsHypergeometric : Prop
  connectionClosed : ellipticIntegralAsHypergeometric ∧ parameterRelations ∧
    kParameterAsModulus ∧ completeKAsHypergeometric ∧ completeEAsHypergeometric

def ConnectionPackageClosed {E : EllipticIntegralPackage} {H : HypergeometricSeriesPackage}
    (C : ConnectionPackage E H) : Prop :=
  C.connectionClosed

theorem connection_package_closed_from_evidence {E : EllipticIntegralPackage}
    {H : HypergeometricSeriesPackage} (C : ConnectionPackage E H)
    (E' : ConnectionPackageClosed C) : ConnectionPackageClosed C := E'

structure ConnectionAdmittedObject (E : EllipticIntegralPackage) (H : HypergeometricSeriesPackage) where
  package : ConnectionPackage E H
  conclusion : ConnectionPackageClosed package

def ConnectionWitnessClosed {E : EllipticIntegralPackage} {H : HypergeometricSeriesPackage}
    (O : ConnectionAdmittedObject E H) : Prop :=
  ConnectionPackageClosed O.package

theorem connection_witness_closed_from_object {E : EllipticIntegralPackage}
    {H : HypergeometricSeriesPackage} (O : ConnectionAdmittedObject E H) :
    ConnectionWitnessClosed O := by
  exact O.conclusion

end EllipticIntegralsHypergeometricFunctionsCanonicalLaneLean
end HautevilleHouse