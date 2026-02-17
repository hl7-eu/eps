Instance: 7de92544-71b0-40b8-be21-c3b201c447f2
InstanceOf: Immunization
Usage: #inline
* meta.profile = "http://hl7.org/fhir/uv/ips/StructureDefinition/Immunization-uv-ips"
* vaccineCode.coding[0] = $sct#29061000087103 "Vaccine product containing recombinant viral vector encoding SARS-CoV-2 spike protein"
* vaccineCode.coding[+] = $atc#J07BX03 "COVID-19 vector vaccines (non-replicating)"
* vaccineCode.text = "COVID-19 non-replicating viral vector vaccine"
* site = $sct#244979005 "Entire muscle of upper arm"
* site.text = "Entire muscle of upper arm"
* route = $sct#78421000 "Intramuscular route"
* route.text = "Intramuscular route"
* status = #completed
* patient = Reference(urn:uuid:8499029f-70ec-4919-88a9-938d8ad56397) "Sebastian Schmidl"
* occurrenceDateTime = "2021-09-08"
* lotNumber = "UQ-fQkXCD"
* expirationDate = "2021-11-02"