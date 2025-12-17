Profile: CompositionEuEps
Parent: Composition
Id: composition-eu-eps
Title: "Composition (EPS)"
Description: "Clinical document used to represent a Patient Summary for the scope of this project."
* . ^short = "Patient Summary composition"
* . ^definition = "Patient Summary composition. \r\nA composition is a set of healthcare-related information that is assembled together into a single logical document that provides a single coherent statement of meaning, establishes its own context and that has clinical attestation with regard to who is making the statement. \r\nWhile a Composition defines the structure, it does not actually contain the content: rather the full content of a document is contained in a Bundle, of which the Composition is the first resource contained."

* insert SetFmmAndStatusRule (1, draft)
* insert ImposeProfile($Composition-uv-ips, 0)

//================================
// Verify if all the IPS rules are reported in the profile
//================================

/*=========================
only minimal changes to allow the compilation of the profile have been done.
Please review and complete the implementation of the IPS constraints, including definiton and section codes
=============== */

* extension contains $composition.version-r5  named version 0..1
* extension[version] ^short = "Business version"

* identifier ^short = "PS business identifier"
* status ^short = "PS status"
* type only http://hl7.org/fhir/uv/ips/StructureDefinition/CodeableConcept-uv-ips
* type ^short = "Kind of composition (\"Patient Summary\")"
* type ^definition = "Specifies that this composition refer to a Patient Summary"
// * type = http://loinc.org#34105-7  
* subject only Reference(PatientEuEps)
* subject 1..1
* subject ^definition = "Who or what the composition is about. \r\nIn general a composition can be about a person, (patient or healthcare practitioner), a device (e.g. a machine) or even a group of subjects (such as a document about a herd of livestock, or a set of patients that share a common exposure).\r\nFor the PS the subject is always the patient."
// * encounter only Reference ( EncounterEuEps )
* date ^short = "PS date"
* author only Reference ($practitioner-eu-core or $practitionerRole-eu-core or Device or $organization-eu-core or PatientEuCore or RelatedPerson)
  * ^short = "Who and/or what authored the Patient Summary"
  * ^definition = "Identifies who is responsible for the information in the Patient Summary, not necessarily who typed it in."

* title ^short = "Patient Summary"
* title ^definition = "Official human-readable label for the composition.\r\n\r\nFor this document should be \"Patient Summary\" or any equivalent translation"
* attester.mode ^short = "The type of attestation"
* attester.time ^short = "When the composition was attested"
* attester.party only Reference (PractitionerEuCore or PractitionerRoleEuCore or OrganizationEuCore or PatientEuEps or RelatedPerson)
* custodian only Reference (OrganizationEuCore)
  * ^short = "Custodian of the Patient Summary"
  * ^definition = "Identifies the organization that is responsible for ongoing maintenance of the Patient Summary, and ensures that it remains available for access by other parties."



* section ^slicing.discriminator[0].type = #value
* section ^slicing.discriminator[=].path = "code"
* section ^slicing.ordered = false
* section ^slicing.rules = #open
* section ^short = "Sections composing the IPS"
* section ^definition = "The root of the sections that make up the IPS composition."
* section.extension contains $note named section-note 0..*
* section.extension[section-note] ^short = "Additional notes that apply to the section (but not to specific resource)."
* section.extension[section-note] ^definition = "Additional notes that apply to the section (but not to specific resource)."
* section.title 1..1
* section.code 1..1
* section.text 1..

* section.section ..0
* section contains
    sectionProblems 1..1  and
    sectionAllergies 1..1  and
    sectionMedications 1..1  and
    sectionImmunizations 0..1  and
    sectionResults 0..1  and
    sectionProceduresHx 0..1  and
    sectionMedicalDevices 0..1  and
    sectionAdvanceDirectives 0..1  and
    sectionAlerts 0..1  and
    sectionFunctionalStatus 0..1  and
    sectionPastProblems 0..1  and
    sectionPregnancyHx 0..1  and
    sectionPatientStory 0..1  and
    sectionPlanOfCare 0..1  and
    sectionSocialHistory 0..1  and
    sectionVitalSigns 0..1 
   // MISSING TO BE ADDED and sectionTravelHx 0..1

