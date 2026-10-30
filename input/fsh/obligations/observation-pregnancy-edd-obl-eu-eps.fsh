Profile: ObservationPregnancyEddOblEuEps
Parent: ObservationPregnancyEddEuEps
Id: observation-pregnancy-edd-obl-eu-eps
Title: "Observation: Pregnancy - Expected Delivery Date - Obligations (EPS)"
Description: "This profile sets the IPS obligations on the Observation: Pregnancy - Expected Delivery Date (EPS) profile."

* insert SetFmmAndStatusRule (1, draft)

// ================= IPS OBLIGATIONS =================
* code insert ObligationIpsPopulateIfKnownDisplay

* subject insert ObligationIpsPopulateIfKnownDisplay

* subject.reference insert ObligationIpsPopulateIfKnownHandle

* effective[x] insert ObligationIpsPopulateIfKnownDisplay

* valueDateTime insert ObligationIpsPopulateIfKnownDisplay
