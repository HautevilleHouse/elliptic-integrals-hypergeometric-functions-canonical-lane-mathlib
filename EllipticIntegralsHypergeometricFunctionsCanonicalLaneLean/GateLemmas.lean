import EllipticIntegralsHypergeometricFunctionsCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace EllipticIntegralsHypergeometricFunctionsCanonicalLaneLean

def gateClosed (A : HypergeometricAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : HypergeometricAdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end EllipticIntegralsHypergeometricFunctionsCanonicalLaneLean
end HautevilleHouse