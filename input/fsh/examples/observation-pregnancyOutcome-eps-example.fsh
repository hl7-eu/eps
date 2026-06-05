Instance: EPSExampleObservationPregnancyOutcome
InstanceOf: ObservationPregnancyOutcomeEuEps
Title: "Observation : Pregnancy Outcome"
Description: "Example observation for the summarized history of pregnancy outcomes."
Usage: #example
* status = #final
* code = $loinc#11640-0 "[#] Births total"
* subject = Reference(Patient-f0b2dcfe-e837-464b-ae8a-3b9da1807dd3) "Petra Schwartz"
* effectiveDateTime = "2026-05-01"
* valueQuantity.value = 1
* valueQuantity.system = $ucum
* valueQuantity.code = #1
