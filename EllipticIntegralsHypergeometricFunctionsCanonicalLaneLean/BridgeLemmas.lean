import EllipticIntegralsHypergeometricFunctionsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EllipticIntegralsHypergeometricFunctionsCanonicalLaneLean

def bridgeClosed (A : HypergeometricAdmissibleClass) : Prop :=
  A.object.conclusion

theorem bridge_from_admissible_class (A : HypergeometricAdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end EllipticIntegralsHypergeometricFunctionsCanonicalLaneLean
end HautevilleHouse