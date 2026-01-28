# Profiles - International Patient Summary Implementation Guide v2.0.0

## Profiles

### IPS and Its Structure

The **International Patient Summary** is a document. All the profiles specified by this guide are used by the **International Patient Summary Composition**.

The **Bundle** used for the transport or the persistence SHALL include all the resources that are referenced directly or indirectly by an International Patient Summary Composition.

A complete list of the sections and the profiles used is available in the [International Patient Summary Structure](Structure-of-the-International-Patient-Summary.md) page.

### List of Profiles

The links and descriptions for the profiles that have been defined for this implementation guide are listed here:

[AllergyIntolerance (IPS)](StructureDefinition-AllergyIntolerance-uv-ips.md)

This profile represents the constraints applied to the AllergyIntolerance resource by the International Patient Summary (IPS) FHIR Implementation Guide. A record of an allergy or intolerance is represented in the patient summary as an instance of an AllergyIntolerance resource constrained by this profile.

It documents the relevant allergies or intolerances for a patient, describing the kind of reaction (e.g. rash, anaphylaxis,..); preferably the agents that cause it; and optionally the criticality and the certainty of the allergy.

[Bundle (IPS)](StructureDefinition-Bundle-uv-ips.md)

This profile represents the constraints applied to the Bundle resource by the International Patient Summary (IPS) FHIR Implementation Guide.

[Composition (IPS)](StructureDefinition-Composition-uv-ips.md)

Clinical document used to represent the International Patient Summary (IPS) data set. An International Patient Summary (IPS) document is an electronic health record extract containing essential healthcare information about a subject of care. The IPS dataset is minimal and non-exhaustive; specialty-agnostic and condition-independent; but still clinically relevant. As specified in ISO 27269, it is designed for supporting the use case scenario for ‘unplanned, cross border care’, but it is not limited to it. It is intended to be international, i.e., to provide generic solutions for global application beyond a particular region or country.

[Condition (IPS)](StructureDefinition-Condition-uv-ips.md)

This profile represents the constraints applied to the Condition resource by the International Patient Summary (IPS) FHIR Implementation Guide. A record of a problem is represented in the patient summary as an instance of the Condition resource constrained by this profile.

[Device (IPS)](StructureDefinition-Device-uv-ips.md)

This profile represents the constraints applied to the Device resource by the International Patient Summary (IPS) FHIR Implementation Guide, based on FHIR R4. A device used by or implanted on the patient is described in the patient summary as an instance of a Device resource constrained by this profile.

[Device - Performer or Observer (IPS)](StructureDefinition-Device-observer-uv-ips.md)

This profile represents the constraints applied to the Device resource by the IPS project, which specifies an international patient summary based on the FHIR standard R4.

This profile describes a device that plays the role of observer or performer.

[DeviceUseStatement (IPS)](StructureDefinition-DeviceUseStatement-uv-ips.md)

This profile represents the constraints applied to the DeviceUseStatement resource by the International Patient Summary (IPS) FHIR Implementation Guide, based on FHIR R4. A statement about a device used by or implanted on the patient is described in the patient summary as an instance of a DeviceUseStatement resource constrained by this profile.

[DiagnosticReport (IPS)](StructureDefinition-DiagnosticReport-uv-ips.md)

This profile constrains the DiagnosticReport resource to represent diagnostic test and procedure reports in a patient summary.

[Flag - Alert (IPS)](StructureDefinition-Flag-alert-uv-ips.md)

This profile constrains the Flag resource by the International Patient Summary (IPS) FHIR Implementation Guide. A record of an alert is represented in the patient summary as an instance of a Flag resource constrained by this profile.

This specialized Flag is used to convey information about an alert specific to an IPS. Information is flagged to raise awareness of potential concerns and/or dangers to/from the subject of the IPS. It brings information to the fore and may reference other information from the summary (through the supportingInfo extension) as well as present obstacles to care.

[ImagingStudy (IPS)](StructureDefinition-ImagingStudy-uv-ips.md)

This profile represents the constraints applied to the ImagingStudy resource by the IPS project, which specifies the information on a DICOM imaging study this imaging result is part of.

[Immunization (IPS)](StructureDefinition-Immunization-uv-ips.md)

This profile represents the constraints applied to the Immunization resource by the International Patient Summary (IPS) FHIR Implementation Guide. A record of an immunization is represented in the patient summary as an instance of an Immunization resource constrained by this profile.

It describes the event of a patient being administered a vaccination or a record of a vaccination as reported by a patient, a clinician or another party.

