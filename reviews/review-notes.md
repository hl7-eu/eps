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

## Profiles

- **Bundle entry slices** (decided 2026-10-30). Not every resource referenced by a Composition section has a Bundle entry slice (e.g. medical test results, travel, consent). The entry slicing is open, so they are allowed without a dedicated slice. Reviews do not raise the missing slices again.
- **Section entry rules** (decided 2026-10-30). Pregnancy History, Patient Story and Patient History have no `entry only` rule. Kept as they are.
- **Medication Summary slice** (decided 2026-10-30). The `medicationStatementOrRequest` slice keeps its name and allows only `MedicationStatementEuEps`. MedicationRequest, MedicationAdministration and MedicationDispense stay allowed without a profile or a Bundle slice.

## FSH sources

- **Unused rulesets** (decided 2026-10-30). The 12 unused rulesets in `rulesSet-common.fsh` and `rulesSet-obligations.fsh` are kept. Reviews do not raise them again.
- **Unused aliases** (decided 2026-10-30). Unused aliases in `alias-*.fsh` are kept. Duplicate aliases are still to be avoided.

## QA and ignoreWarnings

- **Additional bindings without a key** (decided 2026-10-23). Additional bindings defined in this guide have a `key`. The `ext-ab-1` warnings inherited from EU Core 2.0.1 are suppressed, with one exact entry per element. Remove them when EU Core adds the keys.
- **Template QA warnings are fixed, not suppressed** (decided 2026-10-23). When a page from the base template is not well-formed (e.g. `searchform.html`), override it in `ig-template/content/`. Don't add it to `ignoreWarnings.txt`.

## Configuration

- **`hl7.terminology.r4` is not pinned** (decided 2026-10-03). The IG Publisher resolves the version; the 1.0.0 review build used 7.4.0. Reviews do not raise the missing pin again.
- **IHE MPD pre-release dependency.** `ihe.pharm.mpd.r4#1.0.0-comment-2` is kept until a published version exists, and is documented in `knownIssues.md`.
