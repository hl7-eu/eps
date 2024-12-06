Profile: OrganizationEuEps
Parent: OrganizationEu // http://hl7.org/fhir/uv/ips/StructureDefinition/Organization-uv-ips
Id: organization-eu-eps
Title: "Organization (EU PS)"
Description: "This profile sets minimum expectations for the Organization resource to searching for and fetching an Organization associated with a patient or provider for the purpose of this guide."

* insert SetFmmandStatusRule (1, draft)
* insert ImposeProfile ( $Organization-uv-ips, 0 )
* name 1..
* partOf only Reference (OrganizationEuEps)