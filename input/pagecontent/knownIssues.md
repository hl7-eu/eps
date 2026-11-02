{% include variables.html %}
### Obligations

1. Obligations are only informative for this version of the guide. Further analysis is needed for consolidating them.
2. This version of the guide reuses the IPS obligations as they are, waiting for the obligations of the European electronic health record exchange format (EEHRxF). Some of them are therefore weaker than the cardinality set by the EPS profiles. For example, `Patient.identifier` is required (`1..*`) in [Patient (EPS)](StructureDefinition-patient-eu-eps.html) but has a *populate-if-known* obligation, and the History of Procedures and Medical Devices sections are required (`1..1`) in [Composition (EPS)](StructureDefinition-composition-eu-eps.html) but have a *SHOULD populate-if-known* obligation. In these cases the cardinality of the profile applies.

### Dependencies

1. This version of the guide depends on a pre-release version of the IHE Pharmacy Medication Prescription and Dispense (MPD) Implementation Guide (`ihe.pharm.mpd.r4#1.0.0-comment-2`). The dependency will be updated when a published version is available.
2. This version of the guide is aligned with, and maps to, the [Xt-EHR EHDS Logical Information Models]({{ xtehr_models }}) version 1.0. These models are expected to be replaced by the EHDS logical information models defined under Article 15 of the EHDS Regulation. The dependency and the related mappings will be updated once those models are available.

### Alignment with the Xt-EHR models

1. The following elements are required in the [Xt-EHR EHDS Logical Information Models]({{ xtehr_models }}) 1.0.0 but optional in the profiles of this guide. They are kept as they are for this version of the guide:
    - `EHDSMedicationUse.dosageInstructions` (`1..1`) is mapped to `MedicationStatement.dosage` (`0..*`) in [MedicationStatement (EPS)](StructureDefinition-medicationStatement-eu-eps.html) (see the [mapping](map-ehdsmedicationuse.html)).
    - `EHDSCurrentPregnancy.currentPregnancyStatus` (`1..1`) is mapped to `Observation.valueCodeableConcept` (`0..1`) in [Observation: Pregnancy - Status (EPS)](StructureDefinition-observation-pregnancy-status-eu-eps.html) (see the [mapping](map-ehdscurrentpregnancy.html)).
    - `EHDSAdvanceDirective.header.subject` (`1..1`) is mapped to `Consent.patient` (`0..1`) in [Consent: Advance Directives (EPS)](StructureDefinition-consent-eu-eps.html) (see the [mapping](map-ehdsadvancedirective.html)).
2. `EHDSDevice.type` is `0..*` in the model, while `Device.type` is `0..1` in FHIR R4 (see the [mapping](map-ehdsdevice.html)).
