//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  MedicationAdministrationEuEps
Parent:   MedicationAdministration
Id:       medicationAdministration-eu-eps
Title:    "MedicationAdministration (EPS)"
Description: "This profile constrains the MedicationAdministration resource for the purpose of this guide, adapted from the MPD work."
//-------------------------------------------------------------------------------------------

* insert SetFmmAndStatusRule (1, draft)

* identifier 
  * ^short = "Medication Administration Identifier"
// * status ^short = "Current state of the dispensation"
* subject only Reference( PatientEuCore )
* medication[x] only CodeableConcept or Reference(MedicationEuEps)

// * medicationReference only Reference(MedicationEuEps)

