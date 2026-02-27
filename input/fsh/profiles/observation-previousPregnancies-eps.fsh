Profile: ObservationPregnancyPreviousPregnanciesEuEps
Parent: Observation
Id: observation-pregnancy-previousPregnancies-eu-eps
Title: "Observation Pregnancy - Previous Pregnancies (EPS)"
Description: "This profile constrains the Observation resource to represent previous pregnancies."

* insert SetFmmAndStatusRule (0, draft)

* code 1..1
* code only CodeableConceptIPS
* code = $loinc#64710-7 // Was your pregnancy a live birth, stillbirth, miscarriage, abortion, or ectopic pregnancy [PhenX]
* subject 1..
* subject only Reference(PatientEuEps)
* subject.reference 1..
* effective[x] 1..1
* effective[x] only Period
* effectivePeriod.end
  * ^short = "Pregnancy end date"
* value[x] only CodeableConceptIPS
* valueCodeableConcept from PreviousPregnancyOutcomeSCTVS (extensible)
* bodySite ..0
* method ..0
* specimen ..0
* device ..0
* referenceRange ..0
* component
  * ^slicing.discriminator.type = #pattern
  * ^slicing.discriminator.path = "$this"
  * ^slicing.rules = #open
  * ^slicing.ordered = false
* component contains
    numberOfFetuses 0..1
* component[numberOfFetuses]
  * code 1..1
  * code only CodeableConceptIPS
  * code = $sct#246435002 // Number of fetuses (observable entity)
  * value[x] only integer
