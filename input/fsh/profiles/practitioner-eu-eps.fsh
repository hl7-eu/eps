
//====== Profiles =====================================

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  PractitionerEuEps
Parent:   Practitioner // http://hl7.org/fhir/uv/ips/StructureDefinition/Practitioner-uv-ips
Id:       practitioner-eu-eps
Title:    "Practitioner (EU PS)"
Description: "This profile defines how to represent Practitioners in FHIR for the purpose of the  HL7 Europe project."
//-------------------------------------------------------------------------------------------
* insert SetFmmandStatusRule (1, draft)
* insert ImposeProfile($Practitioner-uv-ips, 0)
* identifier ^short = "Practitioner identifier"
* name ^short = "Practitioner name"
//-------------------------------------------------------------------------------------------

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  PractitionerRoleEuEps
Parent:   PractitionerRole // http://hl7.org/fhir/uv/ips/StructureDefinition/PractitionerRole-uv-ips
Id:       practitionerRole-eu-eps
Title:    "PractitionerRole: (EU PS)"
Description: "This profile defines how to represent Practitioners (with their roles) in FHIR for the purpose of the  HL7 Europe project."
//-------------------------------------------------------------------------------------------

* insert SetFmmandStatusRule (1, draft)
* insert ImposeProfile($PractitionerRole-uv-ips, 0)
* identifier ^short = "Business identifier"
* organization only Reference (OrganizationEuEps)
* practitioner ^short = "Practitioner playing this role"
//-------------------------------------------------------------------------------------------
