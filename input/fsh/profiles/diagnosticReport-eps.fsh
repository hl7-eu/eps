Profile: DiagnosticReportEuEps
Parent: DiagnosticReportEuCore
Id: diagnosticReport-eu-eps
Title: "DiagnosticReport (EPS)"
Description: "This profile constrains the DiagnosticReport resource in the scope of the European Patient Summary."

* insert SetFmmAndStatusRule (1, draft)
* insert ImposeProfile ( $DiagnosticReport-uv-ips, 0 )

* subject only Reference(PatientEuCore or Group)
* subject.reference 1..1
* effective[x] 1..1

* result ^slicing.discriminator[0].type = #profile
* result ^slicing.discriminator[0].path = "resolve()"
* result ^slicing.ordered = false
* result ^slicing.rules = #open
* result contains observation-results 0..*
* result[observation-results] only Reference(MedicalTestResultEuCore)
* effective[x] 1..



