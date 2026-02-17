Instance: 83a14c87-dc10-475d-96ae-31284efe5ccf
InstanceOf: Observation
Usage: #inline
* meta.profile = "http://hl7.eu/fhir/laboratory/StructureDefinition/Observation-resultslab-eu-lab"
* performer.display = "The Central European Lab"
* category = $observation-category#laboratory
* code = $loinc#4548-4 "Hemoglobin A1c/Hemoglobin.total in Blood"
* code.text = "Hemoglobin A1c/Hemoglobin.total in Blood"
* valueQuantity = 6.2 '%' "%"
* referenceRange[0].low = 4.3 '%'
* referenceRange[+].high = 6.4 '%'
* status = #final
* subject = Reference(urn:uuid:8499029f-70ec-4919-88a9-938d8ad56397) "Sebastian Schmidl"
* effectiveDateTime = "2024-10-09T23:21:55Z"