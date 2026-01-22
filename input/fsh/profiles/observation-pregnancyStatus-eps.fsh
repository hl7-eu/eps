Profile: ObservationPregnancyStatusEuIps
Parent: Observation
Id: observation-pregnancy-status-eu-ips
Title: "Observation Pregnancy - Status (EPS)"
Description: "This profile constrains the Observation resource to represent the pregnancy status."

* insert SetFmmAndStatusRule (1, draft)
* insert ImposeProfile ( $Observation-pregnancy-status-uv-ips, 0 )

* code 1..1 
* code only CodeableConceptIPS
* code = $loinc#82810-3
* subject 1.. 
* subject only Reference(PatientEuCore)
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
* hasMember only Reference(ObservationPregnancyEddUvIps or ObservationPregnancyGestationalAgeEuEps)
* hasMember 
* hasMember ^short = "Expected delivery date or gestational age"
* hasMember ^definition = "A reference to the expected delivery date or gestational age observation."
* hasMember.reference 1.. 
* component ..0
