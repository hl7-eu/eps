//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  ImmunizationEuEps
Parent:   Immunization
Id:       immunization-eu-eps
Title:    "Immunization (EPS)"
Description: """This profile constrains the Immunization resource for the purpose of the European patient summary."""

//-------------------------------------------------------------------------------------------

* ^experimental = false
* ^purpose = "This profile constrains the Immunization resource for the purpose of the European patient summary."

* insert ImposeProfile($Immunization-uv-ips, 0)

* extension contains $immunization-basedOn-r5 named basedOn 0..1
* extension[basedOn].valueReference only Reference ( ImmunizationRecommendationEuEps )


// check preadoption of R5 element
* extension contains ImmunizationAdministeredProduct named administeredProduct 0..1
* extension[administeredProduct].extension[concept]
* extension[administeredProduct].extension[reference].valueReference only Reference ( MedicationEuCore )


/* FIX THE ISSUE WITH CODEABLE REFERENCE
* extension contains $immunization-administeredProduct-r5 named administeredProduct 0..1
* extension[administeredProduct].extension[concept]
* extension[administeredProduct].extension[reference]  */
// .valueReference only Reference ( MedicationEuCore )
// * extension[administeredProduct].valueReference only Reference ( MedicationEuCore )

/* * vaccineCode.coding ^slicing.discriminator[0].type = #pattern
* vaccineCode.coding ^slicing.discriminator[0].path = "$this"
* vaccineCode.coding ^slicing.ordered = false
* vaccineCode.coding ^slicing.rules = #open
* vaccineCode.coding ^short = "Type of vaccine"
* vaccineCode.coding ^definition = "Vaccine code: it might be a code describing the kind of vaccine (e.g. ATC, ICD 11); it might be one of the IDMP identifiers; it might be a jurisdictional product code"
* vaccineCode.coding contains   atcVaccines 0..1 and sctVaccines 0..1 // and icd11Vaccines 0..1
* vaccineCode.coding[atcVaccines] from AtcCovid19Vaccines
* vaccineCode.coding[sctVaccines] from SctCovid19Vaccines */
//* vaccineCode.coding[icd11Vaccines] from Icd11Covid19Vaccines  icd11 has not been selected by SGS

* vaccineCode from http://hl7.org/fhir/uv/ips/ValueSet/vaccines-uv-ips (preferred)
// * vaccineCode.text ^short = "Name of the vaccine" // brandName

* vaccineCode ^binding.extension[+].extension[0].url = "purpose"
* vaccineCode ^binding.extension[=].extension[=].valueCode = #candidate
* vaccineCode ^binding.extension[=].extension[+].url = "valueSet"
* vaccineCode ^binding.extension[=].extension[=].valueCanonical = "http://hl7.org/fhir/uv/ips/ValueSet/vaccines-whoatc-uv-ips"
* vaccineCode ^binding.extension[=].extension[+].url = "documentation"
* vaccineCode ^binding.extension[=].extension[=].valueMarkdown = "Additional conformance binding to a vaccines value set from the WHO ATC code system for use in specific jurisdictional or other contexts where use of the ATC terminology is preferred."
* vaccineCode ^binding.extension[=].extension[+].url = "shortDoco"
* vaccineCode ^binding.extension[=].extension[=].valueString = "For when WHO ATC code system is preferred"
* vaccineCode ^binding.extension[=].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
* vaccineCode ^binding.description = "The type of vaccine for particular disease or diseases against which the patient has been immunised, or a code for absent/unknown immunization."

* patient only Reference(PatientEuEps)
* occurrence[x] only dateTime
* location only Reference(LocationEuCore)
* manufacturer ^short = "Vaccine manufacturer/MAH"
* lotNumber ^short = "Batch/lot number"

* performer 
 /*  * ^slicing.discriminator[0].type = #profile
  * ^slicing.discriminator[0].path = "$this.actor.resolve()" */
  * ^slicing.discriminator[0].type = #value
  * ^slicing.discriminator[0].path = "$this.function"
  * ^slicing.ordered = false
  * ^slicing.rules = #open

