Instance: EPSExampleObservationPregnancyGestationalAge
InstanceOf: ObservationPregnancyGestationalAgeEuEps
Title: "Observation : Pregnancy Gestational Age"
Description: "Example observation for gestational age in days."
Usage: #example
* status = #final
* code = $loinc#18185-9 "Gestational age"
* subject = Reference(Instance-Patient-f51071b2-6c06-4d31-85ed-26a6b964ef98) "Petra Schwartz"
* effectiveDateTime = "2026-05-01"
* valueQuantity.value = 182
* valueQuantity.unit = "days"
* valueQuantity.system = $ucum
* valueQuantity.code = #d
