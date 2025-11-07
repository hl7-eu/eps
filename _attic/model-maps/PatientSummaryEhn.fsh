Logical: PatientSummaryEhn
Id: PatientSummary
Title: "A - Patient Summary"
Description: """Patient Summary. eHN guideline model."""
* header 1..1 BackboneElement "A.1 Report header data elements" """A.1 Report header data elements"""
* header.subject 1..1 http://hl7.eu/fhir/eps/StructureDefinition/Subject "A.1.1 A1.2 Patient/subject" """A.1.1 Identification of the patient/subject and A.1.2 Patient/subject related contact information"""
* header.insuranceInfo 0..1 BackboneElement "A.1.3 Insurance information" """A.1.3 Insurance information"""
* header.insuranceInfo.insuranceNumber 0..* Identifier "A.1.3.1  Insurance number" """Example: QQ 12 34 56 A"""
* header.documentData 1..1 BackboneElement "A.1.4 Document data" """A.1.4 Document data"""
* header.documentData.created 1..1 dateTime "A.1.4.1 Date created" """A.1.4.1 Date created - Date on which PS was generated"""
* header.documentData.lastUpdate 0..1 dateTime "A.1.4.2 Date of last update" """A.1.4.2 Date of last update - Date on which PS was updated (date of most recent version)
Preferred system: ISO 8601"""
* header.documentData.natureOfIPS 1..1 BackboneElement "A.1.4.3 Nature of the PS" """A.1.4.3 Nature of the PS - Defines the context in which it was generated. Distinguishes between three methodological approaches for generating the PS: direct human intervention by an HP, automatically generated approach and mixed approach"""
* header.participant 1..* BackboneElement "A.1.5 Author and Organisation" """A.1.5 Author and Organisation"""
* header.participant.author 1..* Identifier "A.1.5.1 Author organization" """A.1.5.1 Author organization - At least one Author and Organisation shall be listed. In the event that there is no Author, at least one Organisation shall be listed This Author should be able to provide further information on the provenance of the data present in the patient summary. Different authors contributing to individual sections and/or entries could be provided at the relevant level."""
* header.participant.legalauthenticator 0..* CodeableConcept "A.1.5.2 Legal authenticator" """A.1.5.2 Legal authenticator - Legal entity (Health Professional or Health Care Provider) who authenticated the Patient Summary"""
* header.additionalInfo 0..* BackboneElement "A.1.6 Additional information / Knowledge resources" """A.1.6 Additional information / Knowledge resources -"""
* header.additionalInfo.reference 0..* Reference "A.1.6.1 External reference" """A.1.6.1 External reference -  A reference leading to Clinical Practice Guidelines (CPG), emergency and anesthesia guidelines or other clinical relevant guidelines. This should be used only for providing specific guidance which may not be readily available to the health professional caring for the patient."""
* header.additionalInfo.relatedWith 0..* Reference "A.1.6.2 Related with" """A.1.6.2 Related with - Identify the entry or entries of this Patient Summary for which this additional information relates with, for example a link between a rare disease problem (section A.2.3.1) and guidelines for that particular rare disease (this section)."""
* body 1..1 BackboneElement "A.2 Patient summary body data elements" """A.2 - Patient summary body data elements"""
* body.alerts 1..1 BackboneElement "A.2.1 Alerts" """A.2.1 - Alerts"""
* body.alerts.allergy 0..* http://hl7.eu/fhir/eps/StructureDefinition/Allergy "A.2.1.1 Allergy" """A.2.1.1 - Allergy"""
* body.alerts.alert 0..* BackboneElement "A.2.1.2 Medical alert information (other alerts not included in allergies)" """A.2.1.2 - Medical alert information (other alerts not included in allergies)"""
* body.alerts.alert.description 0..* string "A.2.1.2.1 Healthcare alert description" """Description of medical alerts in textual format: any clinical information that is imperative to know so that the life or health of the patient does not come under threat. 
Example 1: intolerance to aspirin due to gastrointestinal bleeding. 
Example 2: intolerance to captopril because of cough (the patient is not allergic but can't tolerate it because of persistent cough)
Example 3: the patient has a rare disease that requires special treatment
Example 4: Airway Alert / Difficult Intubation
Example 5: Diagnoses such as malignant hyperthermia, porphyria, and bleeding disvaccinations; special treatments like anticoagulants or immunosuppressants; implanted devices.
Example 6: transplanted organs illustrate other information that has to be taken into  account in a healthcare contact.
Example 7: participation in a clinical trial that has to be taken into account in a healthcare contact."""
* body.medicalHistory 1..1 BackboneElement "A.2.2 Medical history" """A.2.2 - Medical history"""
* body.medicalHistory.vaccination 0..* http://hl7.eu/fhir/eps/StructureDefinition/Vaccination "A.2.2.1 Vaccination/ prophylaxis information" """A.2.2.1 - Vaccination/ prophylaxis information"""
* body.medicalHistory.inactiveProblem 0..* http://hl7.eu/fhir/eps/StructureDefinition/ClosedProblem "A.2.2.2 Resolved, closed or inactive problems" """A.2.2.2 - Resolved, closed or inactive problems"""
* body.medicalHistory.anamnesis 0..1 BackboneElement "A.2.2.3 Medical history" """A.2.2.3 - Medical history"""
* body.medicalHistory.anamnesis.details 0..1 Narrative "A.2.2.3.1 Medical history" """This section may provide both synthetic anamnesis (e.g. description of phases of the pathology as a chronological summary of clustered clinical information) and anecdotal evidence that clinicians can collect from the patient, and can read in a narrative form. See Section 2, Chapter III, Art 7, (c)."""
* body.medicalProblems 0..1 BackboneElement "A.2.3 Medical problems" """A.2.3 Medical problems"""
* body.medicalProblems.problems 0..1 http://hl7.eu/fhir/eps/StructureDefinition/Problem "A.2.3.1 Current problems" """A.2.3.1 Current problems"""
* body.medicalProblems.medicalDevices 1..1 BackboneElement "A.2.3.2 Medical devices and implants" """A.2.3.2 - Medical devices and implants"""
* body.medicalProblems.procedures 1..1 BackboneElement "A.2.3.3 Procedures" """A.2.3.3 - Procedures"""
* body.medicalProblems.functionalStatus 0..1 BackboneElement "A.2.3.4 Functional status" """A.2.3.4 - Functional status"""
* body.medicationSummary 1..1 BackboneElement "A.2.4 Medication summary" """A.2.4 - Medication summary"""
* body.medicationSummary.medication 1..* http://hl7.eu/fhir/eps/StructureDefinition/Medicine "A.2.4.1 Current and relevant past medicines" """Relevant prescribed medicines whose period of time indicated for the treatment has not yet expired whether it has been dispensed or not, or medicines that influence current health status or are relevant to a clinical decision"""
* body.socialHistory 0..1 BackboneElement "A.2.5 Social history" """A.2.5 - Social history"""
* body.socialHistory.observation 0..* BackboneElement "A.2.5.1 Social history observations related to health" """Health related lifestyle factors or lifestyle observations and social determinants of health. Example: cigarette smoker, alcohol consumption. - Preferred System: SNOMED CT GPS"""
* body.socialHistory.referenceRange 0..* Range "A.2.5.2 Reference date range" """Example: from 1974 to 2004"""
* body.pregnancyHistory 0..1 BackboneElement "A.2.6 Pregnancy history" """A.2.6 Pregnancy history"""
* body.patientData 0..1 BackboneElement "A.2.7 Patient provided data" """A.2.7 - Patient provided data"""
* body.patientData.travelHistory 0..1 BackboneElement "A.2.7.1 Travel history" """A.2.7.1 - Travel history"""
* body.patientData.travelHistory.country 0..* CodeableConcept "A.2.7.1.1 Country" """A.1.4.1 Country(s) visited - Preferred System: ISO 3166"""
* body.patientData.travelHistory.period 0..* dateTime "A.2.7.1.2 Period" """A.1.4.2 Date of entry and departure - Preferred System: ISO 8601"""
* body.patientData.advanceDirective 0..1 BackboneElement "A.2.7.2 Advance Directive" """A.2.7.2 - Advance Directive"""
* body.patientData.advanceDirective.documentation 0..* BackboneElement "A.2.7.2.1 Documentation" """Existence of documentation on living will.
Preferred system: SNOMED CT GPS"""
* body.results 0..1 http://hl7.eu/fhir/eps/StructureDefinition/Result "A.2.8 Results" """A.2.8 - Results"""
* body.planOfCare 0..1 BackboneElement "A.2.9 Plan of Care" """(Therapeutic recommendations that do not include pharmacologic treatments, such as diet, physical exercise, planned surgeries)"""
* body.planOfCare.carePlan 0..* string "A.2.9.1 Plan of care" """Narrative containing the plan including proposals, goals, and vaccination requests for monitoring, tracking, or improving the condition of the patient. In the future it is expected that this Section could be provided in a structured and coded format."""
