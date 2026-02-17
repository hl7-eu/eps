Instance: 40373110-13cc-4170-9a65-c2c424380994
InstanceOf: Observation
Usage: #inline
* meta.profile = "http://hl7.eu/fhir/laboratory/StructureDefinition/Observation-resultslab-eu-lab"
* performer.display = "The Central European Lab"
* category = $observation-category#laboratory
* code = $loinc#6299-2 "Urea nitrogen [Mass/volume] in Blood"
* code.text = "Urea nitrogen [Mass/volume] in Blood"
* valueQuantity = 7 'mg/dL' "mg/dL"
* referenceRange[0].low = 7 'mg/dL'
* referenceRange[+].high = 20 'mg/dL'
* status = #final
* subject = Reference(urn:uuid:8499029f-70ec-4919-88a9-938d8ad56397) "Sebastian Schmidl"
* effectiveDateTime = "2024-10-09T23:21:55Z"