Logical: FunctionalStatusPsEhn
Id: FunctionalStatus
Title: "A.2.3.3 - Functional Status"
Description: """Functional Status. Section A.2.3.3 of the eHN guideline."""
* description 0..* Narrative "A.2.3.4.1 Description" """Need for the patient to be continuously assessed by third parties; functional status may influence decisions about how to plan and administer treatments."""
* onsetDate 0..* dateTime "A.2.3.4.2 Onset Date" """Onset date of a condition - Preferred system(s): ISO 8601"""
* code 0..* CodeableConcept "A.2.3.4.3 Functional assessment description" """Description of the functional assessment - Preferred system(s): ICF"""
* date 0..1 dateTime "A.2.3.4.4 Functional assessment date" """Date of the functional assessment - Preferred system(s): ISO 8601"""
* result 0..* CodeableConcept "A.2.3.4.5 Functional assessment result" """Functional assessment result value - Preferred system(s): ICF"""
