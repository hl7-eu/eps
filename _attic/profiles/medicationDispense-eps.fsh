//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  MedicationDispenseEuEps
Parent:   MedicationDispense
Id:       medicationDispense-eu-eps
Title:    "MedicationDispense (EPS)"
Description: "This profile constrains the MedicationDispense resource for the purpose of this guide, adapted from the MPD work."
//-------------------------------------------------------------------------------------------

* insert SetFmmAndStatusRule (1, draft)

* medication[x] only CodeableConcept or Reference(MedicationEuCore)

// * medicationReference only Reference(MedicationEuCore)


* identifier 
  * ^short = "Dispensation/dispensed item ID"
  * ^comment = "It is the dispensation ID if the presciption includes only one prescribed item"
* status ^short = "Current state of the dispensation"
* subject only Reference( PatientEuEps )

* receiver // MS // receiver
* performer.actor 1..1

* authorizingPrescription only Reference(MedicationRequestEuCore)
* quantity 1..1 // MS // dispensedQuantity 1
* whenHandedOver 1..1 // MS // timeOfDispensation 1


