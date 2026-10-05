# HL7 Europe Patient Summary – Consistency Review for 1.0.0 (release after 1.0.0-ballot)

- **Date:** 2026-10-02. Last updated 2026-10-03 after fixing 2-1 and 2-3 to 2-6. Items that have been fixed have been removed; they are listed under *Fixed since the first review* at the end of the report.
- **Scope:** FSH sources (`input/fsh`), narrative pages (`input/pagecontent`, `input/includes`), configuration (`sushi-config.yaml`, `publication-request.json`, `ig.ini`), examples, the latest IG Publisher QA output (`output/qa.*`) and `input/ignoreWarnings.txt`.
- **Build status:**
  - SUSHI 3.20.1 reports 0 errors and 0 warnings (run of 2026-10-02).
  - The IG Publisher v2.3.4 run of 2026-10-02 17:11 was built as `hl7.fhir.eu.eps#1.0.0-ci-build`, status `draft`, release label `ci-build`, and includes all commits up to `9437507`. The run started 5 seconds before that commit, but it already used its content (`hl7.fhir.eu.extensions.r4#1.3.1` is in the built ImplementationGuide), so the results are current.
  - It reports **0 errors, 2 warnings and 2 information messages**, plus 106 suppressed warnings and 651 suppressed hints.

Severity: **High** means fix before publication. **Medium** means it should be fixed for 1.0.0. **Low** means cleanup or editorial.

File references are relative to the repository root. Line numbers are those of the current working copy.

Each open item has an id `<section>-<n>` (e.g. `3.1-2`). Ids are stable: fixed or accepted items keep their id when they move to *Won't fix (accepted)* or *Fixed since the first review*, and new items get the next free number.

---

## 1. Release blockers (High)

| ID | Area | Finding | Fix |
|---|---|---|---|
| 1-1 | Configuration | `sushi-config.yaml:6-11` still has `version: 1.0.0-ci-build`, `status: draft`, `releaseLabel: ci-build`, and there is no `publication-request.json`. The release cannot be published like this. | Set the release version, status and label (e.g. `1.0.0`, `active`, `trial-use` for an STU), add `publication-request.json`, and rebuild. |
| 1-2 | Jira spec | QA warning: the Jira specification file `FHIR-eu-eps.xml` is out of date with the artifacts and pages (new Variance page, MedicationStatement obligation profile, removed pages). | Replace it with the proposed file from the Publisher output, review it, and submit it to the HL7 JIRA-Spec-Artifacts repository. Fix the title collisions in 5-3 first, so the keys are correct. |
| 1-3 | Profiles | The Pregnancy History section uses the **IPS** profiles, not the EPS ones: `pregnancyStatus` → `Observation-pregnancy-status-uv-ips` and `pregnancyOutcome` → `Observation-pregnancy-outcome-uv-ips` (`input/fsh/profiles/composition-eu-eps.fsh:324-332`). The Bundle slices and the mapping pages use the EPS profiles. The EPS EDD profile is not reachable from the Composition at all: `ObservationPregnancyStatusEuEps.hasMember` allows only the IPS EDD profile (`input/fsh/profiles/observation-pregnancyStatus-eps.fsh:25`). Its comment says gestational age is not allowed, yet the section has a `gestationalAge` slice. | Point the section slices to `ObservationPregnancyStatusEuEps` and `ObservationPregnancyOutcomeEuEps`. Let `hasMember` reference `ObservationPregnancyEddEuEps` (and `ObservationPregnancyGestationalAgeEuEps` if intended). Remove the stale comment. |

---

## 2. Configuration and publication

