import EllipticIntegralsHypergeometricFunctionsCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace EllipticIntegralsHypergeometricFunctionsCanonicalLaneLean

def ConstrainedHypergeometricClosure (A : HypergeometricAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_hypergeometric_endgame (A : HypergeometricAdmissibleClass) :
    ConstrainedHypergeometricClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EllipticIntegralsHypergeometricFunctionsCanonicalLaneLean
end HautevilleHouse