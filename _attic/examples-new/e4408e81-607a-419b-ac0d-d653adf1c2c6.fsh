Instance: e4408e81-607a-419b-ac0d-d653adf1c2c6
InstanceOf: Observation
Usage: #inline
* meta.profile = "http://hl7.eu/fhir/laboratory/StructureDefinition/Observation-resultslab-eu-lab"
* performer.display = "The Central European Lab"
* category = $observation-category#laboratory
* code = $loinc#2947-0 "Sodium [Moles/volume] in Blood"
* code.text = "Sodium [Moles/volume] in Blood"
* valueQuantity = 143.3 'mmol/L' "mmol/L"
* referenceRange[0].low = 135 'mmol/L'
* referenceRange[+].high = 145 'mmol/L'
* status = #final
* subject = Reference(urn:uuid:8499029f-70ec-4919-88a9-938d8ad56397) "Sebastian Schmidl"
* effectiveDateTime = "2024-10-09T23:21:55Z"