# HL7 Europe Patient Summary – Consistency Review for 1.0.0 (release after 1.0.0-ballot)

- **Date:** 2026-10-02. Last updated 2026-10-31 after a rebuild with IG Publisher 3.0.1 and a re-run of all checks. Items that have been fixed have been removed; they are listed under *Fixed since the first review* at the end of the report.
- **Scope:** FSH sources (`input/fsh`), narrative pages (`input/pagecontent`, `input/includes`), configuration (`sushi-config.yaml`, `publication-request.json`, `ig.ini`), examples, the latest IG Publisher QA output (`output/qa.*`) and `input/ignoreWarnings.txt`.
- **Build status:**
  - SUSHI reports 0 errors and 0 warnings (run of 2026-10-31).
  - The IG Publisher 3.0.1 run of 2026-10-31 22:26 was built as `hl7.fhir.eu.eps#1.0.0-ci-build`, status `draft`, release label `ci-build`. It includes all commits up to `b89c1ff`.
  - It reports **0 errors, 2 warnings and 50 information messages**, 0 broken links, plus 140 suppressed warnings and 500 suppressed hints. 33 of the information messages are the OID messages (7-2); 15 come from the new examples (see §7).

Severity: **High** means fix before publication. **Medium** means it should be fixed for 1.0.0. **Low** means cleanup or editorial.

File references are relative to the repository root. Line numbers are those of the current working copy.

Each open item has an id `<section>-<n>` (e.g. `3.1-2`). Ids are stable: fixed or accepted items keep their id when they move to *Won't fix (accepted)* or *Fixed since the first review*, and new items get the next free number.

---

## 1. Release blockers (High)

| ID | Area | Finding | Fix |
|---|---|---|---|
| 1-1 | Configuration | `sushi-config.yaml:6-11` still has `version: 1.0.0-ci-build`, `status: draft`, `releaseLabel: ci-build`, and there is no `publication-request.json`. The release cannot be published like this. | Set the release version, status and label (e.g. `1.0.0`, `active`, `trial-use` for an STU), add `publication-request.json`, and rebuild. |
| 1-2 | Jira spec | QA warning: the Jira specification file `FHIR-eu-eps.xml` is out of date with the artifacts and pages. It was updated in `802d156`, but the 10 obligation profiles added in `3030934` (FHIR-58110) came after, and the QA still reports it as out of date. | Replace it with the proposed file from the Publisher output, review it, and submit it to the HL7 JIRA-Spec-Artifacts repository. The title collisions (5-3) are fixed, so the keys will be correct. |

---

## 2. Configuration and publication

| ID | Sev | Location | Finding | Fix |
|---|---|---|---|---|
| 2-2 | Medium | `sushi-config.yaml` `groups:` | Only 2 groups. 13 profiles and the value set are in no group: patient, consent, device, deviceUseStatement, diagnosticReport, medicationStatement, procedure, the 4 pregnancy profiles, the travel profile, `gestational-age-loinc`. They show in the default group on the Artifacts page. | Add groups (e.g. "Entry profiles", "Terminology"), or put them in `EuPatientSummary` and rewrite its description ("entry profiles" currently lists only Bundle and Composition). |

---

## 3. Profiles (FSH)

### 3.1 Composition sections vs Bundle entry slices

No open items.


### 3.2 Invariants

| ID | Sev | Location | Finding | Fix |
|---|---|---|---|---|
| 3.2-3 | Low | `input/fsh/invariants/ips-pat-1.fsh:1`, `composition-eu-eps.fsh:382` | Two invariants reuse IPS ids (`ips-pat-1`, `ips-comp-1`) next to `eps-bundle-*` ids. IPS defines the same constraints, and they're already imposed through `imposeProfile`. | Keep the IPS ids only if the duplication is intended; otherwise use `eps-` ids or rely on the imposed IPS profiles. |

### 3.3 Leftovers in FSH

- **[3.3-1]** **Stale TODO comments:** `input/fsh/alias-systems.fsh:3, 31, 34, 40` ("to be checked"), `input/fsh/profiles/bundle-eu-eps.fsh:155`. Also "Check if this is appropriate (see  support)" on the `ImposeProfile` lines of `device-eps.fsh:9`, `deviceUseStatement-eps.fsh:10` and `procedure-eps.fsh:8`, and `// Parent: DeviceUvIps` in `deviceUseStatement-eps.fsh:3`.

### 3.4 Terminology

- **[3.4-1]** `input/fsh/profiles/observation-travel-eps.fsh:18`: `valueCodeableConcept from $iso3166-1-2` has no strength, so SUSHI makes it `required`. Make the strength explicit, so the binding is visibly intended.

---

## 4. Obligation profiles

