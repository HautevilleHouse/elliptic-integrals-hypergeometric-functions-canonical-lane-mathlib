import canonicalLaneMathlib.AdmissibleClass
import EllipticIntegralsHypergeometricFunctionsCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace EllipticIntegralsHypergeometricFunctionsCanonicalLaneLean

structure HypergeometricAdmissibleClass where
  object : HypergeometricAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def hypergeometricAdmittedClosure (A : HypergeometricAdmissibleClass) : Prop :=
  A.object.conclusion ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end EllipticIntegralsHypergeometricFunctionsCanonicalLaneLean
end HautevilleHouse