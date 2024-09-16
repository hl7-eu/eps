Profile: AllergyIntoleranceEpsEu
Parent: $AllergyIntolerance-uv-ips
Id: AllergyIntolerance-eu-eps
Title:    "Allergy Intolerance (EU PS)"
Description: """This profile constrains the AllergyIntolerance resource for the purpose of the European patient summary."""
* ^experimental = false
* ^purpose = "This profile constrains the AllergyIntolerance resource for the purpose of the European patient summary."
* extension[abatement-datetime] ^short = "End date"
* clinicalStatus ^short = "Current allergy or Intolerance status"
* type ^short = "Type of propensity"

/* * code from EHDSIAllergyCode (preferred) */

* verificationStatus ^short = "Certainty"
* criticality ^short = "Criticality"

/* * patient only Reference(PatientEpsEu) */


// * onset[x] only dateTime // is this needed ?
* onsetDateTime ^short = "Onset date"

/* * reaction.substance from EHDSIAllergens  (preferred) */

/* * reaction.manifestation from EHDSIReactionAllergy (preferred) */

* reaction.severity ^short = "Severity"

