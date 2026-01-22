Profile: ObservationPregnancyGestationalAgeEuEps
Parent: Observation
Id: observation-pregnancy-gestationalAge-eu-eps
Title: "Observation Pregnancy - Gestational Age (EPS)"
Description: "This profile constrains the Observation resource to represent gestational age."

* insert SetFmmAndStatusRule (1, draft)

* code 1..1
* code only CodeableConceptIPS
* code from GestationalAgeLoincVs (required)
* subject 1..
* subject only Reference(PatientEuCore)
* subject.reference 1..
* effective[x] 1..1
* effective[x] only dateTime
* valueQuantity only Quantity
* valueQuantity
* bodySite ..0
* method ..0
* specimen ..0
* device ..0
* referenceRange ..0
* component ..0
