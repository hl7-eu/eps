Profile: ObservationPreviousPregnanciesStatusEuEps
Parent: Observation
Id: observation-previous-pregnancies-status-eu-eps
Title: "Observation Previous Pregnancies Status (EPS)"
Description: "This profile constrains the Observation resource to represent the overall status of previous pregnancies."

* insert SetFmmAndStatusRule (1, draft)

* code 1..1
* code only CodeableConceptIPS
* code.text = "Previous pregnancies status"
// TODO: find a proper code for this observation.
* subject 1..
* subject only Reference(PatientEuEps)
* subject.reference 1..
* effective[x] 0..1
* effective[x] only dateTime
* valueCodeableConcept only CodeableConceptIPS
* valueCodeableConcept from PregnancyStatusUvIps (preferred)
* bodySite ..0
* specimen ..0
* device ..0
* referenceRange ..0
* component ..0

// ================= IPS OBLIGATIONS =================
* code insert ObligationIpsPopulateIfKnownDisplay

* subject insert ObligationIpsPopulateIfKnownDisplay

* subject.reference insert ObligationIpsPopulateIfKnownHandle

* effective[x] insert ObligationIpsPopulateIfKnownDisplay

* valueCodeableConcept insert ObligationIpsPopulateIfKnownDisplay


