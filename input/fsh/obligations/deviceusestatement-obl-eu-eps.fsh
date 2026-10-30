Profile: DeviceUseStatementOblEuEps
Parent: DeviceUseStatementEuEps
Id: deviceusestatement-obl-eu-eps
Title: "DeviceUseStatement - Obligations (EPS)"
Description: "This profile sets the IPS obligations on the DeviceUseStatement (EPS) profile."

* insert SetFmmAndStatusRule (1, draft)

// ================= REFERENCES TO OBLIGATION PROFILES =================
* subject only Reference(PatientOblEuEps)
* source only Reference(PatientOblEuEps or PractitionerEuCore or PractitionerRoleEuCore or RelatedPerson)
* device only Reference(DeviceOblEuEps)

// ================= IPS OBLIGATIONS =================
* subject insert ObligationIpsPopulateIfKnownDisplay

* subject.reference insert ObligationIpsPopulateIfKnownHandle

* timing[x] insert ObligationIpsPopulateIfKnownDisplay

* timingDateTime insert ObligationIpsAbleToPopulateDisplay

* timingPeriod insert ObligationIpsAbleToPopulateDisplay

* device insert ObligationIpsPopulateIfKnownDisplay
