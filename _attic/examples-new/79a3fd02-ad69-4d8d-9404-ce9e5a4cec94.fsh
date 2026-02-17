Instance: 79a3fd02-ad69-4d8d-9404-ce9e5a4cec94
InstanceOf: Observation
Usage: #inline
* meta.profile = "http://hl7.eu/fhir/laboratory/StructureDefinition/Observation-resultslab-eu-lab"
* performer.display = "The Central European Lab"
* category = $observation-category#laboratory
* code = $loinc#49765-1 "Calcium [Mass/volume] in Blood"
* code.text = "Calcium [Mass/volume] in Blood"
* valueQuantity = 8.8 'mg/dL' "mg/dL"
* referenceRange[0].low = 8.5 'mg/dL'
* referenceRange[+].high = 10.5 'mg/dL'
* status = #final
* subject = Reference(urn:uuid:8499029f-70ec-4919-88a9-938d8ad56397) "Sebastian Schmidl"
* effectiveDateTime = "2024-10-09T23:21:55Z"