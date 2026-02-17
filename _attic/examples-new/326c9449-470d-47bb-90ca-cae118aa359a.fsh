Instance: 326c9449-470d-47bb-90ca-cae118aa359a
InstanceOf: Immunization
Usage: #inline
* meta.profile = "http://hl7.org/fhir/uv/ips/StructureDefinition/Immunization-uv-ips"
* vaccineCode.coding[0] = $sct#1181000221105 "Vaccine product containing Influenza virus antigen"
* vaccineCode.coding[+] = $atc#J07BB02 "Influenza, inactivated, split virus"
* vaccineCode.text = "Influenza virus antigen only vaccine product"
* site = $sct#244979005 "Entire muscle of upper arm"
* site.text = "Entire muscle of upper arm"
* route = $sct#78421000 "Intramuscular route"
* route.text = "Intramuscular route"
* status = #completed
* patient = Reference(urn:uuid:8499029f-70ec-4919-88a9-938d8ad56397) "Sebastian Schmidl"
* occurrenceDateTime = "2024-10-09"
* lotNumber = "QT-nlEj"
* expirationDate = "2025-08-11"