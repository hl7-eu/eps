Instance: 5960d591-e97c-48f7-9b1f-283712668a0c
InstanceOf: Observation
Usage: #inline
* meta.profile = "http://hl7.eu/fhir/laboratory/StructureDefinition/Observation-resultslab-eu-lab"
* performer.display = "The Central European Lab"
* category = $observation-category#laboratory
* code = $loinc#2069-3 "Chloride [Moles/volume] in Blood"
* code.text = "Chloride [Moles/volume] in Blood"
* valueQuantity = 101.1 'mmol/L' "mmol/L"
* referenceRange[0].low = 98 'mmol/L'
* referenceRange[+].high = 110 'mmol/L'
* status = #final
* subject = Reference(urn:uuid:8499029f-70ec-4919-88a9-938d8ad56397) "Sebastian Schmidl"
* effectiveDateTime = "2024-10-09T23:21:55Z"