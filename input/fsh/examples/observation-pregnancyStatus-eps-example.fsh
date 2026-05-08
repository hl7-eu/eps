Instance: EPSExampleObservationPregnancyStatus
InstanceOf: ObservationPregnancyStatusEuEps
Title: "Observation : Pregnancy Status"
Description: "Example observation for pregnancy status."
Usage: #example
* status = #final
* code = $loinc#82810-3 "Pregnancy status"
* subject = Reference(Instance-Patient-f51071b2-6c06-4d31-85ed-26a6b964ef98) "Petra Schwartz"
* effectiveDateTime = "2026-05-01"
* valueCodeableConcept = $sct#77386006 "Pregnant"
* hasMember = Reference(EPSExampleObservationPregnancyEdd)
