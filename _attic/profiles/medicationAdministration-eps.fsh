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
* subject only Reference( PatientEuEps )
* medication[x] only CodeableConcept or Reference(MedicationEuCore)

// * medicationReference only Reference(MedicationEuCore)

