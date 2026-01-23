Extension: SupportingInformation
Id:   supportingInformation
Title:  "Supporting Information"
Description: """This extension refers other resources from the patient record that may be relevant to the event. The information from these resources was either used to create the instance or is provided to help with its interpretation. This extension should not be used if more specific inline elements or extensions are available."""
// publisher, contact, and other metadata here using caret (^) syntax (omitted)
* ^context[+].type = #element
* ^context[=].expression = "Condition"
* value[x] only Reference
* valueReference only Reference(DocumentReference)