[Medication (IPS)](StructureDefinition-Medication-uv-ips.md)

This profile represents the constraints applied to the Medication resource by the International Patient Summary (IPS) FHIR Implementation Guide, based on FHIR R4. A medication is described in the patient summary as an instance of a Medication resource constrained by this profile.

[MedicationRequest (IPS)](StructureDefinition-MedicationRequest-uv-ips.md)

This profile represents the constraints applied to the MedicationRequest resource by the International Patient Summary (IPS) FHIR Implementation Guide, based on FHIR R4. A record of a medication request is represented in the patient summary as an instance of a MedicationRequest resource constrained by this profile.

[MedicationStatement (IPS)](StructureDefinition-MedicationStatement-uv-ips.md)

This profile represents the constraints applied to the MedicationStatement resource by the International Patient Summary (IPS) FHIR Implementation Guide, based on FHIR R4. A record of a medication statement is represented in the patient summary as an instance of a MedicationStatement resource constrained by this profile.

[Observation Pregnancy - Expected Delivery Date (IPS)](StructureDefinition-Observation-pregnancy-edd-uv-ips.md)

This profile constrains the Observation resource to represent the pregnancy expected delivery date (EDD).

[Observation Pregnancy - Outcome (IPS)](StructureDefinition-Observation-pregnancy-outcome-uv-ips.md)

This profile constrains the Observation resource to represent the summarized history of pregnancy outcomes.

[Observation Pregnancy - Status (IPS)](StructureDefinition-Observation-pregnancy-status-uv-ips.md)

This profile constrains the Observation resource to represent the pregnancy status.

[Observation Results - Laboratory/Pathology (IPS)](StructureDefinition-Observation-results-laboratory-pathology-uv-ips.md)

This profile constrains the Observation resource to represent results produced by laboratory (including pathology) tests or panels/studies in a patient summary.

This observation may represent the result of a simple laboratory test such as hematocrit or it may group the set of results produced by a multi-test study or panel such as a complete blood count, a dynamic function test, or a urine specimen study. In the latter case, the observation carries the overall conclusion of the study and or a global interpretation by the producer of the study, in the comment element; and references the atomic results of the study as "has-member" child observations.

[Observation Results - Radiology (IPS)](StructureDefinition-Observation-results-radiology-uv-ips.md)

This profile represents the constraints applied to the Observation resource by the IPS project, which specifies a radiology observation for the international patient summary based on the FHIR standard R4.

This observation may represent the conclusions of a diagnostic procedure such a Chest RX, or it may group the set of results produced by that single or multi-modality procedure.

In the latter case, the main observation (this one) carries the overall conclusion of the study and/or a global interpretation by the observer of the study as value of this observation; and may reference the atomic results of the study as "child observations".

It allows also providing details about the related study using the partOf element referring to an ImagingStudy resource.

[Observation Social History - Alcohol Use (IPS)](StructureDefinition-Observation-alcoholuse-uv-ips.md)

This profile constrains the Observation resource to represent alcohol use assessment in a patient summary.

[Observation Social History - Tobacco Use (IPS)](StructureDefinition-Observation-tobaccouse-uv-ips.md)

This profile constrains the Observation resource to represent Tobacco use assessment in a patient summary.

[Organization (IPS)](StructureDefinition-Organization-uv-ips.md)

This profile constrains the Organization resource to represent an organization that acts as performer or observer for a result observation (laboratory, pathology or imaging), or as performer for a procedure.

[Patient (IPS)](StructureDefinition-Patient-uv-ips.md)

This profile represents the constraints applied to the Patient resource by the International Patient Summary (IPS) FHIR Implementation Guide and describes the minimum expectations for the Patient resource when used in the IPS composition or in one of the referred resources.

[Practitioner (IPS)](StructureDefinition-Practitioner-uv-ips.md)

This profile constrains the practitioner resource to represent a practitioner acting as observer for these imaging results.

[PractitionerRole (IPS)](StructureDefinition-PractitionerRole-uv-ips.md)

This profile constrains the PractitionerRole resource to represent a practitioner acting as observer for observation results for a specified organization.

[Procedure (IPS)](StructureDefinition-Procedure-uv-ips.md)

This profile represents the constraints applied to the Procedure resource by the IPS project, which specifies an entry of the History of Procedure for the international patient summary based on the FHIR standard R4.

[Specimen (IPS)](StructureDefinition-Specimen-uv-ips.md)

This profile constrains the Specimen resource to represent the characteristics of a biological specimens in the context of laboratory results integrated to a patient summary.

