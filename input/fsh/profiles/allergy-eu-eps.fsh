Profile: AllergyIntoleranceEuEps
Parent: $AllergyIntolerance-uv-ips
Id: allergyIntolerance-eu-eps
Title:    "Allergy Intolerance (EPS)"
Description: """This profile constrains the AllergyIntolerance resource for the purpose of the European patient summary."""
* ^experimental = false
* ^purpose = "This profile constrains the AllergyIntolerance resource for the purpose of the European patient summary."

* insert SetFmmAndStatusRule (1, draft)
* insert ImposeProfile($AllergyIntolerance-uv-ips, 0)

// * extension contains $allergyintolerance-abatement named abatement 0..1
* extension[abatement].valueDateTime ^short = "End date"

* clinicalStatus only CodeableConceptIPS
* verificationStatus only CodeableConceptIPS
* verificationStatus ^short = "Certainty"


* clinicalStatus ^short = "Current allergy or Intolerance status"
* type ^short = "Type of propensity"
* code 1..1
* code only CodeableConceptIPS
* code from $allergy-intolerance-uv-ips (preferred)
/* * code from EHDSIAllergyCode (preferred) */

* code ^binding.extension[+].extension[+].url = "purpose"
* code ^binding.extension[=].extension[=].valueCode = #candidate
// * code ^binding.extension[+].extension[+].url = "key"
// * code ^binding.extension[=].extension[=].valueId = "96948958-8a49-472e-91ee-967b8545d27c"
* code ^binding.extension[=].extension[+].url = "valueSet"
* code ^binding.extension[=].extension[=].valueCanonical = Canonical(AllergensHdrVS)
* code ^binding.extension[=].extension[+].url = "documentation"
* code ^binding.extension[=].extension[=].valueMarkdown = "Type of the substance/product for MyHealth@EU"
* code ^binding.extension[=].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
* code ^binding.description = "Type of the substance/product expected to be used in MyHealth@EU"


* code ^binding.extension[+].extension[+].url = "purpose"
* code ^binding.extension[=].extension[=].valueCode = #candidate
// * code ^binding.extension[+].extension[+].url = "key"
// * code ^binding.extension[=].extension[=].valueId = "7dea14b1-5620-41b8-bb24-536541cdee0b"
* code ^binding.extension[=].extension[+].url = "valueSet"
* code ^binding.extension[=].extension[=].valueCanonical = "http://hl7.org/fhir/uv/ips/ValueSet/whoatc-uv-ips"
* code ^binding.extension[=].extension[+].url = "documentation"
* code ^binding.extension[=].extension[=].valueMarkdown = "Type of the substance/product, allergy or intolerance condition."
* code ^binding.extension[=].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
* code ^binding.description = "Type of the substance/product, allergy or intolerance condition or a code for absent/unknown allergy."

* criticality ^short = "Criticality"

* patient.reference 1..
* patient only Reference(PatientEuEps)

* onsetDateTime ^short = "Onset date"

* reaction.substance from AllergensHdrVS  (preferred)

/* * reaction.manifestation from EHDSIReactionAllergy (preferred) */

* reaction.manifestation from $allergy-reaction-uv-ips (preferred)

* reaction.manifestation ^binding.extension[+].extension[+].url = "purpose"
* reaction.manifestation ^binding.extension[=].extension[=].valueCode = #candidate
// * reaction.manifestation ^binding.extension[+].extension[+].url = "key"
// * reaction.manifestation ^binding.extension[=].extension[=].valueId = "b32b88b4-89d9-4744-b356-dff033c16f82"
* reaction.manifestation ^binding.extension[=].extension[+].url = "valueSet"
* reaction.manifestation ^binding.extension[=].extension[=].valueCanonical = $eHDSIReactionAllergy
* reaction.manifestation ^binding.extension[=].extension[+].url = "documentation"
* reaction.manifestation ^binding.extension[=].extension[=].valueMarkdown = "Type of reaction (MyHealth@EU)"
* reaction.manifestation ^binding.extension[=].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
* reaction.manifestation ^binding.description = "Type of allergy or intolerance reaction expected to be used in MyHealth@EU"

* reaction.severity ^short = "Reaction severity"