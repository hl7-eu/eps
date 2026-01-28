Profile: ConsentEuEps
Parent: Consent
Id: consent-eu-eps
Title:    "Consent (Advance Directives EPS)"
Description: """This profile constrains the Consent resource for the purpose representing Advance Directives for the scope of this guide."""

* insert SetFmmAndStatusRule (1, draft)

* extension contains $note named note 0..*
* extension[note] ^short = "Comment"

* extension contains ConsentRelatedCondition named relatedCondition 0..*
* extension[relatedCondition].valueReference ^short = "Related conditions"

* status ^short = "The current state of this will."

* performer ^short = "Who is agreeing to this policy and rules"
* scope = $consentscope#adr 
* dateTime ^short = "When this Living will was created or indexed"
* category ^short = "Living will type"
* source[x] ^short = "Living will document"
// ==> add value set