/* * section 1..
* section ^slicing.discriminator[0].type = #pattern
* section ^slicing.discriminator[0].path = "code"
* section ^slicing.ordered = false
* section ^slicing.rules = #open
* section ^short = "Sections composing the Patient Summary"
* section ^definition = "The root of the sections that make up the Patient Summary composition." */

* section[sectionMedications]
  * insert SectionComRules ( 
      Medication Summary, 
      The medication summary section contains a description of the patient's medications as part of the patient summary, 
      http://loinc.org#10160-0)
  * entry only Reference (MedicationStatementEuEps or MedicationRequestEuEps or MedicationAdministrationEuEps or MedicationDispenseEuEps) 
  * insert SectionEntrySliceComRules(medicationStatementOrRequest, medicationStatementOrRequest)
  // entry slices
  * insert SectionEntrySliceDefRules (medicationStatementOrRequest, 0.. , medicationStatementOrRequest , medicationStatementOrRequest , MedicationStatementEuEps or MedicationRequestEuEps)
  
* section[sectionAllergies]
  * insert SectionComRules ( 
      Allergies and Other Adverse Reactions, 
      Allergy section description, 
      http://loinc.org#48765-2)
  * entry only Reference(AllergyIntolerance or DocumentReference)  
  * insert SectionEntrySliceComRules(allergyOrIntolerance, allergyOrIntolerance)
  // entry slices
  * insert SectionEntrySliceDefRules (allergyOrIntolerance, 0.. , Relevant allergies or intolerances for that patient. , Description, AllergyIntoleranceEuCore)

/*   * ^short = "Allergies and Other Adverse Reactions"
  * ^definition = """The adverse and other adverse reactions section contains a narrative description of the substance intolerances and the associated adverse reactions suffered by the patient. It includes entries for intolerances and adverse reactions as described in the entry.

The field \"alerts\" was originally defined to include all the important and objective medical information that should be highlighted (such as allergies, thrombosis risk, immune deficit …etc). When defining the content only allergies and intolerance to drugs appear to be the common understanding and the easiest to be transferred. A lot of surveys are being made in different countries (not only in Europe) to make a more evidence-based definition of what should represented and should not by the concept “alerts”, hence not enough information could be provided to take a further decision. As eHDSI\’s intention is not to duplicate information, this shall not be repeated. Alerts are difficult to represent since they are contextual. Alerts may be represented as severe or life-threatening allergies or other adverse reactions. Another area are certain selected procedures and implanted devices. The section Allergies and Other Adverse Reactions contains the medical alerts as well, based on the severity, and their representation becomes a Country B choice.""" */
  * entry[allergyOrIntolerance] only Reference (AllergyIntoleranceEuCore)

* section contains sectionAlert ..1
* section[sectionAlert]
  * insert SectionComRules ( 
      Alerts Section, 
      Information used to warn or call to a state of preparedness. Information flagged or intended to raise awareness of a potential danger to from the subject of the IPS or to from another individual or awareness of a potential obstacle to care., 
      http://loinc.org#104605-1)
  * entry 0..
  * insert SectionEntrySliceComRules(Alerts, Alerts)
  // entry slices
  * insert SectionEntrySliceDefRules (flag, 0.. , Flags , Flags , FlagEuCore)

* section[sectionProblems]
  * insert SectionComRules ( 
      Active Problems, 
      Active Problems Section description, 
      http://loinc.org#11450-4)
  
  * entry only Reference(Condition or DocumentReference)
  /* 
  * ^short = "Active Problems"
  * ^definition = """The active problem section contains a narrative description of the conditions currently being monitored for the patient. It includes entries for patient conditions as described in the Entry.
This section can also be used to hold the Medical Alert information (other alerts not included in allergies). Alerts, of all types are to be considered for the next iteration of the specifications.""" */
  * insert SectionEntrySliceComRules(Active Problems, DESC Problems)
  // entry slices
  * insert SectionEntrySliceDefRules (problem, 0.. , Clinical problems or conditions currently being monitored for the patient. , It lists and describes clinical problems or conditions currently being monitored for the patient.  This entry shall be used to document that no information about problems is available\, or that no relevant problems are known. , ConditionEuEps)

  * entry[problem] only Reference (ConditionEuEps)


* section[sectionProceduresHx]
  * insert SectionComRules ( 
      History of Procedures, 
      DESC Procedures, 
      http://loinc.org#47519-4)
  
  * entry only Reference(Procedure or DocumentReference)

  * insert SectionEntrySliceComRules(Patient past procedures pertinent to the scope of this document., DESC Procedures)
  // entry slices
  * insert SectionEntrySliceDefRules (procedure, 0.. , Clinical problems or conditions currently being monitored for the patient. , It lists and describes clinical problems or conditions currently being monitored for the patient.  This entry shall be used to document that no information about problems is available\, or that no relevant problems are known. , ProcedureEuCore)


* section[sectionImmunizations]

  * insert SectionComRules (Immunizations, The immunizations section contains a narrative description of the immunizations administered to the patient in the past. It includes entries for medication administration as described in related profiles, http://loinc.org#11369-6)
 
  * insert SectionEntrySliceComRules(Patient's immunization status and pertinent history., It defines the patient's current immunization status and pertinent immunization history.\r\nThe primary use case for the Immunization Section is to enable communication of a patient's immunization status.\r\nIt may contain the entire immunization history that is relevant to the period of time being summarized. This entry shall be used to document that no information about immunizations is available\, or that no immunizations are known.)

  * insert SectionEntrySliceDefRules (immunization, 0.. , SHORT Immunization , DESCR Immunizartion , ImmunizationEuCore) 
  
  // ImmunizationEuEps)

/*   * ^short = "Immunizations"
  * ^definition = """The immunizations section contains a narrative description of the immunizations administered to the patient in the past. It includes entries for medication administration as described in related profiles.""" 
  * entry[immunization] only Reference (ImmunizationEuEps)*/

* section[sectionMedicalDevices] 
  * insert SectionComRules (Medical Devices, The medical devices section contains a narrative description of the medical devices used by the patient in the past. It includes entries for device use as described in related profiles, http://loinc.org#46264-8)

  * insert SectionEntrySliceComRules(Med Device short,Med devices Description)

  * insert SectionEntrySliceDefRules (deviceStatement, 0.. , SHORT deviceStatement , DESCR deviceStatement , DeviceUseStatementEuEps)

/*   * ^short = "Medical Devices"
  * ^definition = """The medical devices section contains narrative text describing the patient history of medical device use.
For the eHDSI Patient Summary this is a mandatory section and shall be used to record the Medical Devices and Implants. Each device shall be described using the specifed entry.""" 
  * entry[deviceStatement] only Reference (DeviceUseStatementEuEps) */

* section[sectionResults]
  * ^short = "Coded Results"
  // * ^definition = """In eHDSI this section is used only for the purpose of providing the results for the blood group."""
  // consider to add specialized profiles for results
  /* * entry[results-observation] only Reference (ObservationBloodGroupEuEps or ObservationResultsEuEps) */

* section[sectionVitalSigns]
  * insert SectionComRules (Vital Signs, The vital signs section contains a narrative description of the patient's vital signs. It includes entries for vital sign measurements as described in related profiles, http://loinc.org#8716-3)
  * insert SectionEntrySliceComRules(Vital Signs short,Vital Signs Description)
  * insert SectionEntrySliceDefRules (vitalSign, 0.. , SHORT vitalSign , DESCR vitalSign , $vitalsigns)
/*   * ^short = "Vital Signs"
  * ^definition = """The vital signs section contains coded measurement results of a patient\’s vital signs."""
  * entry[vitalSign] */

* section[sectionPastProblems]
  * insert SectionComRules (Past Problems, The past problems section contains a narrative description of the patient's past problems. It includes entries for problems as described in related profiles, http://loinc.org#8716-3)
  * insert SectionEntrySliceComRules(Past Problems short,Past Problems Description)
  * insert SectionEntrySliceDefRules (pastProblem, 0.. , SHORT pastProblem , DESCR pastProblem , ConditionEuEps)
/*   * ^short = "History Of Past Illness"
  * ^definition = """The History of Past Illness section contains a narrative description of the conditions the patient suffered in the past. It includes entries for problems as described in the Entry."""
  * entry[pastProblem] only Reference (ConditionEuEps) */

* section[sectionFunctionalStatus]
  * insert SectionComRules (Functional Status, The functional status section contains a narrative description of the patient's functional status. It includes entries for functional status  as described in related profiles, http://loinc.org#47420-5)
  * insert SectionEntrySliceComRules(Functional Status short,Functional Status Description)
  * insert SectionEntrySliceDefRules (functionalStatus, 0.. , SHORT functionalStatus , DESCR functionalStatus , ConditionEuEps)
/*   * ^short = "Functional Status"
  * ^definition = """The functional status section contains a narrative description of capability of the patient to perform acts of daily living."""
  * entry[disability] only Reference (ConditionEuEps) */

* section[sectionPlanOfCare]
  * ^short = "Health Maintenance Care Plan"
  * ^definition = """The health maintenance care plan section contains a description of the expectations for wellness care including proposals, goals, and order requests for monitoring, tracking, or improving the lifetime condition of the patient with goals of educating the patient on how to reduce the modifiable risks of the patient\’s genetic, behavioral, and environmental pre-conditions and otherwise optimizing lifetime outcomes."""

* section[sectionSocialHistory]
  * ^short = "Social History"
  * ^definition = """The social history section contains a narrative description of the person\’s beliefs, home life, community life, work life, hobbies, and risky habits. It includes Social History Observations."""
  // * insert SectionEntrySlicePerProfileRules (SLicing , eHDSI Social History Observation)
  
  /* 
  * insert SectionEntrySliceDefRules (eHDSISocialHistory, 0.., eHDSI Social History Observation, eHDSI Social History Observation, ObservationSocialHistoryEuEps)
   */

* section[sectionPregnancyHx]
  * insert SectionComRules (Pregnancy History, The pregnancy history section contains a narrative description of the patient's pregnancy history. It includes entries for pregnancy history as described in related profiles, http://loinc.org#10162-6)
  * insert SectionEntrySliceComRules(Pregnancy History short,Pregnancy History Description)
  * insert SectionEntrySliceDefRules (pregnancyStatus, 0.. , Pregnancy status , DESCR Pregnancy status , ObservationPregnancyStatusUvIps)
  * insert SectionEntrySliceDefRules (pregnancyOutcome, 0.. , Pregnancy outcome , DESCR Pregnancy outcome , ObservationPregnancyOutcomeUvIps)
/*   * ^short = "Pregnancy History"
  * ^definition = """The pregnancy history section contains coded entries describing the patient history of pregnancies.
This section is used in eHDSI only for the purpose of providing the Expected Date of Delivery, when applicable, not the full history of pregnancies."""
  * title ^short = "Pregnancy Section title"
  * entry[pregnancyStatus] ^short = "Pregnancy status"
  * entry[pregnancyOutcome] ^short = "Pregnancy outcome" */
  
// -------------------------------------
* section[sectionAdvanceDirectives]
  * insert SectionComRules (
    Advance Directives Section,
    The advance directives section contains a narrative description of patient's advance directive.,
    $loinc#42348-3 )  // 	Advance directives
  * entry only Reference(ConsentEuEps or DocumentReference) 

* section contains sectionTravelHx ..1
* section[sectionTravelHx]
  * insert SectionComRules ( 
        Travel History Section, 
        This Section describes the travel history relevant for the Patient Summary\, e.g.recent travel in a region of high prevalence of a specific infectious disease like Malaria,
        $loinc#10182-4 ) // History of Travel Narrative
  * entry 0..*
  * entry only Reference(ObservationTravelEuHdr)
  * section ..0

* section contains sectionPatientHx ..1
* section[sectionPatientHx]
  * insert SectionComRules ( 
    Patient History Section,
    This section may provide both synthetic anamnesis \,e.g. description of phases of the pathology as a chronological summary of clustered clinical information\, and anecdotal evidence that clinicians can collect from the patient\, and can read in a narrative form.,
    http://loinc.org#11329-0 )



//============== INVARIANTS ===============
Invariant: ips-comp-1
Description: "Either section.entry or emptyReason are present"
* severity = #error
* expression = "(entry.reference.exists() or emptyReason.exists())"
* xpath = "(/f:entry.reference and not /f:emptyReason) or (not(/f:emptyReason) and /f:entry.reference)"