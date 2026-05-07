Instance: EPSExampleObservationPregnancyGestationalAge
InstanceOf: ObservationPregnancyGestationalAgeEuEps
Title: "Observation Example: Pregnancy Gestational Age"
Description: "Example observation for gestational age in days."
Usage: #example
* status = #final
* code = $loinc#18185-9 "Gestational age"
* subject = Reference(Patient/example)
* effectiveDateTime = "2026-05-01"
* valueQuantity.value = 182
* valueQuantity.unit = "days"
* valueQuantity.system = $ucum
* valueQuantity.code = #d
