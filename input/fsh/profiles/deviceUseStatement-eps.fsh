Profile: DeviceUseStatementEuEps
Parent: DeviceUseStatement
// Parent: DeviceUvIps
Id: deviceUseStatement-eu-eps
Title: "DeviceUseStatement (EPS)"
Description: "This profile represents the constraints applied to the DeviceUseStatement resource for the purpose of this guide. A device used by or implanted on the patient is described in the hospital discharge report as an instance of a Device resource constrained by this profile."

* insert ImposeProfile ( $DeviceUseStatement-uv-ips, 0 )  // Check if this is appropriate (see  support)
* text ^short = "Device usage description"
* subject only Reference(PatientEuEps)
* subject ^definition = "The patient using the device."
* subject.reference 1.. 
* timing[x] 1..1 
* timing[x].extension contains $data-absent-reason named data-absent-reason 0..1 
* timing[x].extension[data-absent-reason] ^definition = "Provides a reason why the timing is missing."
* reasonCode ^short = "Why is used (code)"
* reasonReference ^short = "Why is used (details)"
* device only Reference(DeviceEuEps)
* bodySite only CodeableConceptIPS
* bodySite from SNOMEDCTBodyStructures (preferred)