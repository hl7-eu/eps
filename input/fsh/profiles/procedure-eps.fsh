Profile: ProcedureEuEps
Parent: ProcedureEuCore
Id: procedure-eu-eps
Title:    "Procedure (EPS)"
Description: "This profile represents the constraints applied to the Procedure resource by this guide."

* insert ImposeProfile ( $Procedure-uv-ips, 0 )  // Check if this is appropriate (see  support)


* status ^short = "The status of the procedure"
* code only CodeableConceptIPS
* subject.reference 1..
* performer.actor only Reference(PractitionerRoleEuCore or PractitionerEuCore or $Device-observer-uv-ips or PatientEuEps or RelatedPerson or  OrganizationEuCore)
* performer.onBehalfOf only Reference(OrganizationEuCore)
* reasonCode ^short = "Why the procedure was performed (code)"
* reasonReference only Reference(ConditionEuCore or Observation or ProcedureEuEps or DiagnosticReportEuCore or DocumentReference)
* outcome ^short = "Outcome of the procedure"
* complication ^short = "Complications that occurred during the procedure (code)"
* complicationDetail ^short = "Complications that occurred during the procedure (details)"
* focalDevice ^short = "Device implanted, removed or otherwise manipulated"
// * focalDevice.manipulated only Reference ( DeviceEuEps )
// * bodySite only CodeableConceptIPS
// * bodySite from SNOMEDCTBodyStructures (preferred)
// * bodySite
  // * ^definition = "Anatomical location which is the focus of the problem."
  //* extension contains LateralityQualifier named laterality 0..1
