Profile: PatientEuEps
Parent: $patient-eu-core
Id: patient-eu-eps
Title:    "Patient (EPS)"
Description: """This profile defines how to represent a human Patient in HL7 FHIR for the purpose of this guide."""

* insert SetFmmAndStatusRule (1, draft)
* insert ImposeProfile($Patient-uv-ips, 0)

/* * name ^short = "Patient Name" */

* name obeys ips-pat-1
* generalPractitioner only Reference($organization-eu-core or $practitionerRole-eu-core or PractitionerEuCore) 


