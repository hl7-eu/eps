Profile: MedicationRequestOblEuEps
Parent: MedicationRequestEuCore
Id: medicationrequest-obl-eu-eps
Title: "MedicationRequest - Obligations (EPS)"
Description: "This profiles set the IPS obligations on the EU Core MedicationRequest profile."

// ================= IPS OBLIGATIONS =================
* medication[x] insert ObligationIpsPopulateIfKnownDisplay
* subject insert ObligationIpsPopulateIfKnownDisplay
* subject.reference insert ObligationIpsPopulateIfKnownHandle
* dosageInstruction insert ObligationIpsPopulateIfKnownDisplay
* dosageInstruction.text insert ObligationIpsPopulateIfKnownDisplay
* dosageInstruction.timing insert ObligationIpsPopulateIfKnownDisplay


