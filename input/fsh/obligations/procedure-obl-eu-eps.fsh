Profile: ProcedureOblEuEps
Parent: ProcedureEuEps
Id: procedure-obl-eu-eps
Title: "Procedure - Obligations (EPS)"
Description: "This profile sets the IPS obligations on the Procedure (EPS) profile."

* insert SetFmmAndStatusRule (1, draft)

// ================= IPS OBLIGATIONS =================
* code insert ObligationIpsPopulateIfKnownDisplay

* subject insert ObligationIpsPopulateIfKnownDisplay

* subject.reference insert ObligationIpsPopulateIfKnownHandle

* performed[x] insert ObligationIpsPopulateIfKnownDisplay

* performedDateTime insert ObligationIpsAbleToPopulateDisplay
