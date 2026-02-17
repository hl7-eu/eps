Instance: 4c10e90d-2461-4d32-8795-44b6bc478eba
InstanceOf: Observation
Usage: #inline
* meta.profile = "http://hl7.eu/fhir/laboratory/StructureDefinition/Observation-resultslab-eu-lab"
* performer.display = "The Central European Lab"
* category = $observation-category#laboratory
* code = $loinc#6298-4 "Potassium [Moles/volume] in Blood"
* code.text = "Potassium [Moles/volume] in Blood"
* valueQuantity = 4.7 'mmol/L' "mmol/L"
* referenceRange[0].low = 3.5 'mmol/L'
* referenceRange[+].high = 5.3 'mmol/L'
* status = #final
* subject = Reference(urn:uuid:8499029f-70ec-4919-88a9-938d8ad56397) "Sebastian Schmidl"
* effectiveDateTime = "2024-10-09T23:21:55Z"