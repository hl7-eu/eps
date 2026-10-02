Profile: MedicationStatementEuEps
Parent: MedicationStatementEuCore
Id: medicationStatement-eu-eps
Title:    "MedicationStatement (EPS)"
Description: """This profile constrains the MedicationStatement resource in the scope of the European Patient Summary."""
* ^experimental = false

* insert SetFmmAndStatusRule (1, draft)
* insert ImposeProfile($MedicationStatement-uv-ips, 0)

* extension[adherence].extension[code] ^short = "Type of adherence"

* medication[x] 1.. 
* medication[x] only $CodeableConcept-uv-ips or Reference(MedicationEuCore)
* subject only Reference (PatientEuEps)
  * reference 1..
*  effective[x] 1..

* dosage.route ^short = "Route of administration"
// * dosage.route from EHDSIRouteofAdministration (preferred)




