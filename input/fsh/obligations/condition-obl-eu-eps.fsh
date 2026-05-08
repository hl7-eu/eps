Profile: ConditionOblEuEps
Parent: ConditionEuCore
Id: condition-obl-eu-eps
Title: "Condition - Obligations (EPS)"
Description: "This profiles set the IPS obligation on the EPS  Condition profile."

// ================= IPS OBLIGATIONS =================
* clinicalStatus insert ObligationIpsPopulateIfKnownDisplay
* category insert ObligationIpsPopulateIfKnownDisplay
* severity insert ObligationIpsPopulateIfKnownDisplay
* code insert ObligationIpsPopulateIfKnownDisplay
* subject insert ObligationIpsPopulateIfKnownDisplay
* subject.reference insert ObligationIpsPopulateIfKnownHandle
* onset[x] insert ObligationIpsPopulateIfKnownDisplay
* onsetDateTime insert ObligationIpsAbleToPopulateDisplay