| ID | Sev | Location | Finding | Fix |
|---|---|---|---|---|
| 2-2 | Medium | `sushi-config.yaml` `groups:` | Only 2 groups. 13 profiles and the value set are in no group: patient, consent, device, deviceUseStatement, diagnosticReport, medicationStatement, procedure, the 4 pregnancy profiles, the travel profile, `gestational-age-loinc`. They show in the default group on the Artifacts page. | Add groups (e.g. "Entry profiles", "Terminology"), or put them in `EuPatientSummary` and rewrite its description ("entry profiles" currently lists only Bundle and Composition). |
| 2-7 | Low | `sushi-config.yaml` `menu:` | Menu labels differ from page titles: "Patient Summary" / Introduction, "Mapping to Profiles" / Model Map, "Known/Open Issues" / Known Issues, "Download" / Downloads, "Expansion parameters" / Expansion Parameters. | Use the same text in both. |

---

## 3. Profiles (FSH)

### 3.1 Composition sections vs Bundle entry slices

| ID | Sev | Location | Finding | Fix |
|---|---|---|---|---|
| 3.1-1 | Medium | `input/fsh/profiles/bundle-eu-eps.fsh:99-135` | Profiles that sections reference have no Bundle entry slice: `medicalTestResult-eu-core` (Results), `observation-travel-eu-eps` (Travel History), `consent-eu-eps` (Advance Directives, slice commented out). The 19 lab Observations of the complete example match no slice, which is hidden by a suppression (7-5). DocumentReference, ClinicalImpression, ImmunizationRecommendation and MedicationRequest/Administration/Dispense have no slice either. | Add slices at least for medical test results, travel and consent. Decide for the others and say so in the Bundle profile description. |
| 3.1-2 | Medium | `input/fsh/profiles/composition-eu-eps.fsh:318`, `:354`, `:380` | No `entry only` rule on three sections. Pregnancy History allows any resource type next to its slices. Patient Story allows any type (as documented). Patient History is commented "purely narrative" (`:379`) but allows entries. | Add `entry only Reference(Observation or DocumentReference)` to Pregnancy History, and `entry ..0` to Patient History if it is narrative only. Leave Patient Story as documented. |
| 3.1-3 | Low | `input/fsh/profiles/composition-eu-eps.fsh:128-135` | The only Medication Summary slice is named `medicationStatementOrRequest` but allows only `MedicationStatementEuEps`. MedicationRequest, MedicationAdministration and MedicationDispense are allowed with no profile. After `035638d` they also have no Bundle slice. | Rename the slice (e.g. `medicationStatement`), or add profiled slices. Document the choice (6.6-4). |

### 3.2 Invariants

| ID | Sev | Location | Finding | Fix |
|---|---|---|---|---|
| 3.2-1 | Medium | `input/fsh/profiles/bundle-eu-eps.fsh:15` | The `eps-bundle-patient-ref` description lists AllergyIntolerance, Immunization and ImmunizationRecommendation; the expression also checks Consent. | Add Consent to the description. |
| 3.2-2 | Low | `input/fsh/profiles/composition-eu-eps.fsh:490` | The `ips-comp-1` XPath has two identical branches and requires that `emptyReason` is absent, which the FHIRPath doesn't. XPath is no longer used by R4 tooling. | Delete the `xpath` rule. |
| 3.2-3 | Low | `input/fsh/invariants/ips-pat-1.fsh:1`, `composition-eu-eps.fsh:486` | Two invariants reuse IPS ids (`ips-pat-1`, `ips-comp-1`) next to `eps-bundle-*` ids. IPS defines the same constraints, and they're already imposed through `imposeProfile`. | Keep the IPS ids only if the duplication is intended; otherwise use `eps-` ids or rely on the imposed IPS profiles. |

### 3.3 Leftovers in FSH

