Profile: CompositionOblEuEps
Parent: CompositionEuEps
Id: composition-obl-eu-eps
Title: "Composition - Obligations (EPS)"
Description: "This profile sets the IPS obligations on the Composition (EPS) profile."

* insert SetFmmAndStatusRule (1, draft)

// ================= REFERENCES TO OBLIGATION PROFILES =================
* subject only Reference(PatientOblEuEps)
* author only Reference(PractitionerEuCore or PractitionerRoleEuCore or Device or OrganizationEuCore or PatientOblEuEps or RelatedPerson)
* attester.party only Reference(PatientOblEuEps or RelatedPerson or PractitionerEuCore or PractitionerRoleEuCore or OrganizationEuCore)
* attester[legalAuthenticator].party only Reference(PractitionerRoleEuCore or PractitionerEuCore)
* attester[validator].party only Reference(PractitionerRoleEuCore or PractitionerEuCore)
* section[sectionMedications].entry[medicationStatementOrRequest] only Reference(MedicationStatementOblEuEps)
* section[sectionResults].entry[results-diagnosticReport] only Reference(DiagnosticReportOblEuEps)
* section[sectionProceduresHx].entry[procedure] only Reference(ProcedureOblEuEps)
* section[sectionMedicalDevices].entry[deviceStatement] only Reference(DeviceUseStatementOblEuEps)

// ================= IPS OBLIGATIONS =================
* meta.profile insert ObligationActorAndCode(http://hl7.org/fhir/uv/ips/ActorDefinition/Creator, #MAY:able-to-populate)

* text insert ObligationIpsPopulateIfKnownDisplay

* identifier insert ObligationIpsPopulateIfKnownHandle

* status insert ObligationIpsPopulateDisplay

* type insert ObligationIpsPopulateHandle

* subject insert ObligationIpsPopulateDisplay

* subject.reference insert ObligationIpsPopulateHandle

* date insert ObligationIpsPopulateDisplay

* author insert ObligationIpsPopulateDisplay

* title insert ObligationIpsPopulateDisplay

* attester insert ObligationIpsPopulateIfKnownDisplay

* attester.mode insert ObligationIpsPopulateDisplay

* attester.time insert ObligationIpsPopulateIfKnownDisplay

* attester.party insert ObligationIpsPopulateIfKnownDisplay

* custodian insert ObligationIpsPopulateIfKnownDisplay

* event insert ObligationIpsPopulateIfKnownDisplay

* event.code insert ObligationIpsPopulateDisplay

* event.period insert ObligationIpsPopulateIfKnownDisplay

* section insert ObligationIpsHandleDisplay

* section.title insert ObligationIpsPopulateDisplay

* section.code insert ObligationActorAndCode(http://hl7.org/fhir/uv/ips/ActorDefinition/Consumer, #SHALL:handle)

* section.text insert ObligationIpsPopulateDisplay

* section[sectionProblems] insert ObligationIpsPopulateDisplay

* section[sectionProblems].entry[problem] insert ObligationIpsAbleToPopulateAndPopulateIfKnownDisplay

* section[sectionProblems].emptyReason insert ObligationIpsPopulateIfKnownDisplay

* section[sectionAllergies] insert ObligationIpsPopulateDisplay

* section[sectionAllergies].entry[allergyOrIntolerance] insert ObligationIpsAbleToPopulateAndPopulateIfKnownDisplay

* section[sectionAllergies].emptyReason insert ObligationIpsPopulateIfKnownDisplay

* section[sectionMedications] insert ObligationIpsPopulateDisplay

* section[sectionMedications].entry[medicationStatementOrRequest] insert ObligationIpsAbleToPopulateAndPopulateIfKnownDisplay

* section[sectionMedications].emptyReason insert ObligationIpsPopulateIfKnownDisplay

* section[sectionImmunizations] insert ObligationIpsShouldPopulateIfKnownDisplay

* section[sectionImmunizations].entry[immunization] insert ObligationIpsShouldPopulateIfKnownDisplay

* section[sectionResults] insert ObligationIpsShouldPopulateIfKnownDisplay

* section[sectionResults].entry[results-medicalTestResult] insert ObligationIpsShouldPopulateIfKnownDisplay

* section[sectionResults].entry[results-diagnosticReport] insert ObligationIpsHandleDisplay

* section[sectionProceduresHx] insert ObligationIpsShouldPopulateIfKnownDisplay

* section[sectionProceduresHx].entry[procedure] insert ObligationIpsShouldPopulateIfKnownDisplay

* section[sectionMedicalDevices] insert ObligationIpsShouldPopulateIfKnownDisplay

* section[sectionMedicalDevices].entry[deviceStatement] insert ObligationIpsShouldPopulateIfKnownDisplay

* section[sectionAdvanceDirectives] insert ObligationIpsHandleDisplay

* section[sectionAlerts] insert ObligationIpsHandleDisplay

* section[sectionFunctionalStatus] insert ObligationIpsHandleDisplay

* section[sectionPregnancyHx] insert ObligationIpsHandleDisplay

* section[sectionPatientStory] insert ObligationIpsHandleDisplay

* section[sectionPlanOfCare] insert ObligationIpsHandleDisplay

* section[sectionSocialHistory] insert ObligationIpsHandleDisplay

* section[sectionVitalSigns] insert ObligationIpsHandleDisplay
