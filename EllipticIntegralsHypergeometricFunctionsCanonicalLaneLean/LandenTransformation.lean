import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EllipticIntegralsHypergeometricFunctionsCanonicalLaneLean.EllipticIntegralStructures
import HautevilleHouse.EllipticIntegralsHypergeometricFunctionsCanonicalLaneLean.GaussHypergeometricPackage

namespace HautevilleHouse
namespace EllipticIntegralsHypergeometricFunctionsCanonicalLaneLean

/-!
# Landen Transformation Package
-/

structure LandenTransformationPackage {A : AdmissibleEllipticObject}
    (G : GaussHypergeometricPackage A) where
  ascendingTransformation : Prop
  descendingTransformation : Prop
  functionalEquation : Prop
  invarianceUnderLanden : Prop

structure LandenTransformationEvidence {A : AdmissibleEllipticObject}
    {G : GaussHypergeometricPackage A} (L : LandenTransformationPackage G) where
  ascendingTransformationClosed : L.ascendingTransformation
  descendingTransformationClosed : L.descendingTransformation
  functionalEquationClosed : L.functionalEquation
  invarianceUnderLandenClosed : L.invarianceUnderLanden

def LandenTransformationClosed {A : AdmissibleEllipticObject}
    {G : GaussHypergeometricPackage A} (L : LandenTransformationPackage G) : Prop :=
  L.ascendingTransformation ∧ L.descendingTransformation ∧
  L.functionalEquation ∧ L.invarianceUnderLanden

theorem landen_transformation_closed_from_evidence
    {A : AdmissibleEllipticObject} {G : GaussHypergeometricPackage A}
    (L : LandenTransformationPackage G) (E : LandenTransformationEvidence L) :
    LandenTransformationClosed L := by
  exact And.intro E.ascendingTransformationClosed
    (And.intro E.descendingTransformationClosed
      (And.intro E.functionalEquationClosed E.invarianceUnderLandenClosed))

end EllipticIntegralsHypergeometricFunctionsCanonicalLaneLean
end HautevilleHouse