- **[3.3-1]** **Stale TODO comments:** `input/fsh/alias-systems.fsh:3, 31, 34, 40` ("to be checked"), `input/fsh/profiles/bundle-eu-eps.fsh:155`. Also "Check if this is appropriate (see  support)" on the `ImposeProfile` lines of `device-eps.fsh:11`, `deviceUseStatement-eps.fsh:10` and `procedure-eps.fsh:8`, and `// Parent: DeviceUvIps` in `deviceUseStatement-eps.fsh:3`.
- **[3.3-2]** **Commented-out blocks:** 29 blocks. Most of them (about 1,100 lines) are commented-out instances in `input/fsh/examples/__5042-537688-1-eps-composition.fsh:235-1805` (see 5-2). In the profiles: 4 `/* … */` blocks in `bundle-eu-eps.fsh` (168-171, 204-217), plus `composition-eu-eps.fsh:13, 26, 52, 327-329`, `device-eps.fsh:8-9` and `procedure-eps.fsh:22-29`. Wrong or stale comments: `bundle-eu-eps.fsh:219` (`// ObservationResultsEuEps` on the CarePlan slice), and `composition-eu-eps.fsh:378` ("EPS Travel History Section" above the Patient History section).
- **[3.3-3]** **Unused rulesets:** 12 of them: `ExtensionContext`, `SetFmmAndStatusRuleInstance`, `NoSubSectionsRules`, `SectionElementsRules`, `SectionCommonRules`, `SNOMEDCopyrightForVS`, `NPUCopyrightForVS`, `NIBSCCopyrightForVS`, `ObligationElement` (`rulesSet-common.fsh`), and `ObligationSet1`–`3` (`rulesSet-obligations.fsh`).
- **[3.3-4]** **Aliases:** 171 of 217 are unused (mostly eHDSI value sets, IPS profiles and R5 cross-version extensions). There are 3 duplicates: `$allergyintolerance-clinical` (`alias-systems.fsh:9, 65`), `$list-empty-reason` (`alias-systems.fsh:33, 64`) and `$eHDSIMedicalDevice` (`alias-valuesets.fsh:30, 53`). There are no placeholder URLs.

### 3.4 Terminology

- **[3.4-1]** `input/fsh/profiles/observation-travel-eps.fsh:18`: `valueCodeableConcept from $iso3166-1-2` has no strength, so SUSHI makes it `required`. Make the strength explicit, so the binding is visibly intended.
- **[3.4-2]** Bindings commented out: `medicationStatement-eps.fsh:20` (`EHDSIRouteofAdministration`) and `procedure-eps.fsh:24` (`SNOMEDCTBodyStructures`). Restore them or delete them.
- **[3.4-3]** `input/fsh/rulesSet/rulesSet-common.fsh:86`: the LOINC copyright says "1995-2020". Use "1995+" or the current year. The SNOMED copyright ruleset (`:82`) is unused (3.3-3) and has a mojibake `Â©`.

---

## 4. Obligation profiles

| ID | Sev | Location | Finding | Fix |
|---|---|---|---|---|
| 4-1 | Medium | `input/fsh/obligations/medicationstatement-obl-eu-eps.fsh:2,5` | `MedicationStatementOblEuEps` derives from `MedicationStatementEuEps`; all the other obligation profiles derive from EU Core. Its description says "on the EU Core MedicationStatement profile". | Fix the description ("…on the EPS MedicationStatement profile"), or derive it from EU Core like the others. |
| 4-2 | Medium | `patient-eps.fsh:11,15`; `composition-eu-eps.fsh:461-467` | Some obligations are weaker than the EPS cardinality. `Patient.identifier` is `1..*` (FHIR-58492) but has *populate-if-known*. `sectionProceduresHx` and `sectionMedicalDevices` are `1..1` but have *SHOULD populate-if-known*. These are the IPS obligations, copied as they are, while EPS tightened the cardinality. | Align the obligations with the cardinality (e.g. *SHALL populate*), or say on the Obligations page that the cardinality takes precedence. |
| 4-3 | Low | `input/pagecontent/obligations.md` | Obligations are set in two ways: inline in 9 EPS profiles, and in separate `-obl-` profiles for the EU Core ones. Consent, travel, gestational age and `MedicationStatementEuEps` itself have none. The page lists the actors but not which profiles carry obligations. | Add a table: profile → where the obligations are defined. |

---

## 5. Examples

