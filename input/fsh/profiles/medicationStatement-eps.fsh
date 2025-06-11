Profile: MedicationStatementEuEps
Parent: $MedicationStatement-uv-ips
Id: MedicationStatement-eu-eps
Title:    "Medication Statement (EPS)"
Description: """This profile constrains the MedicationStatement resource for the purpose of the European patient summary."""
* ^experimental = false
* ^purpose = "This profile constrains the MedicationStatement resource for the purpose of the European patient summary."
/* * extension contains $medicationStatement-dosage-r5 named dosage 0..*
* extension[dosage].extension[route].valueCodeableConcept from EHDSIRouteofAdministration (preferred)
 */
* medication[x] only $CodeableConcept-uv-ips or Reference(MedicationEuEps)
* category ^short = "Type of medication statement."
* subject only Reference (PatientEuEps)

// * reasonCode from EHDSICondition (preferred)
* reasonCode ^short = "Reason or indication for this prescription"
* reasonReference ^short = "Condition or observation that supports this medication" // only Reference(ConditionEuEps or Observation or DiagnosticReport) // Only for HDR ?
//------
* dosage ^short =  	"How medication is/was taken or should be taken"
* dosage.route ^short = "Route of administration"
// * dosage.route from EHDSIRouteofAdministration (preferred)