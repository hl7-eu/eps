Profile: ImmunizationOblEuEps
Parent: ImmunizationEuCore
Id: immunization-obl-eu-eps
Title: "Immunization Obligations (EPS)"
Description: "IPS obligations extracted from the Immunization profile."

// ================= IPS OBLIGATIONS =================
* status insert ObligationIpsPopulateIfKnownDisplay
* vaccineCode insert ObligationIpsPopulateIfKnownDisplay
* patient insert ObligationIpsPopulateIfKnownDisplay
* patient.reference insert ObligationIpsPopulateIfKnownHandle
* occurrence[x] insert ObligationIpsPopulateIfKnownDisplay
* occurrenceDateTime insert ObligationIpsAbleToPopulateDisplay



