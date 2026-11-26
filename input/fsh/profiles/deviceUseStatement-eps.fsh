Profile: DeviceUseStatementEuEps
Parent: DeviceUseStatement
// Parent: DeviceUvIps
Id: deviceUseStatement-eu-eps
Title: "DeviceUseStatement (EPS)"
Description: """This profile constrains the DeviceUseStatement resource in the scope of the European Patient Summary."""

* insert SetFmmAndStatusRule (1, draft)

* insert CompliesWithProfile ( $DeviceUseStatement-uv-ips, 0 )  // Check if this is appropriate (see  support)
* identifier ^short = "Device usage identifier"
* text ^short = "Device usage description"
* source only Reference( PatientEuEps or PractitionerEuCore or PractitionerRoleEuCore or RelatedPerson )
* recordedOn ^short = "When recorded (dateTime)"
* subject only Reference(PatientEuEps)
* subject ^definition = "The patient using the device."
* subject.reference 1.. 
* timing[x] 1.. // 1.. in the IPS not in the EHDS model
* timing[x] only Period or dateTime // as in the IPS
* timingPeriod.start ^short = "Start of usage (dateTime)"
* timingPeriod.end ^short = "End of usage (dateTime)"
* reasonCode ^short = "Why is used (code)"
* reasonReference ^short = "Why is used (details)"
* device only Reference(DeviceEuEps)
* bodySite from SNOMEDCTBodyStructures (preferred)
* status ^short = "Current status of the Device Usage"
* note ^short = "Additional information about the device usage"



