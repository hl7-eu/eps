Instance: 7286072d-9b2f-4d4d-925f-4f3d75dbea80
InstanceOf: Observation
Usage: #inline
* meta.profile = "http://hl7.eu/fhir/laboratory/StructureDefinition/Observation-resultslab-eu-lab"
* performer.display = "The Central European Lab"
* category = $observation-category#laboratory
* code = $loinc#2339-0 "Glucose [Mass/volume] in Blood"
* code.text = "Glucose [Mass/volume] in Blood"
* valueQuantity = 88 'mg/dL' "mg/dL"
* referenceRange[0].low = 70 'mg/dL'
* referenceRange[+].high = 140 'mg/dL'
* status = #final
* subject = Reference(urn:uuid:8499029f-70ec-4919-88a9-938d8ad56397) "Sebastian Schmidl"
* effectiveDateTime = "2024-10-09T23:21:55Z"