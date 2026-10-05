# Review notes – HL7 Europe Patient Summary

Decisions already taken for this guide. Consistency reviews do not raise these as open items again; they list them once under *Won't fix (accepted)*.

## Xt-EHR alignment

- **Model version.** The mapping pages follow the Xt-EHR EHDS Logical Models **1.0.0**. A local copy is kept in `_xtehr_1.0/` for alignment checks. Model links go through `xtehr_models` in `input/includes/variables.html`.
- **Common models are mapped in EU Base.** Patient, HealthProfessional, Organisation, Alert, AllergyIntolerance, Condition, Observation, Procedure, Immunisation and Medication are mapped in HL7 Europe Base and Core (`eu_base`, 2.0.1). The Model Map links there. This guide has local map pages only for the EPS-specific models.
- **Cardinality differences kept for 1.0.0** (decided 2026-10-02). The profiles stay as they are; the differences should be listed in `knownIssues.md`.
  - `EHDSMedicationUse.dosageInstructions` 1..1 vs `MedicationStatement.dosage` 0..*
  - `EHDSCurrentPregnancy.currentPregnancyStatus` 1..1 vs `Observation.value[x]` 0..1 (pregnancy status)
  - `EHDSAdvanceDirective.header.subject` 1..1 vs `Consent.patient` 0..1
- **LaboratoryObservation map.** `referenceRange` and `component.referenceRange` are mapped as a whole, without their sub-elements.
- **PatientSummary map.** `header.source` is not mapped, because `EHDSDocument` forbids it (max 0). `presentedForm` is `no-map`, as in EU Base.
- **`header.source` in Observation-based maps.** It is `no-map`, with the note "No direct native Observation element; consider extension or use note…", in LaboratoryObservation, CurrentPregnancy, PregnancyHistory and TravelHistory.

## QA and ignoreWarnings

- **Duplicate anchor on the complete Bundle page** (`Patient_f51071b2-…`). This is an IG Publisher rendering issue that appears when the Patient has an authored narrative. The narrative is kept, and the warning is suppressed (`input/ignoreWarnings.txt`).

## Configuration

- **`hl7.terminology.r4` is not pinned** (decided 2026-10-03). The IG Publisher resolves the version; the 1.0.0 review build used 7.4.0. Reviews do not raise the missing pin again.
- **IHE MPD pre-release dependency.** `ihe.pharm.mpd.r4#1.0.0-comment-2` is kept until a published version exists, and is documented in `knownIssues.md`.
