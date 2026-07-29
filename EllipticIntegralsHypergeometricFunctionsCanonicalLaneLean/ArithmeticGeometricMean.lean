import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EllipticIntegralsHypergeometricFunctionsCanonicalLaneLean.EllipticIntegralStructures
import HautevilleHouse.EllipticIntegralsHypergeometricFunctionsCanonicalLaneLean.LandenTransformation

namespace HautevilleHouse
namespace EllipticIntegralsHypergeometricFunctionsCanonicalLaneLean

/-!
# Arithmetic-Geometric Mean Package
-/

structure ArithmeticGeometricMeanPackage {A : AdmissibleEllipticObject}
    {G : GaussHypergeometricPackage A} {L : LandenTransformationPackage G} where
  agmIterationConverges : Prop
  agmValueRelatesToK : Prop
  quadraticallyConvergent : Prop

structure ArithmeticGeometricMeanEvidence {A : AdmissibleEllipticObject}
    {G : GaussHypergeometricPackage A} {L : LandenTransformationPackage G}
    (M : ArithmeticGeometricMeanPackage L) where
  agmIterationConvergesClosed : M.agmIterationConverges
  agmValueRelatesToKClosed : M.agmValueRelatesToK
  quadraticallyConvergentClosed : M.quadraticallyConvergent

def ArithmeticGeometricMeanClosed {A : AdmissibleEllipticObject}
    {G : GaussHypergeometricPackage A} {L : LandenTransformationPackage G}
    (M : ArithmeticGeometricMeanPackage L) : Prop :=
  M.agmIterationConverges ∧ M.agmValueRelatesToK ∧ M.quadraticallyConvergent

theorem arithmetic_geometric_mean_closed_from_evidence
    {A : AdmissibleEllipticObject} {G : GaussHypergeometricPackage A}
    {L : LandenTransformationPackage G} (M : ArithmeticGeometricMeanPackage L)
    (E : ArithmeticGeometricMeanEvidence M) : ArithmeticGeometricMeanClosed M := by
  exact And.intro E.agmIterationConvergesClosed
    (And.intro E.agmValueRelatesToKClosed E.quadraticallyConvergentClosed)

end EllipticIntegralsHypergeometricFunctionsCanonicalLaneLean
end HautevilleHouse