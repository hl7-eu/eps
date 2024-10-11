Profile: ConditionEpsEu
Parent: $Condition-uv-ips
Id: Condition-eu-eps
Title:    "Condition (EU PS)"
Description: """This profile constrains the Condition resource for the purpose of the European patient summary."""
* ^experimental = false
* ^purpose = "This profile constrains the Condition resource for the purpose of the European patient summary."

* insert SetFmmandStatusRule (1, draft)

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



* code ^short = "TBD: update the VS binding" // from EHDSIProblemCode (preferred)
* participant.actor
* severity from EHDSISeverity
* subject only Reference(PatientEpsEu)
* onset[x] only dateTime // is this rule needed ?
* abatement[x] only dateTime // is this rule needed ?