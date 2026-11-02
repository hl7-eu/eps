{% include variables.html %}
### Obligations

1. Obligations are only informative for this version of the guide. Further analysis is needed for consolidating them.

### Dependencies

1. This version of the guide depends on a pre-release version of the IHE Pharmacy Medication Prescription and Dispense (MPD) Implementation Guide (`ihe.pharm.mpd.r4#1.0.0-comment-2`). The dependency will be updated when a published version is available.
2. This version of the guide is aligned with, and maps to, the [Xt-EHR EHDS Logical Information Models]({{ xtehr_models }}) version 1.0. These models are expected to be replaced by the EHDS logical information models defined under Article 15 of the EHDS Regulation. The dependency and the related mappings will be updated once those models are available.

### Alignment with the Xt-EHR models

1. The following elements are required in the [Xt-EHR EHDS Logical Information Models]({{ xtehr_models }}) 1.0.0 but optional in the profiles of this guide. They are kept as they are for this version of the guide:
    - `EHDSMedicationUse.dosageInstructions` (`1..1`) is mapped to `MedicationStatement.dosage` (`0..*`) in [MedicationStatement (EPS)](StructureDefinition-medicationStatement-eu-eps.html) (see the [mapping](map-ehdsmedicationuse.html)).
    - `EHDSCurrentPregnancy.currentPregnancyStatus` (`1..1`) is mapped to `Observation.valueCodeableConcept` (`0..1`) in [Observation: Pregnancy - Status (EPS)](StructureDefinition-observation-pregnancy-status-eu-eps.html) (see the [mapping](map-ehdscurrentpregnancy.html)).
    - `EHDSAdvanceDirective.header.subject` (`1..1`) is mapped to `Consent.patient` (`0..1`) in [Consent: Advance Directives (EPS)](StructureDefinition-consent-eu-eps.html) (see the [mapping](map-ehdsadvancedirective.html)).
2. `EHDSDevice.type` is `0..*` in the model, while `Device.type` is `0..1` in FHIR R4 (see the [mapping](map-ehdsdevice.html)).
