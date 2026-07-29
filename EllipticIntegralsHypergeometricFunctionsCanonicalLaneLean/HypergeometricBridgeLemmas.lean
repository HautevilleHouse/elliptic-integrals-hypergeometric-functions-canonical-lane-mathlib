import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EllipticIntegralsHypergeometricFunctionsCanonicalLaneLean.EllipticIntegralStructures

namespace HautevilleHouse
namespace EllipticIntegralsHypergeometricFunctionsCanonicalLaneLean

/-!
# Bridge and Gate Lemmas for Hypergeometric Admissible Class
-/

def bridgeClosed (A : AdmissibleEllipticObject) : Prop :=
  A.K_modulusClosed

def gateClosed (A : AdmissibleEllipticObject) : Prop :=
  A.modulusRelation

theorem bridge_from_admissible (A : AdmissibleEllipticObject) :
    bridgeClosed A := by
  exact A.K_modulusClosed

theorem gate_from_admissible (A : AdmissibleEllipticObject) :
    gateClosed A := by
  exact A.modulusRelation

end EllipticIntegralsHypergeometricFunctionsCanonicalLaneLean
end HautevilleHouse