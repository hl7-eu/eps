Instance: dce36640-97eb-4279-9f6c-65a155986b01
InstanceOf: Immunization
Usage: #inline
* meta.profile = "http://hl7.org/fhir/uv/ips/StructureDefinition/Immunization-uv-ips"
* vaccineCode.coding[0] = $sct#777725002 "Vaccine product containing only Clostridium tetani toxoid antigen adsorbed"
* vaccineCode.coding[+] = $atc#J07AM51 "Diphtheria-tetanus vaccines, adult type"
* vaccineCode.text = "Clostridium tetani toxoid antigen adsorbed only vaccine product"
* site = $sct#244979005 "Entire muscle of upper arm"
* site.text = "Entire muscle of upper arm"
* route = $sct#78421000 "Intramuscular route"
* route.text = "Intramuscular route"
* status = #completed
* patient = Reference(urn:uuid:8499029f-70ec-4919-88a9-938d8ad56397) "Sebastian Schmidl"
* occurrenceDateTime = "2021-09-22"
* lotNumber = "VK-BvrNaH4Qs"
* expirationDate = "2022-07-27"