| ID | Sev | Location | Finding | Fix |
|---|---|---|---|---|
| 5-1 | Medium | `fsh-generated/resources` | No example for `consent-eu-eps`, `diagnosticReport-eu-eps`, `observation-travel-eu-eps` or `procedure-eu-eps`. The QA doesn't show this because the blanket suppression in 7-6 hides it. | Add one example each (e.g. in the complete Bundle), then narrow the suppression. |
| 5-2 | Medium | `input/fsh/examples/__5042-537688-1-eps-composition.fsh` | 15 standalone examples that repeat the complete Bundle example (same patient, same titles), plus about 1,100 commented-out lines. They cause most of the title collisions in 5-3. | Keep either the standalone set or the Bundle; delete the commented instances. |
| 5-3 | Medium | `__5042-537688-1-eps-example.fsh`, `__5042-537688-1-eps-composition.fsh` | Example titles collide for the Jira spec file: "Vital Signs" ×16, "Medication" ×11, "Immunization" ×4, plus pairs such as "Composition: Complete EPS" and "Patient: Petra Schwartz" in both files. | Give each example a distinct title (e.g. "Vital Signs: Body height"), then regenerate the Jira file (1-2). |
| 5-4 | Low | examples | Ids follow three patterns: `Instance-Bundle-…`, `EPSExampleBundle01…`, `Composition-…`/`DeviceUse-…`. In Bundle 01, all 4 `fullUrl` UUIDs differ from the resource ids. The two Bundle identifiers differ in form (one has `assigner`). | Pick one id pattern for new examples. Align the Bundle identifiers. |
| 5-5 | Low | `observation-pregnancy*-eps-example.fsh:3` | The titles have a space before the colon ("Observation : Pregnancy Status"); the other examples use "Type: Name". | "Observation: Pregnancy Status". |

---

## 6. Narrative pages

### 6.1 `changes.md`

| ID | Sev | Line | Finding → Proposed |
|---|---|---|---|
| 6.1-1 | Medium | – | Missing changes made since `1.0.0-ballot`: FHIR-57679 (EHDS Art. 14 in the scope), FHIR-58104 (alignment with Xt-EHR 1.0.0), FHIR-58138 (`Bundle.timestamp` 1..1), FHIR-58492 (`Patient.identifier` 1..*), FHIR-58509 (new MedicationStatement obligation profile; MedicationRequest obligation profile removed), FHIR-58917 (Change Log page), FHIR-58918 (mapping tables reviewed), FHIR-59046 (Model Map names), FHIR-59501 (new Variance Statement page). Also: EU Base and IPS aligned to 2.0.1 (`10fe8d9`), EU Extensions 1.3.1 (`9437507`), MedicationRequest Bundle slice removed (`035638d`), old allergy mapping page removed. → Add them. |
| 6.1-2 | Low | 3, 8, 13, 23 | "summarizes" → "summarises". "xtEHR" → "Xt-EHR". "from 0.3.0 to 1.0" → "from 0.3.0 to 1.0.0". "Composition (EU EPS)" → "Composition (EPS)". The Xt-EHR models are not a package dependency: "Aligned with the Xt-EHR EHDS Logical Models 1.0.0 (previously 0.3.0)". |

### 6.2 Stale ballot or preview wording

No stale ballot or preview wording. The two hits in `changes.md:1,3` correctly refer to the ballot version.

### 6.3 Broken or inconsistent links

| ID | Sev | Location | Finding → Fix |
|---|---|---|---|
| 6.3-1 | Low | `input/pagecontent/variance.md:15, 55` | The link text "current" points to the versioned 2.0.1 pages. → Use "published version" or remove the extra link. |

There are no `build.fhir.org`, `/current/` or `file://` links. All Xt-EHR, EU Base and IPS links go through `input/includes/variables.html` (`1.0.0`, `2.0.1`, `2.0.1`), and the 10 EU Base map pages that the Model Map links to are online. The regulation link (`index.md:31`) points to the adopted text (CELEX 32025R0327).

### 6.4 Content inconsistencies

