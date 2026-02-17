Instance: fe0b9b2a-01cc-4332-8c30-c02794f1490e
InstanceOf: Observation
Usage: #inline
* meta.profile = "http://hl7.eu/fhir/laboratory/StructureDefinition/Observation-resultslab-eu-lab"
* performer.display = "The Central European Lab"
* category = $observation-category#laboratory
* code = $loinc#20565-8 "Carbon dioxide, total [Moles/volume] in Blood"
* code.text = "Carbon dioxide, total [Moles/volume] in Blood"
* valueQuantity = 21.4 'mmol/L' "mmol/L"
* referenceRange[0].low = 22 'mmol/L'
* referenceRange[+].high = 29 'mmol/L'
* interpretation = $v3-ObservationInterpretation#L "Low"
* status = #final
* subject = Reference(urn:uuid:8499029f-70ec-4919-88a9-938d8ad56397) "Sebastian Schmidl"
* effectiveDateTime = "2024-10-09T23:21:55Z"