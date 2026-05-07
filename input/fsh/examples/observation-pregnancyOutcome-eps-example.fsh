Instance: EPSExampleObservationPregnancyOutcome
InstanceOf: ObservationPregnancyOutcomeEuEps
Title: "Observation Example: Pregnancy Outcome"
Description: "Example observation for the summarized history of pregnancy outcomes."
Usage: #example
* status = #final
* code = $loinc#11640-0 "[#] Births total"
* subject = Reference(Instance-Patient-f51071b2-6c06-4d31-85ed-26a6b964ef98) "Petra Schwartz"
* effectiveDateTime = "2026-05-01"
* valueQuantity.value = 1
* valueQuantity.system = $ucum
* valueQuantity.code = #1
