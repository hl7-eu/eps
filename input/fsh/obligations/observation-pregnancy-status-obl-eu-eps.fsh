Profile: ObservationPregnancyStatusOblEuEps
Parent: ObservationPregnancyStatusEuEps
Id: observation-pregnancy-status-obl-eu-eps
Title: "Observation: Pregnancy - Status - Obligations (EPS)"
Description: "This profile sets the IPS obligations on the Observation: Pregnancy - Status (EPS) profile."

* insert SetFmmAndStatusRule (1, draft)

// ================= REFERENCES TO OBLIGATION PROFILES =================
* subject only Reference(PatientOblEuEps)
* hasMember only Reference(ObservationPregnancyEddOblEuEps)

// ================= IPS OBLIGATIONS =================
* code insert ObligationIpsPopulateIfKnownDisplay

* subject insert ObligationIpsPopulateIfKnownDisplay

* subject.reference insert ObligationIpsPopulateIfKnownHandle

* effective[x] insert ObligationIpsPopulateIfKnownDisplay

* valueCodeableConcept insert ObligationIpsPopulateIfKnownDisplay

* hasMember insert ObligationIpsPopulateIfKnownDisplay

* hasMember.reference insert ObligationIpsPopulateIfKnownHandle
