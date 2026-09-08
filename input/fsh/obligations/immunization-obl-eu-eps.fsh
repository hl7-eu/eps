Profile: ImmunizationOblEuEps
Parent: ImmunizationEuCore
Id: immunization-obl-eu-eps
Title: "Immunization - Obligations (EPS)"
Description: "This profile sets the IPS obligations on the EU Core Immunization profile."

// ================= IPS OBLIGATIONS =================
* status insert ObligationIpsPopulateIfKnownDisplay
* vaccineCode insert ObligationIpsPopulateIfKnownDisplay
* patient insert ObligationIpsPopulateIfKnownDisplay
* patient.reference insert ObligationIpsPopulateIfKnownHandle
* occurrence[x] insert ObligationIpsPopulateIfKnownDisplay
* occurrenceDateTime insert ObligationIpsAbleToPopulateDisplay



