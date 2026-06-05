Instance: EPSExampleObservationPregnancyGestationalAge
InstanceOf: ObservationPregnancyGestationalAgeEuEps
Title: "Observation : Pregnancy Gestational Age"
Description: "Example observation for gestational age in days."
Usage: #example
* status = #final
* code = $loinc#18185-9 "Gestational age"
* subject = Reference(Patient-f0b2dcfe-e837-464b-ae8a-3b9da1807dd3) "Petra Schwartz"
* effectiveDateTime = "2026-05-01"
* valueQuantity.value = 182
* valueQuantity.unit = "days"
* valueQuantity.system = $ucum
* valueQuantity.code = #d
