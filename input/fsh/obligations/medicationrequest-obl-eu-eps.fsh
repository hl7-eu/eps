Profile: MedicationRequestOblEuEps
Parent: MedicationRequestEuCore
Id: medicationrequest-obl-eu-eps
Title: "MedicationRequest Obligations (EPS)"
Description: "IPS obligations extracted from the MedicationRequest profile."

// ================= IPS OBLIGATIONS =================
* medication[x] insert ObligationActorAndCode(http://hl7.org/fhir/uv/ips/ActorDefinition/Creator, #SHALL:populate-if-known)
* medication[x] insert ObligationActorAndCode(http://hl7.org/fhir/uv/ips/ActorDefinition/Consumer, #SHALL:handle)
* medication[x] insert ObligationActorAndCode(http://hl7.org/fhir/uv/ips/ActorDefinition/Consumer, #SHOULD:display)
* subject insert ObligationActorAndCode(http://hl7.org/fhir/uv/ips/ActorDefinition/Creator, #SHALL:populate-if-known)
* subject insert ObligationActorAndCode(http://hl7.org/fhir/uv/ips/ActorDefinition/Consumer, #SHALL:handle)
* subject insert ObligationActorAndCode(http://hl7.org/fhir/uv/ips/ActorDefinition/Consumer, #SHOULD:display)
* subject.reference insert ObligationActorAndCode(http://hl7.org/fhir/uv/ips/ActorDefinition/Creator, #SHALL:populate-if-known)
* subject.reference insert ObligationActorAndCode(http://hl7.org/fhir/uv/ips/ActorDefinition/Consumer, #SHALL:handle)
* dosageInstruction insert ObligationActorAndCode(http://hl7.org/fhir/uv/ips/ActorDefinition/Creator, #SHALL:populate-if-known)
* dosageInstruction insert ObligationActorAndCode(http://hl7.org/fhir/uv/ips/ActorDefinition/Consumer, #SHALL:handle)
* dosageInstruction insert ObligationActorAndCode(http://hl7.org/fhir/uv/ips/ActorDefinition/Consumer, #SHOULD:display)
* dosageInstruction.text insert ObligationActorAndCode(http://hl7.org/fhir/uv/ips/ActorDefinition/Creator, #SHALL:populate-if-known)
* dosageInstruction.text insert ObligationActorAndCode(http://hl7.org/fhir/uv/ips/ActorDefinition/Consumer, #SHALL:handle)
* dosageInstruction.text insert ObligationActorAndCode(http://hl7.org/fhir/uv/ips/ActorDefinition/Consumer, #SHOULD:display)
* dosageInstruction.timing insert ObligationActorAndCode(http://hl7.org/fhir/uv/ips/ActorDefinition/Creator, #SHALL:populate-if-known)
* dosageInstruction.timing insert ObligationActorAndCode(http://hl7.org/fhir/uv/ips/ActorDefinition/Consumer, #SHALL:handle)
* dosageInstruction.timing insert ObligationActorAndCode(http://hl7.org/fhir/uv/ips/ActorDefinition/Consumer, #SHOULD:display)
