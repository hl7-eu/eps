Extension: ImmunizationAdministeredProduct
Id:   immunization-administeredProduct
Title:  "Immunization AdministeredProduct"
Description: """This extension references the Medication administered during the vaccination.
It simulates the beahviour of the reference part of the administeredProduct R5 element"""
// publisher, contact, and other metadata here using caret (^) syntax (omitted)
* ^context[+].type = #element
* ^context[=].expression = "Immunization"
* value[x] 0..0
* extension contains concept 0..1 and reference 0..1
* extension[concept].value[x] only CodeableConcept
* extension[reference].value[x] only Reference
* extension[reference].valueReference only Reference (Medication)