| ID | Sev | Location | Finding | Fix |
|---|---|---|---|---|
| 4-2 | Medium | `patient-eps.fsh:11` / `patient-obl-eu-eps.fsh:10`; `composition-obl-eu-eps.fsh:82-88` | Some obligations are weaker than the EPS cardinality. `Patient.identifier` is `1..*` (FHIR-58492) but has *populate-if-known*. `sectionProceduresHx` and `sectionMedicalDevices` are `1..1` but have *SHOULD populate-if-known*. These are the IPS obligations, copied as they are, while EPS tightened the cardinality. Since `3030934` the cardinality and the obligation are in different profiles. | Align the obligations with the cardinality (e.g. *SHALL populate*), or say on the Obligations page that the cardinality takes precedence. |

---

## 5. Examples

| ID | Sev | Location | Finding | Fix |
|---|---|---|---|---|
| 5-2 | Medium | `input/fsh/examples/__5042-537688-1-eps-composition.fsh` | 15 standalone examples that repeat the complete Bundle example (same patient, same content). Their titles are now distinct (5-3), but the content is still duplicated. | Keep either the standalone set or the Bundle. |
| 5-4 | Low | examples | Ids follow three patterns: `Instance-Bundle-…`, `EPSExampleBundle01…`, `Composition-…`/`DeviceUse-…`. In Bundle 01, all 4 `fullUrl` UUIDs differ from the resource ids. The two Bundle identifiers differ in form (one has `assigner`). | Pick one id pattern for new examples. Align the Bundle identifiers. |

---

## 6. Narrative pages

### 6.1 `changes.md`

| ID | Sev | Line | Finding → Proposed |
|---|---|---|---|
| 6.1-1 | Medium | – | Missing changes made since `1.0.0-ballot`: FHIR-57679 (EHDS Art. 14 in the scope), FHIR-58104 (alignment with Xt-EHR 1.0.0), FHIR-58138 (`Bundle.timestamp` 1..1), FHIR-58492 (`Patient.identifier` 1..*), FHIR-58509 (new MedicationStatement obligation profile; MedicationRequest obligation profile removed), FHIR-58917 (Change Log page), FHIR-58918 (mapping tables reviewed), FHIR-59046 (Model Map names), FHIR-59501 (new Variance Statement page). **New:** FHIR-58110 (obligations moved to separate, informative obligation profiles), FHIR-58508 (structural and obligation profiles reference only their own kind), FHIR-58258 (delegation note in the Composition profile), FHIR-59755 (Pregnancy History section uses the EPS pregnancy profiles). Also: EU Base and IPS aligned to 2.0.1 (`10fe8d9`), EU Extensions 1.3.1 (`9437507`), MedicationRequest Bundle slice removed (`035638d`), old allergy mapping page removed. → Add them. |

### 6.2 Stale ballot or preview wording

No stale ballot or preview wording. The two hits in `changes.md:1,3` correctly refer to the ballot version.

### 6.3 Broken or inconsistent links

| ID | Sev | Location | Finding → Fix |
|---|---|---|---|
| 6.3-1 | Low | `input/pagecontent/variance.md:15, 55` | The link text "current" points to the versioned 2.0.1 pages. → Use "published version" or remove the extra link. |

There are no `build.fhir.org`, `/current/` or `file://` links. All Xt-EHR, EU Base and IPS links go through `input/includes/variables.html` (`1.0.0`, `2.0.1`, `2.0.1`), and the 10 EU Base map pages that the Logical Model Mappings page links to are online. The regulation link (`index.md:31`) points to the adopted text (CELEX 32025R0327).

### 6.4 Content inconsistencies

| ID | Sev | Location | Finding → Proposed |
|---|---|---|---|
| 6.4-9 | Low | `input/pagecontent/index.md:29`, `introduction.md:1` | **New:** Two different definitions of the EPS. The home page says "a standardized non-exhaustive health data set"; the Introduction says "a standardized, cross-border health data set… particularly in unplanned care scenarios". → Use one definition on both pages (e.g. "a standardised, non-exhaustive, cross-border health data set… particularly in unplanned care"). |
| 6.4-10 | Low | `input/pagecontent/knownIssues.md:9` | **New:** "Xt-EHR EHDS Logical Information Models version 1.0" → "version 1.0.0" (as on the other pages). "The dependency and the related mappings will be updated" → "The alignment and the related mappings will be updated": the models are not a package dependency. |
| 6.4-12 | Medium | `input/pagecontent/variance.md:17-38, 59-89, 96-100` | **New (2026-10-30):** the page predates the obligation split (`3030934`, FHIR-58110). It still describes the EPS profiles as carrying the IPS obligations (`:19`), lists only the EU Core-based obligation profiles (`:27-37`, `:80-89`), and doesn't list the 10 new ones (Bundle, Composition, Device, DeviceUseStatement, DiagnosticReport, the 3 pregnancy Observations, Patient, Procedure). It doesn't say that the obligation profiles are informative. The editor decided to leave the page unchanged for now (2026-10-30). → Revise the page: structural EPS profiles vs informative obligation profiles, the derivation tables, and the "Must Support, Obligations and Actors" section. |

