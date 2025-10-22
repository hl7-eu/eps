Profile: DeviceEuEps
Parent: $Device-uv-ips
// Parent: DeviceUvIps
Id: device-eu-eps
Title: "Device (EPS)"
Description: "This profile represents the constraints applied to the Device resource for the purpose of this guide. A device used by or implanted on the patient is described in the hospital discharge report as an instance of a Device resource constrained by this profile."
//* type 0..1 
//* type only CodeableConceptIPS

// * insert ImposeProfile ( $Device-uv-ips, 0 )  // Check if this is appropriate (see  support)

* identifier ^short = "Device Identifier"
* udiCarrier ^short = "Unique Device Identifier (UDI)"
* type from $vs-medical-devices-uv-ips (preferred)
* type ^short = "Type of device.\r\nPreferably valued by using SNOMED CT.\r\nThe absence of information, or of devices relevant for purpose of this IPS, shall be explicitly stated by using the codes included in the absent-or-unknown-devices-uv-ips value set."
* type ^binding.extension[0].extension[0].url = "purpose"
* type ^binding.extension[=].extension[=].valueCode = #candidate
* type ^binding.extension[=].extension[+].url = "valueSet"
* type ^binding.extension[=].extension[=].valueCanonical = $eHDSIMedicalDevice
* type ^binding.extension[=].extension[+].url = "documentation"
* type ^binding.extension[=].extension[=].valueMarkdown = "Codes for medical devices from MyHealth@EU"
* type ^binding.extension[=].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
* type ^binding.extension[+].extension[0].url = "purpose"
* type ^binding.extension[=].extension[=].valueCode = #candidate
* type ^binding.extension[=].extension[+].url = "valueSet"
* type ^binding.extension[=].extension[=].valueCanonical = "http://hl7.org/fhir/uv/ips/ValueSet/absent-or-unknown-devices-uv-ips"
* type ^binding.extension[=].extension[+].url = "documentation"
* type ^binding.extension[=].extension[=].valueMarkdown = "Codes for absent or unknown medical devices"
* type ^binding.extension[=].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
* type ^binding.description = "The type of device or a code for absent/unknown device"
* patient 1.. 
* patient only Reference(PatientEuEps)
* patient.reference 1.. 