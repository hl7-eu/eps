Profile: ObservationPregnancyOutcomeOblEuEps
Parent: ObservationPregnancyOutcomeEuEps
Id: observation-pregnancy-outcome-obl-eu-eps
Title: "Observation: Pregnancy - Outcome - Obligations (EPS)"
Description: "This profile sets the IPS obligations on the Observation: Pregnancy - Outcome (EPS) profile."

* insert SetFmmAndStatusRule (1, draft)

// ================= REFERENCES TO OBLIGATION PROFILES =================
* subject only Reference(PatientOblEuEps)

// ================= IPS OBLIGATIONS =================
* code insert ObligationIpsPopulateIfKnownDisplay

* subject insert ObligationIpsPopulateIfKnownDisplay

* subject.reference insert ObligationIpsPopulateIfKnownHandle

* effective[x] insert ObligationIpsPopulateIfKnownDisplay

* valueQuantity insert ObligationIpsPopulateIfKnownDisplay
