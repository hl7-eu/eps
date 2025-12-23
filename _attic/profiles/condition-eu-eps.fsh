Profile: ConditionEuEps
Parent: $Condition-uv-ips
Id: condition-eu-eps
Title:    "Condition (EPS)"
Description: """This profile constrains the Condition resource for the purpose of the European patient summary."""
* ^purpose = "This profile constrains the Condition resource for the purpose of the European patient summary."

* insert SetFmmAndStatusRule (1, draft)

* extension contains SupportingInformation named supportingInfo 0..*
* extension[supportingInfo] ^short = "Reference to additional information as Guidelines"

* extension contains $condition-participant-r5 named participantR5 0..1

* extension[participantR5].extension[function]
  * ^short = "Type of participation"
  * ^example.label = "Contact Person"
  * ^example.valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v2-0131#CP
// * extension[participantR5].function ^example.label = "Contact Person"
// * extension[participantR5].function ^example.valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v2-0131#CP
* extension[participantR5].extension[actor] ^short = "Who or what participated"


* extension contains ConditionStatusReason named statusReason 0..1
* extension[statusReason].extension[reference] ^short = "Reason for this status (resource ref)"

* severity only $CodeableConcept-uv-ips
* severity from $condition-severity (preferred)

* bodySite only $CodeableConcept-uv-ips
* bodySite from SNOMEDCTBodyStructures (preferred)

* identifier ^definition = "Globally unique identifier of this problem which remain constant as the resource is updated and propagates from server to server."
* text ^definition = "Human readable specification of the problem. This is a general notes/comments entry for description of the problem, its diagnosis and prognosis."

* code
  * ^binding.description = "Codes describing the Problem"
  * ^definition = "Identification of the Problem or recording of \"absence of problem\" or of \"procedures unknown\"."
* code ^binding.extension[0].extension[0].url = "purpose"
* code ^binding.extension[=].extension[=].valueCode = #candidate
* code ^binding.extension[=].extension[+].url = "valueSet"
* code ^binding.extension[=].extension[=].valueCanonical = $eHDSIIllnessandDisorder
* code ^binding.extension[=].extension[+].url = "documentation"
* code ^binding.extension[=].extension[=].valueMarkdown = "Codes for problems used in Myhealth@EU"
* code ^binding.extension[=].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
* code ^binding.description = "A problem code or a code for absent/unknown problem"


* participant.actor

* clinicalStatus only $CodeableConcept-uv-ips
* clinicalStatus from ConditionClinicalStatusCodes (required)
  * ^definition = "The problem status describes the condition of the problem:\n\r
1.	Active problems are problems of which the patient experiences symptoms or for which evidence exists.\n\r
2.	If condition is abated, then clinicalStatus must be either inactive, resolved, or remission. \n\r
3.	Problems with the status 'Inactive' refer to problems that don't affect the patient anymore or that of which there is no evidence of existence anymore."
* verificationStatus only $CodeableConcept-uv-ips
* verificationStatus from ConditionVerificationStatus (required)
  * ^definition = "The verification status to support the clinical status of the condition."

* subject only Reference(PatientEuEps)
* subject.reference 1..

* onset[x] only dateTime or Age or Period or Range or string
* onsetDateTime ^definition = "Onset of the symptom, complaint, functional limitation, complication or date of diagnosis. A ‘vague’ date, such as only the year or the month and the year, is permitted."

* abatement[x] only dateTime or Age or Period or Range or string
* abatementDateTime ^definition = "The date or estimated date that the condition resolved or went into remission. A ‘vague’ date, such as only the year or the month and the year, is permitted"