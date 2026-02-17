Instance: ab4579b5-af7b-490e-9a1a-40fbd274dc29
InstanceOf: Immunization
Usage: #inline
* meta.profile = "http://hl7.org/fhir/uv/ips/StructureDefinition/Immunization-uv-ips"
* vaccineCode.coding[0] = $sct#2221000221107 "Live attenuated Varicella-zoster vaccine"
* vaccineCode.coding[+] = $atc#J07BK02 "Varicella-zoster vaccines"
* vaccineCode.text = "Live attenuated Human alphaherpesvirus 3 only vaccine product"
* site = $sct#368208006 "Left upper arm structure"
* site.text = "Left upper arm structure"
* route = $sct#34206005 "Subcutaneous route"
* route.text = "Subcutaneous route"
* status = #completed
* patient = Reference(urn:uuid:8499029f-70ec-4919-88a9-938d8ad56397) "Sebastian Schmidl"
* occurrenceDateTime = "2021-09-22"
* lotNumber = "GE-EiHCmAS"
* expirationDate = "2022-02-03"