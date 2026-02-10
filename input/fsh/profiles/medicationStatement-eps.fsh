Profile: MedicationStatementEuEps
Parent: MedicationStatementEuCore
Id: MedicationStatement-eu-eps
Title:    "Medication Statement (EPS)"
Description: """This profile constrains the MedicationStatement resource for the purpose of the European patient summary."""
* ^experimental = false
* ^purpose = "This profile constrains the MedicationStatement resource for the purpose of the European patient summary."

* insert SetFmmAndStatusRule (1, draft)
* insert ImposeProfile($MedicationStatement-uv-ips, 0)

* medication[x] 1.. 
* medication[x] only $CodeableConcept-uv-ips or Reference(MedicationEuCore)
* subject only Reference (PatientEuEps)
  * reference 1..
*  effective[x] 1..

* dosage.route ^short = "Route of administration"
// * dosage.route from EHDSIRouteofAdministration (preferred)

// ================= IPS OBLIGATIONS =================
* medication[x] insert ObligationIpsPopulateIfKnownDisplay

* subject insert ObligationIpsPopulateIfKnownDisplay

* subject.reference insert ObligationIpsPopulateIfKnownHandle

* effective[x] insert ObligationIpsPopulateIfKnownDisplay

* effectiveDateTime insert ObligationIpsAbleToPopulateDisplay

* dosage insert ObligationIpsPopulateIfKnownDisplay

* dosage.text insert ObligationIpsPopulateIfKnownDisplay

* dosage.timing insert ObligationIpsPopulateIfKnownDisplay



