Profile: ObservationPregnancyEddEuEps
Parent: Observation
Id: observation-pregnancy-edd-eu-eps
Title: "Observation Pregnancy - Expected Delivery Date (EPS)"
Description: "This profile constrains the Observation resource to represent the pregnancy expected delivery date (EDD)."

* insert SetFmmAndStatusRule (1, draft)
* insert ImposeProfile ( $Observation-pregnancy-edd-uv-ips, 0 )
* code 1..1 
* code only CodeableConceptIPS
* code from PregnancyExpectedDeliveryDateMethodUvIps (required)
* subject 1.. 
* subject only Reference(PatientEuCore)
* subject.reference 1.. 
* effective[x] 1..1 
* effective[x] only dateTime
* valueDateTime only dateTime
* valueDateTime 
* bodySite ..0
* method ..0
* specimen ..0
* device ..0
* referenceRange ..0
* component ..0