* performer contains administeringCentreOrHp 0..*
* performer[administeringCentreOrHp] ^short = "Administering centre"
* performer[administeringCentreOrHp].function = $v2-0443#AP	// "Administering Provider" code to be checked
* performer[administeringCentreOrHp].actor only Reference( OrganizationEuCore or PractitionerRoleEuCore or PractitionerEuCore )


// * protocolApplied.targetDisease 
// * protocolApplied.targetDisease 
/*
* protocolApplied.targetDisease.coding ^slicing.discriminator[0].type = #pattern
* protocolApplied.targetDisease.coding ^slicing.discriminator[0].path = "$this"
* protocolApplied.targetDisease.coding ^slicing.ordered = false
* protocolApplied.targetDisease.coding ^slicing.rules = #open
* protocolApplied.targetDisease.coding contains sctCovid19Diseases 1..1
* protocolApplied.targetDisease.coding[sctCovid19Diseases] 
* protocolApplied.targetDisease.coding[sctCovid19Diseases] from Covid19Diseases
 */
* protocolApplied.targetDisease from ConditionHdrVS (preferred) // Check Value Set
* protocolApplied.doseNumberPositiveInt ^short = "Dose Number"
* protocolApplied.seriesDosesPositiveInt ^short = "Number of doses"

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  ImmunizationRecommendationEuEps
Parent:   ImmunizationRecommendation
Id:       immunizationRecommendation-eu-eps
Title:    "ImmunizationRecommendation (EPS)"
Description: """This profile defines how to represent Immunization Recommandations for the purpose of the European patient summary."""
//-------------------------------------------------------------------------------------------

* date ^short = "When recomendation was created"
* patient only Reference (PatientEuEps)
* recommendation
  * vaccineCode from http://hl7.org/fhir/uv/ips/ValueSet/vaccines-uv-ips (preferred)
  * vaccineCode ^binding.extension[+].extension[0].url = "purpose"
  * vaccineCode ^binding.extension[=].extension[=].valueCode = #candidate
  * vaccineCode ^binding.extension[=].extension[+].url = "valueSet"
  * vaccineCode ^binding.extension[=].extension[=].valueCanonical = "http://hl7.org/fhir/uv/ips/ValueSet/vaccines-whoatc-uv-ips"
  * vaccineCode ^binding.extension[=].extension[+].url = "documentation"
  * vaccineCode ^binding.extension[=].extension[=].valueMarkdown = "Additional conformance binding to a vaccines value set from the WHO ATC code system for use in specific jurisdictional or other contexts where use of the ATC terminology is preferred."
  * vaccineCode ^binding.extension[=].extension[+].url = "shortDoco"
  * vaccineCode ^binding.extension[=].extension[=].valueString = "For when WHO ATC code system is preferred"
  * vaccineCode ^binding.extension[=].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
  * vaccineCode ^binding.description = "The type of vaccine for particular disease or diseases against which the patient has been immunised, or a code for absent/unknown immunization."


  * ^short = "Generic description of the vaccine/prophylaxis or its component(s)"
* recommendation.targetDisease from ConditionHdrVS (preferred) // Check Value Set
  * ^short = "Disease or agent that the vaccination provides protection against"
* recommendation.forecastStatus ^short = "Recommendation status"
* recommendation.dateCriterion ^slicing.discriminator[0].type = #value
* recommendation.dateCriterion ^slicing.discriminator[0].path = "code"
* recommendation.dateCriterion ^slicing.rules = #open
* recommendation.dateCriterion contains nextDose ..1
* recommendation.dateCriterion[nextDose].code = $loinc#30980-7
* recommendation.dateCriterion[nextDose].value 1..1
* recommendation.doseNumberPositiveInt ^short = "Dose Number"
* recommendation.seriesDosesPositiveInt ^short = "Number of doses"

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
