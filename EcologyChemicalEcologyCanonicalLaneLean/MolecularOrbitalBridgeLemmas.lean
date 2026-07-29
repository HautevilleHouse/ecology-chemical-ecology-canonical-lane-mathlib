import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyChemicalEcologyCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ChemicalKineticsWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end EcologyChemicalEcologyCanonicalLaneLean
end HautevilleHouse