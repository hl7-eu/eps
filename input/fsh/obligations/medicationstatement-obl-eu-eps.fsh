Profile: MedicationStatementOblEuEps
Parent: MedicationStatementEuEps
Id: medicationstatement-obl-eu-eps
Title: "MedicationStatement - Obligations (EPS)"
Description: "This profile sets the IPS obligations on the MedicationStatement (EPS) profile."

* insert SetFmmAndStatusRule (1, draft)

// ================= REFERENCES TO OBLIGATION PROFILES =================
* subject only Reference(PatientOblEuEps)

// ================= IPS OBLIGATIONS =================
* medication[x] insert ObligationIpsPopulateIfKnownDisplay
* subject insert ObligationIpsPopulateIfKnownDisplay
* subject.reference insert ObligationIpsPopulateIfKnownHandle
* effective[x] insert ObligationIpsPopulateIfKnownDisplay
* effectiveDateTime insert ObligationIpsAbleToPopulateDisplay
* dosage insert ObligationIpsPopulateIfKnownDisplay
* dosage.text insert ObligationIpsPopulateIfKnownDisplay
* dosage.timing insert ObligationIpsPopulateIfKnownDisplay
