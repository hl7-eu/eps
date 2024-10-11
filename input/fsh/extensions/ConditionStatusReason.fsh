Extension: ConditionStatusReason
Id:   condition-statusReason
Title:  "Condition Status Reason"
Description: """This extension describe the reasons for the condition status, e.g. how this condition has been resolved"""
// publisher, contact, and other metadata here using caret (^) syntax (omitted)
* ^context[+].type = #element
* ^context[=].expression = "Condition"
* value[x] 0..0
* extension contains concept 0..1 and reference 0..1
* extension[concept].value[x] only CodeableConcept
* extension[reference].value[x] only Reference
* extension[reference].valueReference only Reference (Procedure or MedicationStatement or CarePlan or MedicationAdministration)