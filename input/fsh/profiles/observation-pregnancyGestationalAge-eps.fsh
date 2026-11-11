Profile: ObservationPregnancyGestationalAgeEuEps
Parent: Observation
Id: observation-pregnancy-gestationalAge-eu-eps
Title: "Observation: Pregnancy - Gestational Age (EPS)"
Description: "This profile constrains the Observation resource to represent gestational age in days in the scope of the European Patient Summary."

* insert SetFmmAndStatusRule (1, draft)

* code 1..1
* code only CodeableConceptIPS
* code from GestationalAgeLoincVs (required)
* subject 1..
* subject only Reference(PatientEuEps)
* subject.reference 1..
* effective[x] 1..1
* effective[x] only dateTime
* valueQuantity only Quantity
* valueQuantity
  * system = $ucum
  * code = #d
  * extension contains $originalText named originalText 0..1
  * extension[originalText] ^short = "Gestational age as originally recorded"
  * extension[originalText] ^definition = "The gestational age as it was originally recorded (e.g. \"26 weeks\" or \"26+0\"), before it was converted to days."
  * extension[originalText] ^comment = "The text is for display only. The gestational age to be processed is the value in days."
* bodySite ..0
* method ..0
* specimen ..0
* device ..0
* referenceRange ..0
* component ..0
