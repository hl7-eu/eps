Profile: PractitionerRoleOblEuEps
Parent: PractitionerRoleEuCore
Id: practitionerrole-obl-eu-eps
Title: "PractitionerRole Obligations (EPS)"
Description: "IPS obligations extracted from the PractitionerRole profile."

// ================= IPS OBLIGATIONS =================
* organization insert ObligationActorAndCode(http://hl7.org/fhir/uv/ips/ActorDefinition/Creator, #SHALL:populate-if-known)
* organization insert ObligationActorAndCode(http://hl7.org/fhir/uv/ips/ActorDefinition/Consumer, #SHALL:handle)
* organization insert ObligationActorAndCode(http://hl7.org/fhir/uv/ips/ActorDefinition/Consumer, #SHOULD:display)