| ID | Sev | Location | Finding → Proposed |
|---|---|---|---|
| 6.4-1 | Medium | `input/pagecontent/variance.md:106-108` | The list of requirements added to IPS has only the two required sections. It leaves out `Patient.identifier 1..*` (FHIR-58492; IPS has `0..*`). → Add it to the list. |
| 6.4-2 | Medium | `input/pagecontent/missing-data.md:38, 65` | "performedDateTime is must support" contradicts `variance.md`: EPS does not use `mustSupport`. The page also uses IPS profile names ("Observation Results - Laboratory/Pathology"). → Reword using obligations and EPS/EU Core profile names. |
| 6.4-3 | Medium | `input/pagecontent/map-ehdslaboratoryobservation.xml:390, 397, 404` | Three rows are still yellow (`accreditationStatus`, `previousResults`, `pointOfCareTest`; FHIR-58918), and the page no longer has the note that explains what yellow means. → Resolve them, or add the note back on this page (and list them in 6.6-3). |
| 6.4-4 | Low | `input/pagecontent/index.md:31, 35` | Scope and Purpose say the same thing twice, with two acronyms ("EEHRxF" and "E-EHRxF"). `introduction.md:8` uses "EEHRxF". → Merge the Purpose paragraph into Scope, and use "EEHRxF". |

### 6.5 Language and editorial conventions

- **[6.5-1]** **Spelling.** These pages use US spellings, but HL7 Europe uses British English. Proposed changes:
  - `index.md:35` "harmonization" → "harmonisation"
  - `index.md:37` "realized" → "realised", "organizations" → "organisations"
  - `introduction.md:12` "standardized" → "standardised"
  - `introduction.md:25` "recognized" → "recognised"
  - `changes.md:3` "summarizes" → "summarises"

  Keep `Organization` where it names the FHIR resource.
- **[6.5-2]** **Naming and grammar.**
  - "Xt-EHR" also appears as "xtEHR" (`changes.md:8, 23`) and "XTEHR" (`index.md` logo alt text).
  - `index.md:35` "an European" → "a European".
  - `index.md:31` "to define how to define" → "Define a set of rules for using HL7 FHIR to specify…".
  - `knownIssues.md:3` "Further analysis are needed" → "Further analysis is needed".
- **[6.5-3]** **Punctuation.** `composition-eu-eps.fsh:366` "e.g.recent" → "e.g. recent". `observation-travel-eps.fsh:5` "to record, search, and fetch travel history" was copied from a US profile → "to represent a country visited by the patient".
- **[6.5-4]** **Markup.**
  - Mojibake in `composition-eu-eps.fsh:357` ("patientâ€™s", which appears in the published profile) and `rulesSet-common.fsh:82` ("Â©").
  - The 11 map pages and `modelmap.xml` contain `<head>`/`<title>` (line 4), and empty `<a>`/`<p>` elements (lines 18-19), inside page fragments.
  - 10 files have no trailing newline, among them `copyright.md`, `obligations.md`, `modelmap.xml` and two map pages.

### 6.6 `knownIssues.md`: suggested additions

- **[6.6-2]** Known cardinality differences with Xt-EHR 1.0.0, kept as they are for this release:
  - `EHDSMedicationUse.dosageInstructions` 1..1 vs `MedicationStatement.dosage` 0..*
  - `EHDSCurrentPregnancy.currentPregnancyStatus` 1..1 vs `Observation.value[x]` 0..1
  - `EHDSAdvanceDirective.header.subject` 1..1 vs `Consent.patient` 0..1
- **[6.6-3]** The open LaboratoryObservation mapping rows (6.4-3), if not resolved.
- **[6.6-4]** MedicationRequest, MedicationAdministration and MedicationDispense are allowed in the Medication Summary section but not profiled (3.1-3).

---

## 7. QA output and `ignoreWarnings.txt`

This section is based on the IG Publisher v2.3.4 run of 2026-10-02 17:11, built as `1.0.0-ci-build` / `draft` / `ci-build`.

