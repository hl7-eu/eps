Instance: EPSExampleObservationPregnancyStatus
InstanceOf: ObservationPregnancyStatusEuEps
Title: "Observation : Pregnancy Status"
Description: "Example observation for pregnancy status."
Usage: #example
* status = #final
* code = $loinc#82810-3 "Pregnancy status"
* subject = Reference(Patient-f0b2dcfe-e837-464b-ae8a-3b9da1807dd3) "Petra Schwartz"
* effectiveDateTime = "2026-05-01"
* valueCodeableConcept = $sct#77386006 "Pregnant"
* hasMember = Reference(EPSExampleObservationPregnancyEdd)
