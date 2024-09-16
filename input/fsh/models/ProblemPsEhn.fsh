Logical: ProblemPsEhn
Id: Problem
Title: "A.2.3.1 Current problems"
Description: """Current problems. Section A.2.3.1 of the eHN guideline."""
* description 0..* CodeableConcept "A.2.3.1.1 Problem / diagnosis description" """Health conditions affecting the health of the patient and are important to be known for a health professional during a health encounter. - Preferred system(s): ICD-10* SNOMED CT GPS Orphacode if rare disease is diagnosed"""
* onsetDate 0..* dateTime "A.2.3.1.2 Onset date" """Date of problem onset - Preferred system(s): ISO 8601"""
* assertionStatus 0..* dateTime "A.2.3.1.3 Diagnosis assertion status" """Assertion about the certainty associated with a diagnosis. Diagnostic and/or clinical evidence of condition. - Preferred system(s): HL7"""
