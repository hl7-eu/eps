Profile: DiagnosticReportOblEuEps
Parent: DiagnosticReportEuEps
Id: diagnosticreport-obl-eu-eps
Title: "DiagnosticReport - Obligations (EPS)"
Description: "This profile sets the IPS obligations on the DiagnosticReport (EPS) profile."

* insert SetFmmAndStatusRule (1, draft)

// ================= IPS OBLIGATIONS =================
* code insert ObligationIpsPopulateIfKnownDisplay

* subject insert ObligationIpsPopulateIfKnownDisplay

* subject.reference insert ObligationIpsPopulateIfKnownHandle

* effective[x] insert ObligationIpsPopulateIfKnownDisplay

* effectiveDateTime insert ObligationIpsAbleToPopulateDisplay

* performer insert ObligationIpsPopulateIfKnownDisplay

* result[observation-results] insert ObligationIpsPopulateIfKnownDisplay
