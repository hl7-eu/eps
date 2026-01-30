Profile: DiagnosticReportEuEps
Parent: DiagnosticReportEuCore
Id: diagnosticReport-eu-eps
Title: "DiagnosticReport (EPS)"
Description: "This profile represents the constraints applied to the DiagnosticReport resource by this guide."

* insert SetFmmAndStatusRule (1, draft)
* insert ImposeProfile ( $DiagnosticReport-uv-ips, 0 )

* subject only Reference(PatientEuCore or Group)
* subject.reference 1..1
* effective[x] 1..1

* result ^slicing.discriminator[0].type = #profile
* result ^slicing.discriminator[0].path = "resolve()"
* result ^slicing.ordered = false
* result ^slicing.rules = #open
* result contains observation-results 0..*
* result[observation-results] only Reference(MedicalTestResultEuCore)

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

* effectiveDateTime insert ObligationActorAndCode(http://hl7.org/fhir/uv/ips/ActorDefinition/Creator, #SHOULD:able-to-populate)
* effectiveDateTime insert ObligationActorAndCode(http://hl7.org/fhir/uv/ips/ActorDefinition/Consumer, #SHALL:handle)
* effectiveDateTime insert ObligationActorAndCode(http://hl7.org/fhir/uv/ips/ActorDefinition/Consumer, #SHOULD:display)

* performer insert ObligationActorAndCode(http://hl7.org/fhir/uv/ips/ActorDefinition/Creator, #SHALL:populate-if-known)
* performer insert ObligationActorAndCode(http://hl7.org/fhir/uv/ips/ActorDefinition/Consumer, #SHALL:handle)
* performer insert ObligationActorAndCode(http://hl7.org/fhir/uv/ips/ActorDefinition/Consumer, #SHOULD:display)

* result[observation-results] insert ObligationActorAndCode(http://hl7.org/fhir/uv/ips/ActorDefinition/Creator, #SHALL:populate-if-known)
* result[observation-results] insert ObligationActorAndCode(http://hl7.org/fhir/uv/ips/ActorDefinition/Consumer, #SHALL:handle)
* result[observation-results] insert ObligationActorAndCode(http://hl7.org/fhir/uv/ips/ActorDefinition/Consumer, #SHOULD:display)