**Visible messages:** 0 errors, 2 warnings and 2 information messages.

| ID | Message | Resources | Fix |
|---|---|---|---|
| 7-1 | Warning: the Jira specification file appears to be out of date. | `FHIR-eu-eps.xml` | See 1-2. |
| 7-2 | Warning: "The resource ValueSet/gestational-age-loinc **should** have an OID assigned". The wildcard on line 59 matches only the "**could usefully** have an OID" wording, so this one isn't suppressed. | `ValueSet-gestational-age-loinc` | Assign an OID (`^identifier`), or set the `auto-oid-root` IG parameter; that fixes this and the 24 suppressed ones. |
| 7-3 | Information: the parameter `system-version` has the same name as a core operation parameter but has type uri. | `Parameters-exp-params` | The suppression on line 53 uses an older message text (0 uses). Replace it with the current text. |
| 7-4 | Information: no explicitly linked examples for `medicationstatement-obl-eu-eps`. | `StructureDefinition-medicationstatement-obl-eu-eps` | Line 42 was copied from `qa.html` and contains zero-width spaces (U+200B), so it never matches (0 uses). Retype it without them. |

**Publication request check:** `publication-request.json` is missing (see 1-1).

**Suppressed messages:** 106 warnings and 651 hints, from 26 entries.

**Suppressions that hide fixable issues:**

| ID | Lines | Entry (uses) | Fix |
|---|---|---|---|
| 7-5 | 55-56 | "does not match any known slice defined in the profile …/bundle-eu-eps" (19) | These are the lab Observations of the complete example. Add a medical test result slice (3.1-1), then delete the entry. The comment also has a typo ("bunlde"). |
| 7-6 | 9-10 | "The Implementation Guide contains no examples for this profile" (5) | The comment says it's for obligation profiles, but those are covered by lines 34-42. This one hides the missing examples in 5-1. Add the examples, then delete or narrow the entry. |
| 7-7 | 24-25 | `All_observations_should_have_a_performer` (19) | A blanket suppression by message id. Add a performer (the lab Organization) to the example lab Observations, and delete it. |
| 7-8 | 12-19 | `Terminology_TX_NoValid_3_CC` (61), `TYPE_SPECIFIC_CHECKS_DT_CANONICAL_MULTIPLE_POSSIBLE_VERSIONS` (37), `TYPE_SPECIFIC_CHECKS_DT_QTY_UCUM_ANNOTATIONS` (16) | Blanket suppressions by message id that will also hide new occurrences. Check the current hits once, then narrow them to message texts, or document why they are global. |

The wildcards on line 7 (5 uses, R5 document rule) and line 59 (24 uses, OIDs) are still justified. Line 59 can go once 7-2 is fixed with `auto-oid-root`.

**Stale entries** (0 uses, safe to delete), by line in `ignoreWarnings.txt`:

- **[7-9]** Line 47: "Reference to draft CodeSystem http://terminology.hl7.org/CodeSystem/consentscope|4.0.1".
- Lines 42 and 53 also have 0 uses, but they should be corrected rather than deleted (7-3, 7-4).

---

## 8. Repository hygiene

- **[8-1]** `scripts/__pycache__/config.cpython-312.pyc` and `scripts/generateMapDiagramsFiles/__pycache__/config.cpython-312.pyc` are committed. Remove them and add `__pycache__/` to `.gitignore`.
- **[8-2]** `scripts/_generateMapDiagrams.bat` and `scripts/generateMapDiagramsFiles/` generate the PlantUML map diagrams. Those pages are commented out in `sushi-config.yaml` (lines 59-62), and their sources were deleted. The scripts also use absolute local paths. Delete them or move them to `_attic`.
- **[8-3]** `models-src/`: `__gen-fsh-from-xls.bat` and `config.ini` have absolute paths and write to `input/fsh/model-maps`, which no longer exists. The folder also holds the mapping workbook and the eHN guideline PDF (check that redistributing the PDF is allowed). Archive it or document how it's used.
- **[8-4]** `Requirements-fromNarrative.json` at the repository root is committed but not part of the build. Delete it, or move it to `input/resources` if it should be published.
- **[8-5]** Reference copies are committed: `_attic/` (101 files), `_ips_2.0/` (160) and `_xtehr_1.0/` (105). `_xtehr_1.0` is used for the Xt-EHR alignment check, so keep it. Decide whether the other two are still needed.
- **[8-6]** `sushi-config.yaml` has many commented-out page entries (IPS comparison pages, map diagrams, `ips-diff.md`, `overview.md`, `recommendations.md`). Remove them before the release.

