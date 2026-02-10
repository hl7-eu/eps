Profile: MedicationRequestOblEuEps
Parent: MedicationRequestEuCore
Id: medicationrequest-obl-eu-eps
Title: "MedicationRequest Obligations (EPS)"
Description: "IPS obligations extracted from the MedicationRequest profile."

// ================= IPS OBLIGATIONS =================
* medication[x] insert ObligationIpsPopulateIfKnownDisplay
* subject insert ObligationIpsPopulateIfKnownDisplay
* subject.reference insert ObligationIpsPopulateIfKnownHandle
* dosageInstruction insert ObligationIpsPopulateIfKnownDisplay
* dosageInstruction.text insert ObligationIpsPopulateIfKnownDisplay
* dosageInstruction.timing insert ObligationIpsPopulateIfKnownDisplay


