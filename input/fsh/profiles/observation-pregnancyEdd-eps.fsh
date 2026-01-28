Profile: ObservationPregnancyEddEuEps
Parent: Observation
Id: observation-pregnancy-edd-eu-eps
Title: "Observation Pregnancy - Expected Delivery Date (EPS)"
Description: "This profile constrains the Observation resource to represent the pregnancy expected delivery date (EDD)."

* insert SetFmmAndStatusRule (1, draft)
* insert ImposeProfile ( $Observation-pregnancy-edd-uv-ips, 0 )
* code 1..1 
* code only CodeableConceptIPS
* code from PregnancyExpectedDeliveryDateMethodUvIps (required)
* subject 1.. 
* subject only Reference(PatientEuEps)
* subject.reference 1.. 
* effective[x] 1..1 
* effective[x] only dateTime
* valueDateTime only dateTime
* valueDateTime 
* bodySite ..0
* method ..0
* specimen ..0
* device ..0
* referenceRange ..0
* component ..0

// ================= IPS OBLIGATIONS =================
* code insert ObligationActorAndCode(http://hl7.org/fhir/uv/ips/ActorDefinition/Creator, #SHALL:populate-if-known)
* code insert ObligationActorAndCode(http://hl7.org/fhir/uv/ips/ActorDefinition/Consumer, #SHALL:handle)
* code insert ObligationActorAndCode(http://hl7.org/fhir/uv/ips/ActorDefinition/Consumer, #SHOULD:display)

* subject insert ObligationActorAndCode(http://hl7.org/fhir/uv/ips/ActorDefinition/Creator, #SHALL:populate-if-known)
* subject insert ObligationActorAndCode(http://hl7.org/fhir/uv/ips/ActorDefinition/Consumer, #SHALL:handle)
* subject insert ObligationActorAndCode(http://hl7.org/fhir/uv/ips/ActorDefinition/Consumer, #SHOULD:display)

* subject.reference insert ObligationActorAndCode(http://hl7.org/fhir/uv/ips/ActorDefinition/Creator, #SHALL:populate-if-known)
* subject.reference insert ObligationActorAndCode(http://hl7.org/fhir/uv/ips/ActorDefinition/Consumer, #SHALL:handle)

* effective[x] insert ObligationActorAndCode(http://hl7.org/fhir/uv/ips/ActorDefinition/Creator, #SHALL:populate-if-known)
* effective[x] insert ObligationActorAndCode(http://hl7.org/fhir/uv/ips/ActorDefinition/Consumer, #SHALL:handle)
* effective[x] insert ObligationActorAndCode(http://hl7.org/fhir/uv/ips/ActorDefinition/Consumer, #SHOULD:display)

* valueDateTime insert ObligationActorAndCode(http://hl7.org/fhir/uv/ips/ActorDefinition/Creator, #SHALL:populate-if-known)
* valueDateTime insert ObligationActorAndCode(http://hl7.org/fhir/uv/ips/ActorDefinition/Consumer, #SHALL:handle)
* valueDateTime insert ObligationActorAndCode(http://hl7.org/fhir/uv/ips/ActorDefinition/Consumer, #SHOULD:display)