---

## 9. Suggested order of work

1. Profile coherence: the pregnancy section (1-3), Bundle slices (3.1-1), section entry rules (3.1-2), the invariant description (3.2-1).
2. Examples for the four profiles without one (5-1), then narrow the suppressions 7-5 to 7-7.
3. Groups (2-2), and obligations vs cardinality (4-1, 4-2).
4. Example titles (5-3, 5-2), then regenerate and submit the Jira spec file (1-2).
5. Narrative pages: Variance and Missing Data (6.4-1, 6.4-2), lab mapping rows (6.4-3), Known Issues additions (§6.6), then `changes.md` (6.1-1, 6.1-2).
6. QA leftovers: 7-2, 7-3, 7-4, 7-9.
7. Release configuration (1-1), rebuild, re-run this review.
8. Cleanup: §3.3, §3.4, 2-7, §6.5, §8.

---

## Won't fix (accepted)

Items reviewed and accepted as they are. They keep their id and the structure of the section they come from; the last column gives the rationale.

| ID | Sev | Location | Finding | Rationale |
|---|---|---|---|---|
| 6.4-5 | Medium | `medicationStatement-eu-eps`, `observation-pregnancy-status-eu-eps`, `consent-eu-eps` | Three Xt-EHR 1.0.0 elements are 1..1 but optional in the profiles (`dosageInstructions`, `currentPregnancyStatus`, `header.subject`). | The editor decided to keep the profiles unchanged for this release (2026-10-02). Document them in `knownIssues.md` (6.6-2). |
| 6.4-6 | Low | `map-ehdslaboratoryobservation.xml:246, 332` | `referenceRange` and `component.referenceRange` are mapped as a whole, without their sub-elements. | Accepted by the editor: the mapping as a whole is enough. |
| 6.4-7 | Low | `map-ehdspatientsummary.xml` | `header.source` is not mapped. | `EHDSDocument` forbids it (max 0), so there is nothing to map. |
| 7-10 | Low | `input/ignoreWarnings.txt:61-62` | The duplicate anchor `Patient_f51071b2-…` on the complete Bundle page is suppressed. | The IG Publisher writes the subject's anchor twice when the Patient has an authored narrative. The editor chose to keep the narrative and suppress the warning. |

---

## Fixed since the first review

**Working copy, not yet committed**

- **[2-1]**, **[6.6-1]** Added a "Dependencies" known issue for the pre-release `ihe.pharm.mpd.r4#1.0.0-comment-2` (`input/pagecontent/knownIssues.md`). `hl7.terminology.r4` stays unpinned by decision (see `reviews/review-notes.md`).

**Commit `3aa860c`**

- **[2-3]** Added `SetFmmAndStatusRule (1, draft)` to the 9 obligation profiles, `DeviceEuEps`, `DeviceUseStatementEuEps` and `ObservationTravelEuEps`. All 24 artifacts now have FMM 1 / draft.
- **[2-4]** Removed the Laboratory IG leftovers (`sushi-config.yaml` line 1, the commented lab groups) and the SUSHI template comments from `sushi-config.yaml`. Reduced `ig.ini` to its three settings. The commented-out page entries are still there (8-6).
- **[2-5]** Added `license: CC0-1.0` to `sushi-config.yaml`.
- **[2-6]** "European REALM" → "European realm" in the IG description.
