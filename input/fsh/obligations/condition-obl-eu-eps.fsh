Profile: ConditionOblEuEps
Parent: ConditionEuCore
Id: condition-obl-eu-eps
Title: "Condition - Obligations (EPS)"
Description: "This profile sets the IPS obligations on the EU Core Condition profile."

// ================= IPS OBLIGATIONS =================
* clinicalStatus insert ObligationIpsPopulateIfKnownDisplay
* category insert ObligationIpsPopulateIfKnownDisplay
* severity insert ObligationIpsPopulateIfKnownDisplay
* code insert ObligationIpsPopulateIfKnownDisplay
* subject insert ObligationIpsPopulateIfKnownDisplay
* subject.reference insert ObligationIpsPopulateIfKnownHandle
* onset[x] insert ObligationIpsPopulateIfKnownDisplay
* onsetDateTime insert ObligationIpsAbleToPopulateDisplay



