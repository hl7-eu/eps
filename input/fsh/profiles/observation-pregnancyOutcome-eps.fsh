Profile: ObservationPregnancyOutcomeEuEps
Parent: Observation
Id: observation-pregnancy-outcome-eu-eps
Title: "Observation Pregnancy - Outcome (EPS)"
Description: "This profile constrains the Observation resource to represent the summarized history of pregnancy outcomes."

* insert SetFmmAndStatusRule (1, draft)
* insert ImposeProfile ( $Observation-pregnancy-outcome-uv-ips, 0 )

* code 1..1 
* code only CodeableConceptIPS
* code from PregnanciesSummaryUvIps (required)
* code ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* code ^binding.extension.valueString = "ObservationCode"
* subject 1.. 
* subject only Reference( PatientEuCore)
* subject.reference 1.. 
* effective[x] 1..1 
* effective[x] only dateTime
* valueQuantity only Quantity
* valueQuantity 
* bodySite ..0
* specimen ..0
* device ..0
* referenceRange ..0
* component ..0