### 6.5 Language and editorial conventions

- **[6.5-4]** **Markup.**
  - The 11 map pages and `modelmap.xml` contain `<head>`/`<title>` (line 4), and empty `<a>`/`<p>` elements (lines 18-19), inside page fragments.
  - **New:** `input/includes/composition-eu-eps-notes.xml:4`: an empty `<a> </a>` (carried over from the old notes page).

### 6.6 `knownIssues.md`: suggested additions

- **[6.6-2]** Known cardinality differences with Xt-EHR 1.0.0, kept as they are for this release:
  - `EHDSMedicationUse.dosageInstructions` 1..1 vs `MedicationStatement.dosage` 0..*
  - `EHDSCurrentPregnancy.currentPregnancyStatus` 1..1 vs `Observation.value[x]` 0..1
  - `EHDSAdvanceDirective.header.subject` 1..1 vs `Consent.patient` 0..1
  - Optionally, `EHDSDevice.type` 0..* vs `Device.type` 0..1. This is a FHIR R4 limit, documented in `map-ehdsdevice.xml` since `7a842ec`.
- **[6.6-5]** **New:** The Bundle has no entry slices for some resources referenced by sections (medical test results, travel, consent, DocumentReference, ClinicalImpression, ImmunizationRecommendation, MedicationRequest/Administration/Dispense). They are allowed, since the slicing is open (3.1-1, won't fix).

---

## 7. QA output and `ignoreWarnings.txt`

This section is based on the last IG Publisher 3.0.1 run of 2026-10-31, built as `1.0.0-ci-build` / `draft` / `ci-build`.

**Visible messages:** 0 errors, 2 warnings and 50 information messages.

The 6 errors of the first 2026-10-30 run (1-4) and the about 420 information messages on the obligation profiles (7-13) are gone. The 12 errors of the run of 2026-10-23 (5-6) are gone too. The 15 information messages added on 2026-10-31 come from the new examples (5-1) and are expected: the standalone DiagnosticReport refers to its lab results by `urn:uuid`, which only resolves inside the Bundle ("does not match any known slice", 8+1); the Consent and travel Observation have no slice in the open IPS and EPS Bundle slicing; the Travel History section has no slice in the IPS Composition; the Consent `policy.uri` is an example.org address; and the IPS DiagnosticReport status value set refers to a draft code system.

| ID | Message | Resources | Fix |
|---|---|---|---|
| 7-1 | Warning: the Jira specification file appears to be out of date. | `FHIR-eu-eps.xml` | See 1-2. |
| 7-2 | Warning: "The resource ValueSet/gestational-age-loinc **should** have an OID assigned", plus information messages "… **could usefully** have an OID assigned" (all profiles and the IG). The wildcard on line 75 has 0 uses: Publisher 3.0.1 links to `ig-guidance/oids.html`, not to the `fhir-tools-ig` URL in the entry. | all StructureDefinitions, `ValueSet-gestational-age-loinc`, the IG | Set the `auto-oid-root` IG parameter (or assign OIDs); that fixes both wordings. Otherwise shorten line 75 to `%could usefully have an OID assigned%`. |
| 7-3 | Information: the parameter `system-version` has the same name as a core operation parameter but has type uri. | `Parameters-exp-params` | The suppression on line 69 uses an older message text (0 uses). Replace it with the current text. |
| 7-4 | Lines 41-58: the 18 "no explicitly linked examples" entries for the obligation profiles have 0 uses. Publisher 3.0.1 no longer emits that message; the obligation profiles are covered by line 10 instead (7-6). Line 49 also contains zero-width spaces (U+200B). | `input/ignoreWarnings.txt` | Delete lines 40-58. |

**Publication request check:** `publication-request.json` is missing (see 1-1).

**Suppressed messages:** 142 warnings and 498 hints, from 41 entries. 21 entries have 0 uses: lines 41-58 (7-4), 63 (7-9), 69 (7-3) and 75 (7-2).

**Suppressions that hide fixable issues:**

| ID | Lines | Entry (uses) | Fix |
|---|---|---|---|
| 7-5 | 71-72 | "does not match any known slice defined in the profile …/bundle-eu-eps" (21) | These are the lab Observations, the Consent and the travel Observation of the complete example, which have no Bundle slice by decision (3.1-1, won't fix), so the entry stays. It ends with the profile version `1.0.0-ci-build`, so it stops matching once the version is set for the release (1-1), and the 19 messages come back. Replace the version with `%` (`…/bundle-eu-eps|%`), and fix the typo in the comment ("bunlde"). |
| 7-7 | 24-25 | `All_observations_should_have_a_performer` (19) | A blanket suppression by message id. Add a performer (the lab Organization) to the example lab Observations, and delete it. |
| 7-8 | 12-19 | `Terminology_TX_NoValid_3_CC` (41), `TYPE_SPECIFIC_CHECKS_DT_CANONICAL_MULTIPLE_POSSIBLE_VERSIONS` (65), `TYPE_SPECIFIC_CHECKS_DT_QTY_UCUM_ANNOTATIONS` (10) | Blanket suppressions by message id that will also hide new occurrences. Check the current hits once, then narrow them to message texts, or document why they are global. |

The wildcard on line 7 (5 uses, R5 document rule) is still justified. Line 75 (OIDs) no longer matches anything; see 7-2.

**Stale entries** (0 uses, safe to delete), by line in `ignoreWarnings.txt`:

- **[7-9]** Line 63: "Reference to draft CodeSystem http://terminology.hl7.org/CodeSystem/consentscope|4.0.1".
- Lines 41-58, 69 and 75 also have 0 uses; see 7-4, 7-3 and 7-2.

---

## 8. Repository hygiene

- **[8-1]** `scripts/__pycache__/config.cpython-312.pyc` and `scripts/generateMapDiagramsFiles/__pycache__/config.cpython-312.pyc` are committed. Remove them and add `__pycache__/` to `.gitignore`.
- **[8-2]** `scripts/_generateMapDiagrams.bat` and `scripts/generateMapDiagramsFiles/` generate the PlantUML map diagrams. Those pages are commented out in `sushi-config.yaml` (lines 59-62), and their sources were deleted. The scripts also use absolute local paths. Delete them or move them to `_attic`.
- **[8-3]** `models-src/`: `__gen-fsh-from-xls.bat` and `config.ini` have absolute paths and write to `input/fsh/model-maps`, which no longer exists. The folder also holds the mapping workbook and the eHN guideline PDF (check that redistributing the PDF is allowed). Archive it or document how it's used.
- **[8-4]** `Requirements-fromNarrative.json` at the repository root is committed but not part of the build. Delete it, or move it to `input/resources` if it should be published.
- **[8-5]** Reference copies are committed: `_attic/` (101 files), `_ips_2.0/` (160) and `_xtehr_1.0/` (105). `_xtehr_1.0` is used for the Xt-EHR alignment check, so keep it. Decide whether the other two are still needed.
- **[8-6]** `sushi-config.yaml` has many commented-out page entries (IPS comparison pages, map diagrams, `ips-diff.md`, `overview.md`, `recommendations.md`). Remove them before the release.
- **[8-7]** **New:** `input/images/experts.png` (added in `033afaf`) is 1.5 MB, and `authors.md` shows it at 40% width. Compress or resize it (a few hundred KB is enough). This keeps the published guide and the package small.
- **[8-8]** **New:** `ig-template/` contains 13 IG Publisher cache files (`.index.db`, `.index.json` in `content/`, `includes/`, `package/` and the `assets/` folders). Remove them from git and add `.index.db` and `.index.json` to `.gitignore`.

---

## 9. Suggested order of work

1. Delete the stale entries (7-4, 7-9), fix 7-2, then rebuild.
2. Narrow the suppressions 7-5 and 7-7.
3. Groups (2-2), and obligations vs cardinality (4-2).
4. Duplicated example sets (5-2), then regenerate and submit the Jira spec file (1-2).
5. Narrative pages: Variance (6.4-12), Known Issues (§6.6, 6.4-10), home page and Introduction (6.4-9), then `changes.md` (6.1-1).
6. QA leftovers: 7-3, 7-4, 7-9.
7. Release configuration (1-1), rebuild, re-run this review.
8. Cleanup: §3.3, §3.4, §6.5, §8.

---

## Won't fix (accepted)

Items reviewed and accepted as they are. They keep their id and the structure of the section they come from; the last column gives the rationale.

| ID | Sev | Location | Finding | Rationale |
|---|---|---|---|---|
| 3.1-1 | Medium | `input/fsh/profiles/bundle-eu-eps.fsh:99-135` | Some resources referenced by sections have no Bundle entry slice: medical test results (`medicalTestResult-eu-core`), travel (`observation-travel-eu-eps`), consent (`consent-eu-eps`), DocumentReference, ClinicalImpression, ImmunizationRecommendation and MedicationRequest/Administration/Dispense. | Won't fix, decided by the editor (2026-10-30). The entry slicing is open (`bundle-eu-eps.fsh:90`), so these resources are allowed without a dedicated slice. List it in `knownIssues.md` (6.6-5). |
| 3.1-2 | Medium | `input/fsh/profiles/composition-eu-eps.fsh:318`, `:354`, `:380` | No `entry only` rule on three sections: Pregnancy History allows any resource type next to its slices, Patient Story allows any type (as documented), and Patient History is commented "purely narrative" but allows entries. | Won't fix, decided by the editor (2026-10-30). |
| 3.1-3 | Low | `input/fsh/profiles/composition-eu-eps.fsh:128-135` | The only Medication Summary slice is named `medicationStatementOrRequest` but allows only `MedicationStatementEuEps`; MedicationRequest, MedicationAdministration and MedicationDispense are allowed with no profile and have no Bundle slice. | Won't fix, decided by the editor (2026-10-30). Not listed in `knownIssues.md` either (6.6-4). |
| 3.3-3 | Low | `input/fsh/rulesSet/rulesSet-common.fsh`, `rulesSet-obligations.fsh` | 12 unused rulesets: `ExtensionContext`, `SetFmmAndStatusRuleInstance`, `NoSubSectionsRules`, `SectionElementsRules`, `SectionCommonRules`, `SNOMEDCopyrightForVS`, `NPUCopyrightForVS`, `NIBSCCopyrightForVS`, `ObligationElement`, `ObligationSet1`–`3`. | Won't fix, decided by the editor (2026-10-30). |
| 3.3-4 | Low | `input/fsh/alias-*.fsh` | 172 of 217 aliases are unused (`$composition.version-r5` became unused when its commented-out rule was removed in `ade6d47`) (mostly eHDSI value sets, IPS profiles and R5 cross-version extensions). | Won't fix, decided by the editor (2026-10-30). The duplicates are fixed in `ade6d47`. |
| 3.4-3 | Low | `input/fsh/rulesSet/rulesSet-common.fsh:76` | The LOINC copyright says "1995-2020". | Won't fix, decided by the editor (2026-10-31). The SNOMED copyright mojibake, also part of this item, is fixed in `4c7057b`. |
| 6.4-5 | Medium | `medicationStatement-eu-eps`, `observation-pregnancy-status-eu-eps`, `consent-eu-eps` | Three Xt-EHR 1.0.0 elements are 1..1 but optional in the profiles (`dosageInstructions`, `currentPregnancyStatus`, `header.subject`). | The editor decided to keep the profiles unchanged for this release (2026-10-02). Document them in `knownIssues.md` (6.6-2). |
| 6.4-6 | Low | `map-ehdslaboratoryobservation.xml:246, 332` | `referenceRange` and `component.referenceRange` are mapped as a whole, without their sub-elements. | Accepted by the editor: the mapping as a whole is enough. |
| 6.4-7 | Low | `map-ehdspatientsummary.xml` | `header.source` is not mapped. | `EHDSDocument` forbids it (max 0), so there is nothing to map. |
| 6.4-11 | Medium | `input/pagecontent/copyright.md:2-4` | The statement "protected by Copyright 2026 HL7 Europe" sits next to the CC0 1.0 dedication, which waives copyright. | The editor decided to keep the current copyright statement (2026-10-31). |
| 6.6-4 | Low | `input/pagecontent/knownIssues.md` | Proposed known issue: MedicationRequest, MedicationAdministration and MedicationDispense are allowed in the Medication Summary section but not profiled (3.1-3). | Won't fix, decided by the editor (2026-10-31): not added to Known Issues. |

---

## Fixed since the first review

**Commit `b89c1ff`**

- **[6.5-1]** British spellings: "standardised" (`index.md`, `introduction.md:1`), "realised", "organisations" (`index.md`, `introduction.md:32`), "recognised" (`introduction.md:25`), "authorised" (`copyright.md:16`). "harmonization" went with 6.4-4.
- **[6.5-2]** The Xt-EHR logo alt text is "Xt-EHR logo" (`index.md:18`); "an European" → "a European" (with 6.4-4).
- **[6.5-4]** (part) The mojibake "patientâ€™s" is now "patient’s" (`composition-eu-eps.fsh:351`). The 13 text files without a trailing newline now end with one (4 pages, 2 map pages, `fragment-head.html` and 6 FSH files). The `authors.md` figure has no empty `<p>` elements, and the `<img>` has `alt` text. The `<head>`/`<title>` and empty `<a>` parts are still open.
- **[6.5-3]** "e.g.recent" → "e.g. recent" (`composition-eu-eps.fsh:360`). The `ObservationTravelEuEps` description now says "to represent a country visited by the patient" instead of the US "to record, search, and fetch travel history" (`observation-travel-eps.fsh:5`).
- **[6.4-1]** `variance.md` lists `Patient.identifier 1..*` (IPS `0..*`, FHIR-58492) among the requirements EPS adds to IPS.
- **[6.4-2]** `missing-data.md` no longer says "performedDateTime is must support": performedDateTime is a good choice because the IPS obligations ask the Creator to be able to populate it (link to `procedure-obl-eu-eps`). The IPS name "Observation Results - Laboratory/Pathology" is replaced by a link to Observation: Medical Test Result (EU core).
- **[6.4-4]** `index.md` Purpose keeps only the IPS sentence; the repeated "harmonisation… prepare the ground for the E-EHRxF" is dropped ("an European" → "a European" in the same sentence). The acronym is harmonised to "European electronic health record exchange format (EEHRxF)", as in the EHDS Regulation: `index.md` (Scope; "the European EHRxF" → "the EEHRxF") and `introduction.md:13`.
- **[6.4-8]** The `accreditationStatus` row of the LaboratoryObservation map now has Resource **Observation**, and the note links the Laboratory Accredited extension (EU Extensions 1.3.1).

**Commit `6875781`**

- **[5-1]** No inline instance existed for the four profiles, so four new `#example` instances were written for the complete example (Petra Schwartz) and added to its Bundle and Composition (`input/fsh/examples/__5042-537688-1-eps-example.fsh`): `Procedure: Appendectomy, 1998-04-12` (History of Procedures, which was "no known procedures"), `DiagnosticReport: Lipid panel, 2024-07-15` (Results, grouping the 4 lipid results), `Consent: Advance directive, do not resuscitate` (new Advance Directives section) and `Observation: Country visited, Brazil, 2025-02` (new Travel History section). Every structural profile now has an example. Confirmed by a Publisher rebuild: 0 errors.
- **[7-6]** Follows from 5-1: the suppression on lines 9-10 now matches only the 19 obligation profiles (19 uses), as its comment says.
- **[6.3-2]** `index.md` links "Xt-EHR Joint Action" to `https://www.xt-ehr.eu/` and the models through `{{ xtehr_models }}` (1.0.0); `logicalmodels.md:5` uses `{{ xtehr_models }}`. `index.md` now includes `variables.html`.
- **[6.3-3]** `copyright.md` links the HL7 IPS Copyrights page (`{{ ips_base }}copyrights.html`, IPS 2.0.1) and now includes `variables.html`. 0 broken links.

**Commit `9d86441`**

- **[5-5]** The four pregnancy example titles no longer have a space before the colon: "Observation: Pregnancy Status", "Observation: Pregnancy Outcome", "Observation: Pregnancy Expected Delivery Date" and "Observation: Pregnancy Gestational Age" (`input/fsh/examples/observation-pregnancy*-eps-example.fsh:3`). No title collisions.
- **[6.1-2]** `changes.md`: "summarizes" → "summarises", "xtEHR" → "Xt-EHR" (lines 8, 23), "Composition (EU EPS)" → "Composition (EPS)", and the Xt-EHR entry now reads "Aligned with the **Xt-EHR EHDS Logical Models** 1.0.0 (previously 0.3.0)", since the models are not a package dependency. The two `changes.md` items in 6.5-1 and 6.5-2 are fixed with it.
- **[4-4]** The `EpsObligations` group description now says "IPS-derived obligation profiles for EPS" instead of "obligation-only profiles" (`sushi-config.yaml`), since 8 of them also narrow references to other obligation profiles.
- **[4-3]** The Obligations page now has a table that lists, for each of the 19 profiles, its obligation profile (11 EPS and 8 EU Core profiles), and names the three profiles without one: Consent, Pregnancy - Gestational Age and Country Visited (`input/pagecontent/obligations.md`).
- **[4-1]** The `MedicationStatementOblEuEps` description now says "…on the MedicationStatement (EPS) profile", matching its parent and the other obligation profiles (`input/fsh/obligations/medicationstatement-obl-eu-eps.fsh:5`).
- **[2-7]** The Model Map page is now titled "Logical Model Mappings", in the menu as well (`sushi-config.yaml`); the link text in `variance.md:21` follows. Together with the labels fixed in `80c4a6b`, every menu label now matches its page title.

**Commit `80c4a6b`**

- **[3.4-2]** The commented-out bindings are deleted: `dosage.route` (`EHDSIRouteofAdministration`) in `medicationStatement-eps.fsh`, and `bodySite` (`SNOMEDCTBodyStructures`) in `procedure-eps.fsh`.
- **[2-7]** (part) Menu labels now match the page titles: "Introduction", "Known Issues", "Downloads" and "Expansion Parameters" (`sushi-config.yaml` `menu:`). "Mapping to Profiles" / "Model Map" is still open.

**Commit `4c7057b`**

- **[3.4-3]**, **[6.5-4]** (part) The mojibake `Â©` in the SNOMED copyright ruleset is fixed (`input/fsh/rulesSet/rulesSet-common.fsh:72`). The LOINC copyright years (3.4-3) and the mojibake in `composition-eu-eps.fsh:351` (6.5-4) are still open.

**Commit `ade6d47`**

- **[3.3-2]** Commented-out FSH removed: the commented instances and entries in the examples (about 1,430 lines in `__5042-537688-1-eps-composition.fsh`, plus single lines in `__5042-537688-1-eps-example.fsh` and the Austrian Bundle example), the `/* … */` blocks in `bundle-eu-eps.fsh`, the commented rules in `composition-eu-eps.fsh`, `device-eps.fsh`, `procedure-eps.fsh`, `rulesSet-common.fsh` and `rulesSet-obligations.fsh`. Stale comments fixed: `// ObservationResultsEuEps` on the CarePlan slice is removed, and the Patient History heading no longer says "Travel History". The commented `bodySite` binding in `procedure-eps.fsh:22` is kept for 3.4-2. SUSHI reports 0 errors, and the generated resources are byte-for-byte identical.
- **[3.3-4]** (part) The three duplicate aliases are removed, keeping the first definition: `$allergyintolerance-clinical` and `$list-empty-reason` (`alias-systems.fsh`), and `$eHDSIMedicalDevice` (`alias-valuesets.fsh`). The generated resources are unchanged.
- **[3.2-1]** The `eps-bundle-patient-ref` description now lists Consent, as the expression checks it (`input/fsh/profiles/bundle-eu-eps.fsh:15`).
- **[3.2-2]** The `xpath` rule of `ips-comp-1` is deleted (`input/fsh/profiles/composition-eu-eps.fsh:388-391`). SUSHI reports 0 errors.

**Commit `0e991cd`**

- **[1-3]** (FHIR-59755) The Pregnancy History section now uses the EPS profiles: `pregnancyStatus` → `ObservationPregnancyStatusEuEps`, `pregnancyOutcome` → `ObservationPregnancyOutcomeEuEps` (`input/fsh/profiles/composition-eu-eps.fsh`). `ObservationPregnancyStatusEuEps.hasMember` references `ObservationPregnancyEddEuEps`; its short and definition no longer mention gestational age, which is not allowed there, and the stale comment is removed (`observation-pregnancyStatus-eps.fsh:25-28`). The obligation profiles point to the matching obligation profiles (`composition-obl-eu-eps.fsh`, `observation-pregnancy-status-obl-eu-eps.fsh`). The section keeps its `gestationalAge` slice. Confirmed by a Publisher rebuild: 0 errors.

**Commit `d7bfced`**

- **[7-14]**, **[7-10]** The duplicate anchor `Patient_f51071b2-…` on the complete Bundle page is no longer reported (0 uses in the 2026-10-30 builds); the template move in `b09fefe` fixed the rendering. The suppression is deleted from `input/ignoreWarnings.txt`, and the decision from `reviews/review-notes.md`. 7-10 is no longer an accepted item.

**Commit `1d6b20f`**

- **[1-4]** New in this run, and fixed. `CompositionOblEuEps` widened the `legalAuthenticator` and `validator` slices of `attester.party`: SUSHI had copied the `attester.party` rule (from `28ef9bb`, FHIR-58508) to them, which gave 6 QA errors. The slice constraints of `CompositionEuEps` are now restated (`input/fsh/obligations/composition-obl-eu-eps.fsh:13-14`). Confirmed by a Publisher rebuild: 0 errors.

**Commit `e7aee6e`**

- **[7-13]** New in this run, and fixed. The suppressions for the deprecated `maxValueSet` and `regex` extensions and for the obligation extension slice (`input/ignoreWarnings.txt:61, 62, 66`) pinned the version `5.3.0`; the Publisher loads 5.4.0. They now end with `|%`, so they match any version. Confirmed by a Publisher rebuild: information messages went from 456 to 35.

**Rebuild of 2026-10-30**

- **[5-6]**, **[7-11]**, **[7-12]** Confirmed by the IG Publisher 3.0.1 rebuild: the 12 `ele-1` errors, the `ext-ab-1` warnings and the `searchform.html` warnings are gone.

**Commit `b431cb7`**

- **[5-3]** Example titles no longer collide (case and text in parentheses ignored), so the Jira spec file and the table of contents get distinct entries. The multi-language template reports duplicate titles of `#example` resources as errors; there were three. Medications, immunizations and vital signs in the complete Bundle (`__5042-537688-1-eps-example.fsh`) are now named by content and date (e.g. "Medication: Clopidogrel 75 mg oral tablet", "Immunization: SARS-CoV-2 mRNA vaccine, 2021-03-01", "Vital Signs: Body weight, 2024-07-08"). The seven instances of the standalone Composition example (`__5042-537688-1-eps-composition.fsh`) that repeat a Bundle entry end with ", standalone Composition". The duplication of the two example sets is still open (5-2).

**Commit `b09fefe`**

- **[7-12]** Follow-up. The HL7 Europe template (`ig-template/`) now builds on the multi-language base: `hl7.fhir.template#current`, which resolves to `hl7.base.template` and then `fhir2.base.template`. `sushi-config.yaml` sets `i18n-default-lang: en`. The header, footer and search page overrides are rebased on the translated fragments, and the HL7 Europe branding (`hl7eu.css`) is kept. Pages are now generated under `output/en/`, so the six package and example links in `downloads.md` use `../`. Verified with two Publisher builds on 2026-10-23: the template chain loads, there are 0 broken links, and no warnings come from the template.

**Commit `203a3b0`**

- **[5-6]** Follow-up. The issuer `http://hl7.org/fhir/NamingSystem/gs1-di`, the R4 value for GS1, gave "No definition could be found for URL value", because no loaded package defines that NamingSystem. The three Device examples now use `http://example.org/fhir/NamingSystem/gs1-di`.

**Commit `ac7095e`**

- **[5-6]** New in this run, and fixed. The three Device examples (`Device-0b89dcab-…` in `__5042-537688-1-eps-composition.fsh:1752`, and `Instance-Device-b3c78022-…` and `Instance-Device-575520ac-…` in `__5042-537688-1-eps-example.fsh:2106, 2140`) put the GS1 UDI string in `udiCarrier[0].id`, the element id. The carrier was therefore empty, and Publisher 3.0.1 reports `ele-1`. That caused the 12 QA errors, including the cascade errors on the complete Bundle (no profile match for the DeviceUseStatements, no matching `composition` slice). The UDI is now in `deviceIdentifier` (the GTIN), `issuer` and `carrierHRF` (the full string). SUSHI reports 0 errors; a Publisher rebuild is still needed.
- **[7-12]** New in this run, and fixed. The Publisher reported 8 warnings, "`output/searchform.html`: The html source is not well formed". The page comes from the base template (`hl7.fhir.template`): it has an unclosed `<img>`, unbalanced `</div>`s, Jekyll placeholders (`{{site.data.info.assets}}`) that are never resolved, a footer copied from `hl7.fhir.us.hai`, and a typo ("curent"). Added a well-formed override, `ig-template/content/searchform.html`, with the HL7 Europe logos and footer and relative asset paths. Per the editor's decision, this is fixed, not suppressed. It should also be reported upstream.
- **[7-11]** New in this run, and fixed. Publisher 3.0.1 appends " at `<element>`" to the `ext-ab-1` message ("Additional Bindings SHOULD have a key"), so the old suppression matched nothing, and 12 warnings were visible. The only additional binding defined in this guide (`Device.type`, `input/fsh/profiles/device-eps.fsh:17-25`) now has `key = myhealtheu-medical-device`; that removes 2 warnings. The other 10 are inherited from EU Core 2.0.1 (AllergyIntolerance, Condition, Immunization, Medication, MedicationStatement) and can't be fixed here. They are suppressed with one exact entry per element (`input/ignoreWarnings.txt:32-38`), so new keyless bindings still show. SUSHI reports 0 errors.

**Commit `3436d6c`**

- **[6.5-2]** (part) `knownIssues.md`: "Further analysis are needed" → "Further analysis is needed".

**Commit `77b7c0d`**

- **[6.5-2]** (part) `index.md`: "to define how to define" removed from the Scope paragraph.

**Commit `530206b`**

- **[6.4-3]** Resolved the three yellow rows in the LaboratoryObservation map (`accreditationStatus`, `previousResults`, `pointOfCareTest`; FHIR-58918). **[6.6-3]** (list them in Known Issues) is no longer needed. The new mapping of `accreditationStatus` has its own finding (6.4-8).
- **[2-1]**, **[6.6-1]** Added a "Dependencies" known issue for the pre-release `ihe.pharm.mpd.r4#1.0.0-comment-2` (`input/pagecontent/knownIssues.md`). `hl7.terminology.r4` stays unpinned by decision (see `reviews/review-notes.md`).

**Commit `3aa860c`**

- **[2-3]** Added `SetFmmAndStatusRule (1, draft)` to the 9 obligation profiles, `DeviceEuEps`, `DeviceUseStatementEuEps` and `ObservationTravelEuEps`. All 24 artifacts now have FMM 1 / draft.
- **[2-4]** Removed the Laboratory IG leftovers (`sushi-config.yaml` line 1, the commented lab groups) and the SUSHI template comments from `sushi-config.yaml`. Reduced `ig.ini` to its three settings. The commented-out page entries are still there (8-6).
- **[2-5]** Added `license: CC0-1.0` to `sushi-config.yaml`.
- **[2-6]** "European REALM" → "European realm" in the IG description.
