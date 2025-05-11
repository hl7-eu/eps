Profile: CompositionEuEps
Parent: $Composition-uv-ips
Id: composition-eu-eps
Title: "Composition (EU PS)"
Description: "Clinical document used to represent a Patient Summary for the scope of this project."
* . ^short = "Patient Summary composition"
* . ^definition = "Patient Summary composition. \r\nA composition is a set of healthcare-related information that is assembled together into a single logical document that provides a single coherent statement of meaning, establishes its own context and that has clinical attestation with regard to who is making the statement. \r\nWhile a Composition defines the structure, it does not actually contain the content: rather the full content of a document is contained in a Bundle, of which the Composition is the first resource contained."

* insert SetFmmandStatusRule (1, draft)

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
* author ^short = "Who and/or what authored the Patient Summary"
* author ^definition = "Identifies who is responsible for the information in the Patient Summary, not necessarily who typed it in."
  * ^slicing.discriminator[0].type = #type
  * ^slicing.discriminator[0].path = "resolve()"
  * ^slicing.ordered = false
  * ^slicing.rules = #open
  * ^short = "Sliced per type of author"
  * ^definition = "Sliced per type of author"
* author contains
    practictionerRole 0..* and
    device 0..*
* author[practictionerRole] only Reference ( $practitionerRole-eu-core )
* author[device] only Reference ( Device )

* title ^short = "Patient Summary"
* title ^definition = "Official human-readable label for the composition.\r\n\r\nFor this document should be \"Patient Summary\" or any equivalent translation"
* attester.mode ^short = "The type of attestation"
* attester.time ^short = "When the composition was attested"
* attester.party ^short = "Who attested the composition"

/* * section 1..
* section ^slicing.discriminator[0].type = #pattern
* section ^slicing.discriminator[0].path = "code"
* section ^slicing.ordered = false
* section ^slicing.rules = #open
* section ^short = "Sections composing the Patient Summary"
* section ^definition = "The root of the sections that make up the Patient Summary composition." */

* section[sectionMedications]
  * ^short = "Medication Summary"
  * ^definition = """The medication summary section contains a description of the patient's medications as part of the patient summary"""

  * entry only Reference (MedicationStatementEuEps or MedicationRequestEuEps or MedicationAdministration or MedicationDispense) 
  * entry[medicationStatementOrRequest] only Reference (MedicationStatementEuEps or MedicationRequestEuEps) 
  
* section[sectionAllergies]
  * ^short = "Allergies and Other Adverse Reactions"
  * ^definition = """The adverse and other adverse reactions section contains a narrative description of the substance intolerances and the associated adverse reactions suffered by the patient. It includes entries for intolerances and adverse reactions as described in the entry.

The field \"alerts\" was originally defined to include all the important and objective medical information that should be highlighted (such as allergies, thrombosis risk, immune deficit …etc). When defining the content only allergies and intolerance to drugs appear to be the common understanding and the easiest to be transferred. A lot of surveys are being made in different countries (not only in Europe) to make a more evidence-based definition of what should represented and should not by the concept “alerts”, hence not enough information could be provided to take a further decision. As eHDSI\’s intention is not to duplicate information, this shall not be repeated. Alerts are difficult to represent since they are contextual. Alerts may be represented as severe or life-threatening allergies or other adverse reactions. Another area are certain selected procedures and implanted devices. The section Allergies and Other Adverse Reactions contains the medical alerts as well, based on the severity, and their representation becomes a Country B choice."""
  * entry[allergyOrIntolerance] only Reference (AllergyIntoleranceEuEps)

