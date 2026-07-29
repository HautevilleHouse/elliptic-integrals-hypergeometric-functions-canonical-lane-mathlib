import EllipticIntegralsHypergeometricFunctionsCanonicalLaneLean.MathlibObjects
import Mathlib.Analysis.SpecialFunctions.Integrals

/-!
# Integral Representations of Hypergeometric Functions
-/

namespace HautevilleHouse
namespace EllipticIntegralsHypergeometricFunctionsCanonicalLaneLean

structure EulerIntegralRepresentation (H : HypergeometricData) where
  integrand : ℂ → ℂ
  contour : Set ℂ
  equality : Prop
  convergence : Prop

structure MellinBarnesRepresentation (H : HypergeometricData) where
  integrand : ℂ → ℂ
  contour : Set ℂ
  equality : Prop
  convergence : Prop

structure IntegralRepresentationPackage (H : HypergeometricData) where
  euler : EulerIntegralRepresentation H
  mellinBarnes : MellinBarnesRepresentation H
  compatibility : euler.equality = mellinBarnes.equality

def IntegralRepresentationClosed {H : HypergeometricData} (P : IntegralRepresentationPackage H) : Prop :=
  P.euler.equality ∧ P.euler.convergence ∧ P.mellinBarnes.equality ∧ P.mellinBarnes.convergence

theorem integral_representation_closed_from_package {H : HypergeometricData} (P : IntegralRepresentationPackage H) : IntegralRepresentationClosed P := by
  exact And.intro P.euler.equality (And.intro P.euler.convergence (And.intro P.mellinBarnes.equality P.mellinBarnes.convergence))

end EllipticIntegralsHypergeometricFunctionsCanonicalLaneLean
end HautevilleHouse