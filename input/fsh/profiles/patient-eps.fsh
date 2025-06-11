Profile: PatientEuEps
Parent: $patient-eu-core
Id: patient-eu-eps
Title:    "Patient (EU PS)"
Description: """This profile defines how to represent a human Patient in HL7 FHIR for the purpose of this guide.
When the ips-pat-1 invariant is satisfied \(Patient.name.given, Patient.name.family or Patient.name.text SHALL be present\) then this profile complies with the IPS patient profile."""

* insert SetFmmAndStatusRule (1, draft)
* insert ImposeProfile($Patient-uv-ips, 0)

/* * name ^short = "Patient Name" */

/* * birthDate 1.. // MS according to IPS
* birthDate contains $data-absent-reason named dob-absent-reason 0..*
    * extension[dob-absent-reason] ^short = "Reason for not providing the Date of Birth."
    * extension[dob-absent-reason] ^definition = "Reason for not providing the Date of Birth." */

* generalPractitioner only Reference($organization-eu-core or $practitionerRole-eu-core or PractitionerEuCore) 


