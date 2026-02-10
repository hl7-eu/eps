Profile: AllergyIntoleranceOblEuEps
Parent: AllergyIntoleranceEuCore
Id: allergyintolerance-obl-eu-eps
Title: "AllergyIntolerance (EPS)"
Description: "This profiles set the IPS obligation on the EU core profile."

// ================= IPS OBLIGATIONS =================
* clinicalStatus insert ObligationIpsPopulateIfKnownDisplay
* type insert ObligationIpsPopulateIfKnownDisplay
* code insert ObligationIpsPopulateIfKnownDisplay
* patient insert ObligationIpsPopulateIfKnownDisplay
* patient.reference insert ObligationIpsPopulateIfKnownHandle
* onset[x] insert ObligationIpsPopulateIfKnownDisplay
* onsetDateTime insert ObligationIpsAbleToPopulateDisplay
* reaction insert ObligationIpsPopulateIfKnownDisplay
* reaction.manifestation insert ObligationIpsPopulateIfKnownDisplay
* reaction.severity insert ObligationIpsPopulateIfKnownDisplay


