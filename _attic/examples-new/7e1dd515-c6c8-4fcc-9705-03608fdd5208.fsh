Instance: 7e1dd515-c6c8-4fcc-9705-03608fdd5208
InstanceOf: Observation
Usage: #inline
* meta.profile = "http://hl7.eu/fhir/laboratory/StructureDefinition/Observation-resultslab-eu-lab"
* performer.display = "The Central European Lab"
* category = $observation-category#laboratory
* code = $loinc#38483-4 "Creatinine [Mass/volume] in Blood"
* code.text = "Creatinine [Mass/volume] in Blood"
* valueQuantity = 1.3 'mg/dL' "mg/dL"
* referenceRange[0].low = 0.6 'mg/dL'
* referenceRange[+].high = 1.3 'mg/dL'
* status = #final
* subject = Reference(urn:uuid:8499029f-70ec-4919-88a9-938d8ad56397) "Sebastian Schmidl"
* effectiveDateTime = "2024-10-09T23:21:55Z"