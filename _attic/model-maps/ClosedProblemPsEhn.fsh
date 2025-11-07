Logical: ClosedProblemPsEhn
Id: ClosedProblem
Title: "A.2.2.2 - Resolved, closed or inactive problems"
Description: """Resolved, closed or inactive problems. Section A.2.2.2 of the eHN guideline."""
* description 0..* CodeableConcept "A.2.2.2.1 Problem description" """Problems or diagnoses that the patient suffered in the past, and which have been resolved, closed or declared as inactive (not included in ""current problems or diagnosis"") Example: hepatic cyst (the patient has been treated with a hepatic cystectomy that solved the problem and the problem is therefore closed) - Preferred system(s):  ICD-10* SNOMED CT GPS Orphacode if rare disease is diagnosed"""
* onsetDate 0..* dateTime "A.2.2.2.2 Onset date" """Date of problem onset - Preferred system(s): ISO 8601"""
* endDate 0..* dateTime "A.2.2.2.3 End date" """Problem resolution date - Preferred system(s): ISO 8601"""
* resolution 0..* CodeableConcept "A.2.2.2.4 Resolution circumstances" """Describes the reason for which the status of the problem changed from current to inactive (e.g. surgical procedure, medical treatment, etc.). This field includes ""free text"" if the resolution circumstances are not already included in other fields such as surgical procedure, medical device, etc., e.g. hepatic cystectomy (this will be the resolution circumstances for the problem ""hepatic cyst"" and will be included in surgical procedures). - Preferred system(s):"""
