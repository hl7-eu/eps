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
* section.code only http://hl7.org/fhir/uv/ips/StructureDefinition/CodeableConcept-uv-ips
* section.text 1..
* section.text only Narrative
* section obeys ips-comp-1

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
    sectionAlert 0..1  and
    sectionFunctionalStatus 0..1  and
    sectionPastProblems 0..1  and
    sectionPregnancyHx 0..1  and
    sectionPatientStory 0..1  and
    sectionPlanOfCare 0..1  and
    sectionSocialHistory 0..1  and
    sectionVitalSigns 0..1 
   // MISSING TO BE ADDED and sectionTravelHx 0..1

// ==  EPS Problem Section ==

* section[sectionProblems]
  * insert SectionComRules ( 
      EPS Problems Section, 
      The EPS problem section lists and describes clinical problems or conditions currently being monitored for the patient., 
      http://loinc.org#11450-4)
  
  * entry only Reference(Condition or DocumentReference)
  * insert SectionEntrySliceComRules(Clinical problems or conditions currently being monitored for the patient., It lists and describes clinical problems or conditions currently being monitored for the patient. This entry shall be used to document that no information about problems is available\, or that no relevant problems are known.)
  // entry slices
  * insert SectionEntrySliceDefRules (problem, 0.. , Clinical problems or conditions currently being monitored for the patient. , It lists and describes clinical problems or conditions currently being monitored for the patient.  This entry shall be used to document that no information about problems is available\, or that no relevant problems are known. , ConditionEuCore)

  * entry[problem] only Reference (ConditionEuCore)

// == EPS Allergies and Intolerances Section  ==

* section[sectionAllergies]
  * insert SectionComRules ( 
     	EPS Allergies and Intolerances Section, 
      This section documents the relevant allergies or intolerances for that patient\, describing the kind of reaction - e.g. rash\, anaphylaxis\,.. - preferably the agents that cause it; and optionally the criticality and the certainty of the allergy. At a minimum\, it should list currently active and any relevant historical allergies and adverse reactions. If no information about allergies is available\, or if no allergies are known this should be clearly documented in the section., 
      http://loinc.org#48765-2)

  * entry only Reference(AllergyIntolerance or DocumentReference)  
  * insert SectionEntrySliceComRules(allergyOrIntolerance, allergyOrIntolerance)
  // entry slices
  * insert SectionEntrySliceDefRules (allergyOrIntolerance, 0.. , 
  Relevant allergies or intolerances for that patient.,
  It lists the relevant allergies or intolerances for that patient\, describing the kind of reaction - e.g. rash\, anaphylaxis\,.. - preferably the agents that cause it; and optionally the criticality and the certainty of the allergy. At a minimum\, it should list currently active and any relevant historical allergies and adverse reactions. If no information about allergies is available\, or if no allergies are known this should be clearly documented in the section., 
  AllergyIntoleranceEuCore)
  * entry[allergyOrIntolerance] only Reference (AllergyIntoleranceEuCore)


// === EPS Medication Summary Section ===

* section[sectionMedications]
  * insert SectionComRules ( 
      EPS Medication Summary Section, 
      The medication summary section contains a description of the patient's medications relevant for the scope of the patient summary. The actual content could depend on the jurisdiction\, it could report:
        * the currently active medications;
        * the current and past medications considered relevant by the authoring GP;
        * the patient prescriptions or dispensations automatically extracted by a regional or a national EHR.
      In those cases medications are documented in the Patient Summary as medication statements or medication requests. This section requires either an entry indicating the subject is known not to be on any relevant medication; either an entry indicating that no information is available about medications; or entries summarizing the subject's relevant medications., 
      http://loinc.org#10160-0)

  * entry only Reference (MedicationStatementEuCore or MedicationRequestEuEps or MedicationAdministrationEuEps or MedicationDispenseEuEps) 
  * insert SectionEntrySliceComRules(medicationStatementOrRequest, medicationStatementOrRequest)
  // entry slices
  * insert SectionEntrySliceDefRules (medicationStatementOrRequest, 0.. ,
  Medications relevant for the scope of the patient summary ,
  This list the medications relevant for the scope of the patient summary or it is used to indicate that the subject is known not to be on any relevant medication; either that no information is available about medications. ,
  MedicationStatementEuCore) // TO BE CHEKED IS OK ONNLY MEDICATIONSTATEMENTs ?
  

// === EPS Immunizations Section ===

* section[sectionImmunizations]

  * insert SectionComRules (EPS Immunizations Section, 
  The Immunizations Section defines a patient's current immunization status and pertinent immunization history. The primary use case for the Immunization Section is to enable communication of a patient's immunization status. The section includes the current immunization status\, and may contain the entire immunization history that is relevant to the period of time being summarized.,
  http://loinc.org#11369-6)

  * entry only Reference(Immunization or DocumentReference)
 
  * insert SectionEntrySliceComRules(Patient's immunization status and pertinent history., It defines the patient's current immunization status and pertinent immunization history.\r\nThe primary use case for the Immunization Section is to enable communication of a patient's immunization status.\r\nIt may contain the entire immunization history that is relevant to the period of time being summarized. This entry shall be used to document that no information about immunizations is available\, or that no immunizations are known.)

  * insert SectionEntrySliceDefRules (immunization,  0.. , 
  Patient's immunization status and pertinent history.,
  It defines the patient's current immunization status and pertinent immunization history.\r\nThe primary use case for the Immunization Section is to enable communication of a patient's immunization status.\r\nIt may contain the entire immunization history that is relevant to the period of time being summarized. This entry shall be used to document that no information about immunizations is available\, or that no immunizations are known. , ImmunizationEuCore) 
  
  // * entry[immunization] only Reference (ImmunizationEuEps)


 
// === EPS History of Procedures Section ===

* section[sectionProceduresHx]
  * insert SectionComRules ( 
      EPS History of Procedures Section, 
      The History of Procedures Section contains a description of the patient past procedures that are pertinent to the scope of this document. Procedures may refer for example to:\r\n
      1. Invasive Diagnostic procedure:e.g. Cardiac catheterization; (the results of these procedure are documented in the results section\)\r\n
      2. Therapeutic procedure: e.g. dialysis;\r\n
      3. Surgical procedure: e.g. appendectomy\r\n,
      http://loinc.org#47519-4)
  
  * entry only Reference(Procedure or DocumentReference)

  * insert SectionEntrySliceComRules(Slice on procedure, Slice on procedure)
  // entry slices
  * insert SectionEntrySliceDefRules (procedure, 0.. ,
     Patient past procedures pertinent to the scope of this document. ,  	
     It lists the patient past procedures that are pertinent to the scope of this document. Procedures may refer for example to:\r\n
      1. Invasive Diagnostic procedure:e.g. Cardiac catheterization; (the results of these procedure are documented in the results section\)\r\n
      2. Therapeutic procedure: e.g. dialysis;\r\n
      3. Surgical procedure: e.g. appendectomy\r\n,
      ProcedureEuCore)

///=== EPS Medical Devices Section

* section[sectionMedicalDevices] 
  * insert SectionComRules (EPS Medical Devices Section, 
  The medical devices section contains narrative text and coded entries describing the patient history of medical device use.,
  http://loinc.org#46264-8)

  * entry only Reference(DeviceUseStatement or DocumentReference)

  * insert SectionEntrySliceComRules(EPS Medical Device entry, EPS Medical Devices entry slice)

  * insert SectionEntrySliceDefRules (deviceStatement, 0.. , 
  Patient history of medical device use, 
  It describes the patient history of medical device use. This entry shall be used to document that no information about medical device use is available\, or that no relevant medical device use is known. , 
  DeviceUseStatementEuEps)

 
///=== EPS Alerts Section


* section[sectionAlert]
  * insert SectionComRules ( 
      EPS Alerts Section, 
      The alerts section flags potential concerns and/or dangers to/from the patient and may also include obstacles to care., 
      http://loinc.org#104605-1)

  * entry only Reference(Flag or DocumentReference)
  * insert SectionEntrySliceComRules(EPS Alerts entry, EPS Alerts entry slice)
  // entry slices
  * insert SectionEntrySliceDefRules (flag, 0.. , 
  Alert information , 
  Contains alert information to be communicated. May optionally reference other resources in IPS.lags,
  FlagEuCore)

// EPS Results Section, to be completed

* section[sectionResults]  
  * insert SectionComRules ( 
      EPS Results Section, 
      This section assembles relevant observation results collected on the patient or produced on in-vitro biologic specimens collected from the patient. Some of these results may be laboratory results\, others may be anatomic pathology results\, others\, radiology results\, and others\, clinical results., 
      http://loinc.org#30954-2)
  * entry only Reference(Observation or DiagnosticReport or DocumentReference)
  * insert SectionEntrySliceComRules(EPS Results entry, EPS Results entry slice)
  * insert SectionEntrySliceDefRules (results-observation-laboratory-pathology, 0.. , 
      Laboratory and pathology results, 
       Laboratory or pathology in vitro diagnostic test or panel/study. In case of a panel or multiple-observation study\, the results of the panel or study appear as sub-observations. In this case this top-level Observation acts as a grouper of all the observations belonging to the panel or study.,
       $Observation-results-laboratory-pathology-uv-ips) // TO BE changed with proper profile
  * insert SectionEntrySliceDefRules (results-observation-radiology, 0.. , 
      Radiology results, 
       This observation may represent the conclusions of a diagnostic procedure such a Chest RX\, or it may group the set of results produced by that single or multi-modality procedure.,
       $Observation-results-radiology-uv-ips) // TO BE changed with proper profile
  * insert SectionEntrySliceDefRules (results-diagnosticReport, 0.. , 
      EPS DiagnosticReport, 
       DiagnosticReport resource to represent diagnostic test and procedure reports in a patient summary,
       DiagnosticReportEuCore)

// -------------  EPS Vital Signs Section ------------------------

* section[sectionVitalSigns]
  * insert SectionComRules (
    EPS Vital Signs Section,
    The Vital signs section includes blood pressure\, body temperature\, heart rate\, and respiratory rate. It may also include other clinical findings\, such as height\, weight\, body mass index\, head circumference\, and pulse oximetry. In particular\, notable vital signs or physical findings such as the most recent\, maximum and/or minimum\, baseline\, or relevant trends may be included,
    http://loinc.org#8716-3)
  
  * entry only Reference(Observation or DocumentReference)
  * insert SectionEntrySliceComRules(Vital Signs, 
      Notable vital signs or physical findings as: blood pressure\, body temperature\, heart rate\, and respiratory rate. It may also include other clinical findings\, such as height\, weight\, body mass index\, head circumference\, and pulse oximetry. In particular\, notable vital signs or physical findings such as the most recent\, maximum and/or minimum\, baseline\, or relevant trends may be included)
  * insert SectionEntrySliceDefRules (vitalSign, 0.. , 
      Notable vital signs or physical findings. ,
      Notable vital signs or physical findings as: blood pressure\, body temperature\, heart rate\, and respiratory rate. It may also include other clinical findings\, such as height\, weight\, body mass index\, head circumference\, and pulse oximetry. In particular\, notable vital signs or physical findings such as the most recent\, maximum and/or minimum\, baseline\, or relevant trends may be included,
      $vitalsigns)

// ---------------- EPS Functional Status ---------------------

* section[sectionFunctionalStatus]
  * insert SectionComRules (EPS Functional Status, 
  The functional status section shall contain a narrative description of capability of the patient to perform acts of daily living\, including possible needs of the patient to be continuously assessed by third parties. The invalidity status may in fact influence decisions about how to administer treatments. Profiles to express disabilities and functional assessments will be specified by future versions of this guide.,
  http://loinc.org#47420-5)

  * entry only Reference(Condition or ClinicalImpression or DocumentReference)

  * insert SectionEntrySliceComRules(Optional entry used to represent disabilities and functional assessments,  	
      It describes capabilities of the patient to perform acts of daily living\, including possible needs of the patient to be continuously assessed by third parties. The invalidity status may in fact influence decisions about how to administer treatments. Profiles to express disabilities and functional assessments will be specified by future versions of this guide.)
  * insert SectionEntrySliceDefRules (disability, 0.. , 
      Optional slice used to represent disabilities,  	
      It describes capabilities of the patient to perform acts of daily living\, including possible needs of the patient to be continuously assessed by third parties. The invalidity status may in fact influence decisions about how to administer treatments. Profiles to express disabilities and functional assessments will be specified by future versions of this guide.,
      ConditionEuCore)
  * insert SectionEntrySliceDefRules (functionalAssessment, 0.. , 
      Optional slice used to represent functional assessments,  	
      It describes capabilities of the patient to perform acts of daily living\, including possible needs of the patient to be continuously assessed by third parties. The invalidity status may in fact influence decisions about how to administer treatments. Profiles to express disabilities and functional assessments will be specified by future versions of this guide.,
      ClinicalImpression)


// -------------- EPS Plan of Care Section -----------------------


* section[sectionPlanOfCare]
  * insert SectionComRules (EPS Plan of Care Section,  	
    The plan of care section contains a narrative description of the expectations for care including proposals\, goals\, and order requests for monitoring\, tracking\, or improving the condition of the patient.,
  http://loinc.org#18776-5)

  * entry only Reference(CarePlan or ImmunizationRecommendation or DocumentReference)

  * insert SectionEntrySliceComRules(Optional entry used to represent structured care plans,  	
      Dynamic\, personalized plan including identified needed healthcare activity\, health objectives and healthcare goals\, relating to one or more specified health issues in a healthcare process [Source EN ISO 13940])
  
  * insert SectionEntrySliceDefRules (carePlan, 0.. , 
      Optional slice used to represent care plans,  	
      Dynamic\, personalized plan including identified needed healthcare activity\, health objectives and healthcare goals\, relating to one or more specified health issues in a healthcare process [Source EN ISO 13940],
      CarePlan)

  * insert SectionEntrySliceDefRules (immunizationRecommendation, 0.. , 
      Optional slice used to represent immunization recommendations,  	
      A patient's point-in-time set of recommendations (i.e. forecasting\) according to a published schedule with optional supporting justification.,
      ImmunizationRecommendation)





// -------------------------------------


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