Profile: ImmunizationOblEuEps
Parent: ImmunizationEuCore
Id: immunization-obl-eu-eps
Title: "Immunization - Obligations (EPS)"
Description: "This profiles set the IPS obligation on the EPS  Immunization profile."

// ================= IPS OBLIGATIONS =================
* status insert ObligationIpsPopulateIfKnownDisplay
* vaccineCode insert ObligationIpsPopulateIfKnownDisplay
* patient insert ObligationIpsPopulateIfKnownDisplay
* patient.reference insert ObligationIpsPopulateIfKnownHandle
* occurrence[x] insert ObligationIpsPopulateIfKnownDisplay
* occurrenceDateTime insert ObligationIpsAbleToPopulateDisplay



