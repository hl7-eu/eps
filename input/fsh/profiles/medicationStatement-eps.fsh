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
* medication[x] only $CodeableConcept-uv-ips or Reference(MedicationEuEps)
* subject only Reference (PatientEuEps)
  * reference 1..
*  effective[x] 1..

* dosage.route ^short = "Route of administration"
// * dosage.route from EHDSIRouteofAdministration (preferred)