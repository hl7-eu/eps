Profile: ProcedureOblEuEps
Parent: ProcedureEuEps
Id: procedure-obl-eu-eps
Title: "Procedure - Obligations (EPS)"
Description: "This profile sets the IPS obligations on the Procedure (EPS) profile."

* insert SetFmmAndStatusRule (1, draft)

// ================= REFERENCES TO OBLIGATION PROFILES =================
* performer.actor only Reference(PractitionerRoleEuCore or PractitionerEuCore or $Device-observer-uv-ips or PatientOblEuEps or RelatedPerson or OrganizationEuCore)
* reasonReference only Reference(ConditionEuCore or Observation or ProcedureOblEuEps or DiagnosticReportEuCore or DocumentReference)

// ================= IPS OBLIGATIONS =================
* code insert ObligationIpsPopulateIfKnownDisplay

* subject insert ObligationIpsPopulateIfKnownDisplay

* subject.reference insert ObligationIpsPopulateIfKnownHandle

* performed[x] insert ObligationIpsPopulateIfKnownDisplay

* performedDateTime insert ObligationIpsAbleToPopulateDisplay
