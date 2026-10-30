Profile: ObservationPregnancyStatusEuEps
Parent: Observation
Id: observation-pregnancy-status-eu-eps
Title: "Observation: Pregnancy - Status (EPS)"
Description: "This profile constrains the Observation resource to represent the pregnancy status in the scope of the European Patient Summary."

* insert SetFmmAndStatusRule (1, draft)
* insert ImposeProfile ( $Observation-pregnancy-status-uv-ips, 0 )

* code 1..1 
* code only CodeableConceptIPS
* code = $loinc#82810-3
* subject 1.. 
* subject only Reference(PatientEuEps)
* subject.reference 1.. 
* effective[x] 1..1 
* effective[x] only dateTime
* valueCodeableConcept only CodeableConceptIPS
* valueCodeableConcept 
* valueCodeableConcept from PregnancyStatusUvIps (preferred)
* bodySite ..0
* specimen ..0
* device ..0
* referenceRange ..0
* hasMember only Reference(ObservationPregnancyEddEuEps)
* hasMember 
* hasMember ^short = "Expected delivery date"
* hasMember ^definition = "A reference to the expected delivery date observation."
* hasMember.reference 1.. 
* component ..0


