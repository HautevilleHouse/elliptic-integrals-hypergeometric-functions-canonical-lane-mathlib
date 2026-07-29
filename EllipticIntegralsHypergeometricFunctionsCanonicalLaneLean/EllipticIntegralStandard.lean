import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EllipticIntegralsHypergeometricFunctionsCanonicalLaneLean.HypergeometricSeries

namespace HautevilleHouse
namespace EllipticIntegralsHypergeometricFunctionsCanonicalLaneLean

structure EllipticIntegralKPackage where
  m : ℂ
  value : ℂ
  hypergeometricRepresentation : Prop
  integralRepresentation : Prop
  seriesExpansion : HypergeometricSeriesPackage
  identityWithHypergeometric : HypergeometricSeriesClosed seriesExpansion → (value = (π/2) * (HypergeometricSeries.sumFormula (seriesExpansion) (m))) -- simplified

default

structure EllipticIntegralKEvidence (K : EllipticIntegralKPackage) where
  identityClosed : K.hypergeometricRepresentation ∧ K.integralRepresentation
  seriesClosed : HypergeometricSeriesClosed K.seriesExpansion

def EllipticIntegralKClosed (K : EllipticIntegralKPackage) : Prop :=
  K.hypergeometricRepresentation ∧ K.integralRepresentation ∧ HypergeometricSeriesClosed K.seriesExpansion

theorem elliptic_integral_K_closed_from_evidence
    (K : EllipticIntegralKPackage) (E : EllipticIntegralKEvidence K) :
    EllipticIntegralKClosed K := by
  exact And.intro E.identityClosed.1 (And.intro E.identityClosed.2 E.seriesClosed)

end EllipticIntegralsHypergeometricFunctionsCanonicalLaneLean
end HautevilleHouse