* section contains sectionAlert ..1
* section[sectionAlert]
  * insert SectionComRules ( 
      Alerts Section, 
      Information used to warn or call to a state of preparedness. Information flagged or intended to raise awareness of a potential danger to from the subject of the IPS or to from another individual or awareness of a potential obstacle to care. , 
      http://loinc.org#104605-1 )   

  * entry 0..
  * insert SectionEntrySliceComRules(Alerts, Alerts)
  // entry slices

  * insert SectionEntrySliceDefRules (flag, 0.. , Flags , Flags , FlagEuEps)

// only Flag ?

/*  
 * insert SectionEntrySliceDefRules (detectedIssue, 0.. ,  Detected Issue,
    Indicates an actual or potential clinical issue with or between one or more active or proposed clinical actions for a patient; e.g. Drug-drug interaction\, Ineffective treatment frequency\, Procedure-condition conflict\, etc. ,
    DetectedIssue)
  * insert SectionEntrySliceDefRules (riskAssessment, 0.. , Risk Assessment,
    An assessment of the likely outcomes for a patient or other subject as well as the likelihood of each outcome. ,
    RiskAssessment) 
    */

/* * section[sectionProblems].entry[problem] only Reference (ConditionEuEps) */

* section[sectionProblems].entry[problem]

  * ^short = "Active Problems"
  * ^definition = """The active problem section contains a narrative description of the conditions currently being monitored for the patient. It includes entries for patient conditions as described in the Entry.
This section can also be used to hold the Medical Alert information (other alerts not included in allergies). Alerts, of all types are to be considered for the next iteration of the specifications."""
* section[sectionProceduresHx] 0..1
  * ^short = "List of Surgeries"
  * ^definition = """The list of surgeries section includes entries for procedures and references to procedure reports when known as described in the Entry. In epSOS this section was used to describe the Surgical Procedures prior past six months (optional) and to record the Major Surgical Procedures past 6 months (required). This choice of considering a time based distinction was due by the subjectivity of \‘relevancy\’ for automatically assembled PS. 
As the date can be seen from the procedure, the two have the same expression. It is up to the implementers of the system to display it in a different way."""

  * entry[procedure] only Reference (ProcedureEuEps)

* section[sectionImmunizations]
  * ^short = "Immunizations"
  * ^definition = """The immunizations section contains a narrative description of the immunizations administered to the patient in the past. It includes entries for medication administration as described in related profiles."""

  * entry[immunization] only Reference (ImmunizationEuEps)

* section[sectionMedicalDevices] 0..1
  * ^short = "Medical Devices"
  * ^definition = """The medical devices section contains narrative text describing the patient history of medical device use.
For the eHDSI Patient Summary this is a mandatory section and shall be used to record the Medical Devices and Implants. Each device shall be described using the specifed entry."""
  
  * entry[deviceStatement] only Reference (DeviceUseStatementEuEps)

* section[sectionResults]
  * ^short = "Coded Results"
  * ^definition = """In eHDSI this section is used only for the purpose of providing the results for the blood group."""
  // consider to add specialized profiles for results 

  /* * entry[results-observation] only Reference (ObservationBloodGroupEuEps or ObservationResultsEuEps) */

* section[sectionVitalSigns].entry[vitalSign] only Reference ($Observation-bp)
  * ^short = "Vital Signs"
  * ^definition = """The vital signs section contains coded measurement results of a patient\’s vital signs."""
* section[sectionPastIllnessHx].entry[pastProblem] // only Reference (ConditionEuEps)
  * ^short = "History Of Past Illness"
  * ^definition = """The History of Past Illness section contains a narrative description of the conditions the patient suffered in the past. It includes entries for problems as described in the Entry."""
* section[sectionFunctionalStatus]
  * ^short = "Functional Status"
  * ^definition = """The functional status section contains a narrative description of capability of the patient to perform acts of daily living."""
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
  * ^short = "Pregnancy History"
  * ^definition = """The pregnancy history section contains coded entries describing the patient history of pregnancies.
This section is used in eHDSI only for the purpose of providing the Expected Date of Delivery, when applicable, not the full history of pregnancies."""
  * title ^short = "Pregnancy Section title"
  * entry[pregnancyStatus] ^short = "Pregnancy status"
  * entry[pregnancyOutcome] ^short = "Pregnancy outcome"
  
* section[sectionAdvanceDirectives]
  * ^short = "Advance Directives Section"
  * ^definition = """The advance directive section contains a narrative description of patient's advance directive. The optional author and informant elements are used when necessary to convey the provenance and authoring of the section content in case it is different from what is announced in the CDA header.
Entries for references to consent and advance directive documents when known will be specified by future versions of this template."""


* section[sectionAdvanceDirectives]
  * ^short = "Advance Directives Section"
  * ^definition = """The advance directive section contains a narrative description of patient's advance directive. The optional author and informant elements are used when necessary to convey the provenance and authoring of the section content in case it is different from what is announced in the CDA header.
Entries for references to consent and advance directive documents when known will be specified by future versions of this template."""

* section contains sectionTravelHx ..1
* section[sectionTravelHx]
  * insert SectionComRules ( Travel History Section, This Section describes the travel history relevant for the Patient Summary\, e.g.recent travel in a region of high prevalence of a specific infectious disease like Malaria,  http://loinc.org#10182-4 )

* section contains sectionPatientHx ..1
* section[sectionPatientHx]
  * insert SectionComRules ( 
    Patient History Section,
    This section may provide both synthetic anamnesis \,e.g. description of phases of the pathology as a chronological summary of clustered clinical information\, and anecdotal evidence that clinicians can collect from the patient\, and can read in a narrative form.,
    http://loinc.org#11329-0 )
