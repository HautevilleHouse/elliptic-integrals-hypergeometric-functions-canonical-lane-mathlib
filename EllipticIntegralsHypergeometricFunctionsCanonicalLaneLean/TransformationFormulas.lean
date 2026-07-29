import canonicalLaneMathlib.AdmissibleClass
import EllipticIntegralsHypergeometricFunctionsCanonicalLaneLean.HypergeometricSeriesDefinitions

namespace HautevilleHouse
namespace EllipticIntegralsHypergeometricFunctionsCanonicalLaneLean

structure TransformationFormulaPackage (H : HypergeometricSeriesPackage) where
  landenTransformation : Prop
  quadraticTransformation : Prop
  cubicTransformation : Prop
  eulerIntegralRepresentation : Prop
  pfaffTransformation : Prop
  landenClosed : landenTransformation
  quadraticClosed : quadraticTransformation
  cubicClosed : cubicTransformation
  eulerClosed : eulerIntegralRepresentation
  pfaffClosed : pfaffTransformation

def TransformationFormulaPackageClosed {H : HypergeometricSeriesPackage}
    (T : TransformationFormulaPackage H) : Prop :=
  T.landenTransformation ∧ T.quadraticTransformation ∧ T.cubicTransformation ∧
  T.eulerIntegralRepresentation ∧ T.pfaffTransformation

theorem transformation_formula_package_closed_from_evidence
    {H : HypergeometricSeriesPackage} (T : TransformationFormulaPackage H)
    (E : TransformationFormulaPackageClosed T) :
    TransformationFormulaPackageClosed T := E

structure TransformationAdmittedObject (H : HypergeometricSeriesPackage) where
  package : TransformationFormulaPackage H
  conclusion : TransformationFormulaPackageClosed package

def TransformationWitnessClosed {H : HypergeometricSeriesPackage}
    (O : TransformationAdmittedObject H) : Prop :=
  TransformationFormulaPackageClosed O.package

theorem transformation_witness_closed_from_object
    {H : HypergeometricSeriesPackage} (O : TransformationAdmittedObject H) :
    TransformationWitnessClosed O := by
  exact O.conclusion

end EllipticIntegralsHypergeometricFunctionsCanonicalLaneLean
end HautevilleHouse