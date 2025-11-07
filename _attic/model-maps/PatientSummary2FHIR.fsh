Instance: patientSummary2FHIR
InstanceOf: ConceptMap
Usage: #definition
* url = "http://hl7.eu/fhir/eps/ConceptMap/patientSummary2FHIR"
* name = "PatientSummary2FHIR"
* title = "eHN Patient Summary to this guide Map"
* status = #draft
* experimental = false
* description = """eHN Patient Summary to this guide Map"""
* group[+].source = "http://hl7.eu/fhir/eps/StructureDefinition/PatientSummary"
* group[=].target = "http://hl7.eu/fhir/eps/StructureDefinition/bundle-eu-eps"
* group[=].element[+].code = #PatientSummary.header.documentData.created					
* group[=].element[=].display = "A.1.4.1 Date created"
* group[=].element[=].target.code = #Bundle.timestamp					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "If it is the date when this instance has been generated"
* group[+].source = "http://hl7.eu/fhir/eps/StructureDefinition/PatientSummary"
* group[=].target = "http://hl7.eu/fhir/eps/StructureDefinition/composition-eu-eps"
* group[=].element[+].code = #PatientSummary.header					
* group[=].element[=].display = "A.1 Report header data elements"
* group[=].element[=].target.code = #Composition					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[+].code = #PatientSummary.header.subject					
* group[=].element[=].display = "A.1.1 A1.2 Patient/subject"
* group[=].element[=].target.code = #Composition.subject					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #PatientSummary.header.insuranceInfo					
* group[=].element[=].display = "A.1.3 Insurance information"
* group[=].element[=].target.code = #Composition.subject					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[+].code = #PatientSummary.header.documentData					
* group[=].element[=].display = "A.1.4 Document data"
* group[=].element[=].target.code = #Composition					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[+].code = #PatientSummary.header.documentData.created					
* group[=].element[=].display = "A.1.4.1 Date created"
* group[=].element[=].target.code = #Composition.date					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "if it is the date of creation of this document "
* group[=].element[+].code = #PatientSummary.header.documentData.lastUpdate					
* group[=].element[=].display = "A.1.4.2 Date of last update"
* group[=].element[=].target.code = #Composition.event:careProvisioningEvent.period.end					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "if it represents when care provisioning period this summary is covering"
* group[=].element[+].code = #PatientSummary.header.documentData.lastUpdate					
* group[=].element[=].display = "A.1.4.2 Date of last update"
* group[=].element[=].target.code = #Composition.meta.lastUpdated					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "If it represents the last update of this FHIR resource"
* group[=].element[+].code = #PatientSummary.header.documentData.natureOfIPS					
* group[=].element[=].display = "A.1.4.3 Nature of the PS"
* group[=].element[=].target.code = #Composition.author					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "the nature of a PS is determined as a comobination of type if author and legal authenticator. Future versions may cosndier to use Provenance data for this scope"
* group[=].element[+].code = #PatientSummary.header.participant					
* group[=].element[=].display = "A.1.5 Author and Organisation"
* group[=].element[=].target.code = #Composition					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[+].code = #PatientSummary.header.participant.author					
* group[=].element[=].display = "A.1.5.1 Author organization"
* group[=].element[=].target.code = #Composition.author					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "author can be of type Organzation, Pracittioner or PractictionerRole"
* group[=].element[+].code = #PatientSummary.header.participant.legalAuthenticator				
* group[=].element[=].display = "A.1.5.2 Legal authenticator"
* group[=].element[=].target.code = #Composition.attester					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "attester.mode = 'legal'"
* group[=].element[+].code = #PatientSummary.body					
* group[=].element[=].display = "A.2 Patient summary body data elements"
* group[=].element[=].target.code = #Composition.section					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[+].code = #PatientSummary.body.alerts					
* group[=].element[=].display = "A.2.1 Alerts"
* group[=].element[=].target.code = #Composition.section					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "Alerts data are recorded in two distict sections: alerts and allergies and intolerance"
* group[=].element[+].code = #PatientSummary.body.alerts.allergy					
* group[=].element[=].display = "A.2.1.1 Allergy"
* group[=].element[=].target.code = #Composition.section:sectionAllergies					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #PatientSummary.body.alerts.alert					
* group[=].element[=].display = "A.2.1.2 Medical alert information (other alerts not included in allergies)"
* group[=].element[=].target.code = #Composition.section:sectionAlert					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #PatientSummary.body.alerts.alert.description					
* group[=].element[=].display = "A.2.1.2.1 Healthcare alert description"
* group[=].element[=].target.code = #Composition.section:sectionAlert.text					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[+].code = #PatientSummary.body.medicalHistory					
* group[=].element[=].display = "A.2.2 Medical history"
* group[=].element[=].target.code = #Composition.section					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "Mapped into several sections"
* group[=].element[+].code = #PatientSummary.body.medicalHistory.vaccination					
* group[=].element[=].display = "A.2.2.1 Vaccination/ prophylaxis information"
* group[=].element[=].target.code = #Composition.section:sectionImmunizations					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "the containing resource describes the context in this case the Condition"
* group[=].element[+].code = #PatientSummary.body.medicalHistory.inactiveProblem					
* group[=].element[=].display = "A.2.2.2 Resolved, closed or inactive problems"
* group[=].element[=].target.code = #Composition.section:sectionPastIllnessHx					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #PatientSummary.body.medicalHistory.anamnesis					
* group[=].element[=].display = "A.2.2.3 Medical history"
* group[=].element[=].target.code = #Composition.section:sectionPatientHx					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "to be checked be sure is not mapped in the IPS Patient Story"
* group[=].element[+].code = #PatientSummary.body.medicalHistory.anamnesis.details					
* group[=].element[=].display = "A.2.2.3.1 Medical history"
* group[=].element[=].target.code = #Composition.section:sectionPatientHx.text				
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[+].code = #PatientSummary.body.medicalProblems					
* group[=].element[=].display = "A.2.3 Medical problems"
* group[=].element[=].target.code = #Composition.section					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[+].code = #PatientSummary.body.medicalProblems.problems					
* group[=].element[=].display = "A.2.3.1 Current problems"
* group[=].element[=].target.code = #Composition.section:sectionProblems					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #PatientSummary.body.medicalProblems.medicalDevices					
* group[=].element[=].display = "A.2.3.2 Medical devices and implants"
* group[=].element[=].target.code = #Composition.section:sectionMedicalDevices					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #PatientSummary.body.medicalProblems.procedures					
* group[=].element[=].display = "A.2.3.3 Procedures"
* group[=].element[=].target.code = #Composition.section:sectionProceduresHx					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #PatientSummary.body.medicalProblems.functionalStatus					
* group[=].element[=].display = "A.2.3.4 Functional status"
* group[=].element[=].target.code = #Composition.section:sectionFunctionalStatus					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #PatientSummary.body.medicationSummary					
* group[=].element[=].display = "A.2.4 Medication summary"
* group[=].element[=].target.code = #Composition.section:sectionMedications					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #PatientSummary.body.medicationSummary.medication					
* group[=].element[=].display = "A.2.4.1 Current and relevant past medicines"
* group[=].element[=].target.code = #Composition.section:sectionMedications.entry					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #PatientSummary.body.socialHistory					
* group[=].element[=].display = "A.2.5 Social history"
* group[=].element[=].target.code = #Composition.section:sectionSocialHistory					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #PatientSummary.body.socialHistory.observation					
* group[=].element[=].display = "A.2.5.1 Social history observations related to health"
* group[=].element[=].target.code = #Composition.section:sectionSocialHistory.entry					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "Composition.section:sectionSocialHistory.entry.ofType(Observation)"
* group[=].element[+].code = #PatientSummary.body.socialHistory.referenceRange					
* group[=].element[=].display = "A.2.5.2 Reference date range"
* group[=].element[=].target.code = #Composition.section:sectionSocialHistory.entry.effective[x]					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "Composition.section:sectionSocialHistory.entry.ofType(Observation)"
* group[=].element[+].code = #PatientSummary.body.pregnancyHistory					
* group[=].element[=].display = "A.2.6 Pregnancy history"
* group[=].element[=].target.code = #Composition.section:sectionPregnancyHx					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #PatientSummary.body.patientData					
* group[=].element[=].display = "A.2.7 Patient provided data"
* group[=].element[=].target.code = #Composition.section					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "Mapped into several sections"
* group[=].element[+].code = #PatientSummary.body.patientData.travelHistory					
* group[=].element[=].display = "A.2.7.1 Travel history"
* group[=].element[=].target.code = #Composition.section:sectionTravelHx					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[+].code = #PatientSummary.body.patientData.travelHistory.country					
* group[=].element[=].display = "A.2.7.1.1 Country"
* group[=].element[=].target.code = #Composition.section:sectionTravelHx.text					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[+].code = #PatientSummary.body.patientData.travelHistory.period					
* group[=].element[=].display = "A.2.7.1.2 Period"
* group[=].element[=].target.code = #Composition.section:sectionTravelHx.text					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[+].code = #PatientSummary.body.patientData.advanceDirective					
* group[=].element[=].display = "A.2.7.2 Advance Directive"
* group[=].element[=].target.code = #Composition.section:sectionAdvanceDirectives					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #PatientSummary.body.patientData.advanceDirective.documentation					
* group[=].element[=].display = "A.2.7.2.1 Documentation"
* group[=].element[=].target.code = #Composition.section:sectionAdvanceDirectives					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[+].code = #PatientSummary.body.results					
* group[=].element[=].display = "A.2.8 Results"
* group[=].element[=].target.code = #Composition.section:sectionResults					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #PatientSummary.body.planOfCare					
* group[=].element[=].display = "A.2.9 Plan of Care"
* group[=].element[=].target.code = #Composition.section:sectionPlanOfCare					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #PatientSummary.body.planOfCare.carePlan					
* group[=].element[=].display = "A.2.9.1 Plan of care"
* group[=].element[=].target.code = #Composition.section:sectionPlanOfCare.text					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[+].source = "http://hl7.eu/fhir/eps/StructureDefinition/PatientSummary"
* group[=].target = "http://hl7.eu/fhir/eps/StructureDefinition/condition-eu-eps"
* group[=].element[+].code = #PatientSummary.header.additionalInfo					
* group[=].element[=].display = "A.1.6 Additional information / Knowledge resources"
* group[=].element[=].target.code = #Condition.extension:supporintInfo					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[+].code = #PatientSummary.header.additionalInfo.reference					
* group[=].element[=].display = "A.1.6.1 External reference"
* group[=].element[=].target.code = #Condition.extension:supporintInfo					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[+].code = #PatientSummary.header.additionalInfo.relatedWith					
* group[=].element[=].display = "A.1.6.2 Related with"
* group[=].element[=].target.code = #Condition					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "The 'relationship' is given by the inclusion of the references in the associated resource, n this case the Condition"
* group[+].source = "http://hl7.eu/fhir/eps/StructureDefinition/PatientSummary"
* group[=].target = "http://hl7.eu/fhir/eps/StructureDefinition/flag-eu-eps"
* group[=].element[+].code = #PatientSummary.body.alerts.alert.description					
* group[=].element[=].display = "A.2.1.2.1 Healthcare alert description"
* group[=].element[=].target.code = #Flag.text					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "Composition.section:sectionAlert.entry.otType(Flag)"
* group[=].element[+].code = #PatientSummary.body.alerts.alert.description					
* group[=].element[=].display = "A.2.1.2.1 Healthcare alert description"
* group[=].element[=].target.code = #Flag.code.text					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "Composition.section:sectionAlert.entry.otType(Flag)"
* group[+].source = "http://hl7.eu/fhir/eps/StructureDefinition/PatientSummary"
* group[=].target = "http://hl7.eu/fhir/eps/StructureDefinition/observation-travel-eu-eps"
* group[=].element[+].code = #PatientSummary.body.patientData.travelHistory.country					
* group[=].element[=].display = "A.2.7.1.1 Country"
* group[=].element[=].target.code = #Observation.valueCodeableConcept					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "Composition.section:sectionTravelHx.entry.resolve().ofType(Observation)
Profile to be defined			"
* group[=].element[+].code = #PatientSummary.body.patientData.travelHistory.period					
* group[=].element[=].display = "A.2.7.1.2 Period"
* group[=].element[=].target.code = #Observation.effectivePeriod					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto					
* group[=].element[=].target.comment = "Composition.section:sectionTravelHx.entry.resolve().ofType(Observation)
Profile to be defined			"
* group[+].source = "http://hl7.eu/fhir/eps/StructureDefinition/PatientSummary"
* group[=].target = "http://hl7.eu/fhir/eps/StructureDefinition/patient-eu-eps"
* group[=].element[+].code = #PatientSummary.header.subject					
* group[=].element[=].display = "A.1.1 A1.2 Patient/subject"
* group[=].element[=].target.code = #Composition.subject					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "Composition.subject.resolve().ofType(Patient)	"
* group[=].element[+].code = #PatientSummary.header.insuranceInfo.insuranceNumber					
* group[=].element[=].display = "A.1.3.1  Insurance number"
* group[=].element[=].target.code = #Patient.identifier					
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "Composition.subject.resolve().ofType(Patient).identifier				"
