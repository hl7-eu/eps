RuleSet: CompliesWithProfile ( profile, index )
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-compliesWithProfile][{index}].valueCanonical = {profile}

RuleSet: ImposeProfile ( profile, index )
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-imposeProfile][{index}].valueCanonical = {profile}


RuleSet: ExtensionContext(path)
// copied by mCode
* ^context[+].type = #element
* ^context[=].expression = "{path}"


RuleSet: SetFmmAndStatusRule ( fmm, status )
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = {fmm}
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status].valueCode = #{status}


RuleSet: SetFmmAndStatusRuleInstance ( fmm, status )
// Rule to be used for Instances
* extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = {fmm}
* extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status].valueCode = #{status}

RuleSet: SectionComRules (short, def, code)

* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* ^extension[0].valueString = "Section"
* ^short = "{short}"
* ^definition = "{def}"
* code = {code}

RuleSet: SectionEntrySliceComRules (short, def)
* entry ^slicing.discriminator[0].type = #type
* entry ^slicing.discriminator[0].path = "$this.resolve()"
* entry ^slicing.ordered = false
* entry ^slicing.rules = #open
* entry ^short = "{short}"
* entry ^definition = "{def}"

RuleSet: SectionEntrySliceProfileComRules (short, def)
* entry ^slicing.discriminator[0].type = #profile
* entry ^slicing.discriminator[0].path = "$this.resolve()"
* entry ^slicing.ordered = false
* entry ^slicing.rules = #open
* entry ^short = "{short}"
* entry ^definition = "{def}"

RuleSet: SectionEntrySliceDefRules (name, card, short, def, profiles)
// SectionEntrySliceDefRules (flags, 0.., "Care Team", "Care Team", CareTeamEu)

* entry contains {name} {card}
* entry[{name}] {card}
* entry[{name}] ^short = "{short}"
* entry[{name}] ^definition = "{def}"
* entry[{name}] only Reference({profiles})

//--------------------------------------------
RuleSet: NoSubSectionsRules
* section ..0
* section ^mustSupport = false

RuleSet: SectionElementsRules
* code from LabStudyTypesEuVs (preferred)
* text ^short = "Text summary of the section, for human interpretation."
* entry only Reference (ObservationResultsLaboratoryEu )
* entry 1..
* section ..0

RuleSet: SectionCommonRules
* section.title 1..
* section.code 1..
* section.code only $CodeableConcept-uv-ips

RuleSet: SNOMEDCopyrightForVS
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
* ^experimental = false

RuleSet: LOINCCopyrightForVS
* ^copyright = "This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc"
* ^experimental = false

RuleSet: NPUCopyrightForVS
* ^copyright = "This material contains content from NPU Terminology (http://npu-terminology.org). NPU is copyright International Federation of Clinical Chemistry (IFCC) and International Union of Pure and Applied Chemistry (IUPAC) and is available at no cost under the license at https://www.labterm.dk/."
* ^experimental = false

RuleSet: NIBSCCopyrightForVS
* ^copyright = "This material contains content from the NIBSC Product list (https://nibsc.org/NIBSC%20Product%20List%20-%20Feb%2024.pdf). The National Institute for Biological Standards and Control part of the UK Medicines and Healthcare products Regulatory Agency (MHRA)."
* ^experimental = true

RuleSet: ObligationActorAndCode(actor, code)
* ^extension[$obligation][+].extension[code].valueCode = {code}
* ^extension[$obligation][=].extension[actor].valueCanonical = {actor}

RuleSet: ObligationElement(element)
// Used for profile level obligations. Insert after obligation code and actor
* ^extension[$obligation][=].extension[elementId].valueString = {element}
