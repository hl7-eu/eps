Profile: DeviceUseStatementEuEps
Parent: DeviceUseStatement
// Parent: DeviceUvIps
Id: deviceUseStatement-eu-eps
Title: "DeviceUseStatement (EPS)"
Description: "This profile represents the constraints applied to the DeviceUseStatement resource for the purpose of this guide. A device used by or implanted on the patient is described in the hospital discharge report as an instance of a Device resource constrained by this profile."

* insert ImposeProfile ( $DeviceUseStatement-uv-ips, 0 )  // Check if this is appropriate (see  support)
* identifier ^short = "Device usage identifier"
* text ^short = "Device usage description"
* source only Reference( PatientEuEps or PractitionerEuCore or PractitionerRoleEuCore or RelatedPerson )
* recordedOn ^short = "When recorded (dateTime)"
* subject only Reference(PatientEuEps)
* subject ^definition = "The patient using the device."
* subject.reference 1.. 
* timing[x] 1.. // 1.. in the IPS not in the EHDS model
* timingPeriod.start ^short = "Start of usage (dateTime)"
* timingPeriod.end ^short = "End of usage (dateTime)"
* reasonCode ^short = "Why is used (code)"
* reasonReference ^short = "Why is used (details)"
* device only Reference(DeviceEuEps)
* bodySite from SNOMEDCTBodyStructures (preferred)
* status ^short = "Current status of the Device Usage"
* note ^short = "Additional information about the device usage"

// ================= IPS OBLIGATIONS =================
* subject insert ObligationIpsPopulateIfKnownDisplay

* subject.reference insert ObligationIpsPopulateIfKnownHandle

* timing[x] insert ObligationIpsPopulateIfKnownDisplay

* timingDateTime insert ObligationIpsAbleToPopulateDisplay

* timingPeriod insert ObligationIpsAbleToPopulateDisplay

* device insert ObligationIpsPopulateIfKnownDisplay



