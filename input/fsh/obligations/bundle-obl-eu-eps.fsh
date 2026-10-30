Profile: BundleOblEuEps
Parent: BundleEuEps
Id: bundle-obl-eu-eps
Title: "Bundle - Obligations (EPS)"
Description: "This profile sets the IPS obligations on the Bundle (EPS) profile."

* insert SetFmmAndStatusRule (1, draft)

// ================= REFERENCES TO OBLIGATION PROFILES =================
* entry[composition].resource only CompositionOblEuEps
* entry[patient].resource only PatientOblEuEps
* entry[allergyintolerance].resource only AllergyIntoleranceOblEuEps
* entry[condition].resource only ConditionOblEuEps
* entry[device].resource only DeviceOblEuEps
* entry[deviceusestatement].resource only DeviceUseStatementOblEuEps
* entry[diagnosticreport].resource only DiagnosticReportOblEuEps
* entry[flag].resource only FlagAlertOblEuEps
* entry[immunization].resource only ImmunizationOblEuEps
* entry[medication].resource only MedicationOblEuEps
* entry[medicationstatement].resource only MedicationStatementOblEuEps
* entry[practitioner].resource only PractitionerOblEuEps
* entry[practitionerrole].resource only PractitionerRoleOblEuEps
* entry[procedure].resource only ProcedureOblEuEps
* entry[observation-pregnancy-edd].resource only ObservationPregnancyEddOblEuEps
* entry[observation-pregnancy-outcome].resource only ObservationPregnancyOutcomeOblEuEps
* entry[observation-pregnancy-status].resource only ObservationPregnancyStatusOblEuEps
* entry[organization].resource only OrganizationOblEuEps

// ================= IPS OBLIGATIONS =================
* identifier insert ObligationIpsPopulateHandle

* timestamp insert ObligationIpsPopulateHandle

* entry[composition] insert ObligationIpsPopulateDisplay
