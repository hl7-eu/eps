Instance: 20bbdf26-adbe-4123-87f7-d12eccd2a955
InstanceOf: AllergyIntolerance
Usage: #inline
* meta.profile = "http://hl7.eu/fhir/base/StructureDefinition/allergyIntolerance-eu-core"
* code = $sct#29061000087103 "Vaccine product containing recombinant viral vector encoding SARS-CoV-2 spike protein"
* code.text = "Vaccine product containing recombinant viral vector encoding SARS-CoV-2 spike protein"
* clinicalStatus = $allergyintolerance-clinical#active
* verificationStatus = $allergyintolerance-verification#confirmed
* patient = Reference(urn:uuid:8499029f-70ec-4919-88a9-938d8ad56397) "Sebastian Schmidl"
* onsetDateTime.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* onsetDateTime.extension.valueCode = #unknown