# HL7 Europe Patient Summary – Consistency Review for 1.0.0 (release after 1.0.0-ballot)

- **Date:** 2026-10-02. Last updated 2026-10-23 after a rebuild with IG Publisher 3.0.1 and a re-run of all checks. Items that have been fixed have been removed; they are listed under *Fixed since the first review* at the end of the report.
- **Scope:** FSH sources (`input/fsh`), narrative pages (`input/pagecontent`, `input/includes`), configuration (`sushi-config.yaml`, `publication-request.json`, `ig.ini`), examples, the latest IG Publisher QA output (`output/qa.*`) and `input/ignoreWarnings.txt`.
- **Build status:**
  - SUSHI reports 0 errors and 0 warnings (run of 2026-10-23, after the fixes in `ac7095e`).
  - The IG Publisher 3.0.1 run of 2026-10-23 12:23 (validator core `6.0.0-snapshot1`) was built as `hl7.fhir.eu.eps#1.0.0-ci-build`, status `draft`, release label `ci-build`. It includes all commits up to `7a842ec`, but not the fixes in `ac7095e` (5-6, 7-11, 7-12).
  - It reports **12 errors, 22 warnings and 41 information messages**, plus 94 suppressed warnings and 530 suppressed hints. All 12 errors come from 5-6, which is fixed in `ac7095e`. The upgrade from Publisher 2.3.4 changed some message texts, so two suppressions no longer match (7-2, 7-11). A rebuild is needed to confirm the counts.

Severity: **High** means fix before publication. **Medium** means it should be fixed for 1.0.0. **Low** means cleanup or editorial.

File references are relative to the repository root. Line numbers are those of the current working copy.

Each open item has an id `<section>-<n>` (e.g. `3.1-2`). Ids are stable: fixed or accepted items keep their id when they move to *Won't fix (accepted)* or *Fixed since the first review*, and new items get the next free number.

---

## 1. Release blockers (High)

| ID | Area | Finding | Fix |
|---|---|---|---|
| 1-1 | Configuration | `sushi-config.yaml:6-11` still has `version: 1.0.0-ci-build`, `status: draft`, `releaseLabel: ci-build`, and there is no `publication-request.json`. The release cannot be published like this. | Set the release version, status and label (e.g. `1.0.0`, `active`, `trial-use` for an STU), add `publication-request.json`, and rebuild. |
| 1-2 | Jira spec | QA warning: the Jira specification file `FHIR-eu-eps.xml` is out of date with the artifacts and pages (new Variance page, MedicationStatement obligation profile, removed pages). | Replace it with the proposed file from the Publisher output, review it, and submit it to the HL7 JIRA-Spec-Artifacts repository. The title collisions (5-3) are fixed, so the keys will be correct. |
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
- **[3.3-2]** **Commented-out blocks:** 29 blocks. Most of them (about 1,100 lines) are commented-out instances in `input/fsh/examples/__5042-537688-1-eps-composition.fsh:235-1807` (see 5-2). In the profiles: 4 `/* … */` blocks in `bundle-eu-eps.fsh` (168-171, 204-217), plus `composition-eu-eps.fsh:13, 26, 52, 327-329`, `device-eps.fsh:8-9` and `procedure-eps.fsh:22-29`. Wrong or stale comments: `bundle-eu-eps.fsh:219` (`// ObservationResultsEuEps` on the CarePlan slice), and `composition-eu-eps.fsh:378` ("EPS Travel History Section" above the Patient History section).
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
| 5-2 | Medium | `input/fsh/examples/__5042-537688-1-eps-composition.fsh` | 15 standalone examples that repeat the complete Bundle example (same patient, same content), plus about 1,100 commented-out lines. Their titles are now distinct (5-3), but the content is still duplicated. | Keep either the standalone set or the Bundle; delete the commented instances. |
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
| 6.3-2 | Low | `input/pagecontent/index.md:35`, `logicalmodels.md:5` | **New:** Both link to the unversioned `https://www.xt-ehr.eu/fhir/models`, not to `{{ xtehr_models }}` (1.0.0) like the other model links. In `index.md` the link text is "Xt-EHR Joint Action", but the target is the models guide. → Use `{{ xtehr_models }}` (add `{% include variables.html %}` to `index.md`), and link "Xt-EHR Joint Action" to `https://www.xt-ehr.eu/`. |
| 6.3-3 | Low | `input/pagecontent/copyright.md:20` | **New:** "documented on the HL7 IPS Copyrights page" has no link. → Link the IPS 2.0.1 copyright page through `variables.html`. |

There are no `build.fhir.org`, `/current/` or `file://` links. All Xt-EHR, EU Base and IPS links go through `input/includes/variables.html` (`1.0.0`, `2.0.1`, `2.0.1`), and the 10 EU Base map pages that the Model Map links to are online. The regulation link (`index.md:31`) points to the adopted text (CELEX 32025R0327).

### 6.4 Content inconsistencies

| ID | Sev | Location | Finding → Proposed |
|---|---|---|---|
| 6.4-1 | Medium | `input/pagecontent/variance.md:106-108` | The list of requirements added to IPS has only the two required sections. It leaves out `Patient.identifier 1..*` (FHIR-58492; IPS has `0..*`). → Add it to the list. |
| 6.4-2 | Medium | `input/pagecontent/missing-data.md:38, 65` | "performedDateTime is must support" contradicts `variance.md`: EPS does not use `mustSupport`. The page also uses IPS profile names ("Observation Results - Laboratory/Pathology"). → Reword using obligations and EPS/EU Core profile names. |
| 6.4-4 | Low | `input/pagecontent/index.md:33, 40` | Scope and Purpose still say the same thing twice ("harmonisation among national initiatives… prepare the ground for…"), with two acronyms: "EEHRxF" (`:33`) and "E-EHRxF" (`:40`). `introduction.md:13` uses "EEHRxF". → Keep the IPS sentence of Purpose, drop the repeated part, and use "EEHRxF". |
| 6.4-8 | Medium | `input/pagecontent/map-ehdslaboratoryobservation.xml:391-395` | **New:** `accreditationStatus` is now mapped to `extension:accredited` with Resource **Organization**. The extension (`http://hl7.eu/fhir/StructureDefinition/laboratory-accredited`, EU Extensions 1.3.1) can only be used on Observation and ServiceRequest. → Set the Resource column to Observation, and link the extension in the note. |
| 6.4-9 | Low | `input/pagecontent/index.md:29`, `introduction.md:1` | **New:** Two different definitions of the EPS. The home page says "a standardized non-exhaustive health data set"; the Introduction says "a standardized, cross-border health data set… particularly in unplanned care scenarios". → Use one definition on both pages (e.g. "a standardised, non-exhaustive, cross-border health data set… particularly in unplanned care"). |
| 6.4-10 | Low | `input/pagecontent/knownIssues.md:9` | **New:** "Xt-EHR EHDS Logical Information Models version 1.0" → "version 1.0.0" (as on the other pages). "The dependency and the related mappings will be updated" → "The alignment and the related mappings will be updated": the models are not a package dependency. |
| 6.4-11 | Medium | `input/pagecontent/copyright.md:2-4` | **New:** "This Implementation Guide is protected by Copyright 2026 HL7 Europe. It is licensed under the Creative Commons Public Domain dedication (CC0 1.0)". CC0 waives copyright, so the two sentences contradict each other, and CC0 is a dedication, not a licence. → "© 2026 HL7 Europe. HL7 Europe dedicates this Implementation Guide to the public domain under the Creative Commons CC0 1.0 Universal Public Domain Dedication, so it can be freely used, distributed and adapted." Check the wording with HL7 Europe. |

### 6.5 Language and editorial conventions

- **[6.5-1]** **Spelling.** These pages use US spellings, but HL7 Europe uses British English. Proposed changes:
  - `index.md:29` "standardized" → "standardised"
  - `index.md:40` "harmonization" → "harmonisation"
  - `index.md:42` "realized" → "realised", "organizations" → "organisations"
  - `introduction.md:1` "standardized" → "standardised"
  - `introduction.md:25` "recognized" → "recognised"
  - `introduction.md:32` "organizations" → "organisations"
  - `copyright.md:15` "authorized" → "authorised"
  - `changes.md:3` "summarizes" → "summarises"

  Keep `Organization` where it names the FHIR resource.
- **[6.5-2]** **Naming and grammar.**
  - "Xt-EHR" also appears as "xtEHR" (`changes.md:8, 23`) and "XTEHR" (`index.md:17`, logo alt text).
  - `index.md:40` "an European" → "a European".
- **[6.5-3]** **Punctuation.** `composition-eu-eps.fsh:366` "e.g.recent" → "e.g. recent". `observation-travel-eps.fsh:5` "to record, search, and fetch travel history" was copied from a US profile → "to represent a country visited by the patient".
- **[6.5-4]** **Markup.**
  - Mojibake in `composition-eu-eps.fsh:357` ("patientâ€™s", which appears in the published profile) and `rulesSet-common.fsh:82` ("Â©").
  - The 11 map pages and `modelmap.xml` contain `<head>`/`<title>` (line 4), and empty `<a>`/`<p>` elements (lines 18-19), inside page fragments.
  - 10 files have no trailing newline, among them `authors.md`, `obligations.md`, `modelmap.xml` and two map pages.
  - **New:** `authors.md:20-24`: the figure has empty `<p>` elements and an `<img>` without `alt` text.

### 6.6 `knownIssues.md`: suggested additions

- **[6.6-2]** Known cardinality differences with Xt-EHR 1.0.0, kept as they are for this release:
  - `EHDSMedicationUse.dosageInstructions` 1..1 vs `MedicationStatement.dosage` 0..*
  - `EHDSCurrentPregnancy.currentPregnancyStatus` 1..1 vs `Observation.value[x]` 0..1
  - `EHDSAdvanceDirective.header.subject` 1..1 vs `Consent.patient` 0..1
  - Optionally, `EHDSDevice.type` 0..* vs `Device.type` 0..1. This is a FHIR R4 limit, documented in `map-ehdsdevice.xml` since `7a842ec`.
- **[6.6-4]** MedicationRequest, MedicationAdministration and MedicationDispense are allowed in the Medication Summary section but not profiled (3.1-3).

---

## 7. QA output and `ignoreWarnings.txt`

This section is based on the IG Publisher 3.0.1 run of 2026-10-23 12:23, built as `1.0.0-ci-build` / `draft` / `ci-build`.

**Visible messages:** 12 errors, 22 warnings and 41 information messages.

The 12 errors, and 15 of the information messages ("Details for … matching against profile", "does not match any known slice"), all come from the empty `Device.udiCarrier` in the Device examples (5-6). They are fixed in `ac7095e`, and will go away after a rebuild.

| ID | Message | Resources | Fix |
|---|---|---|---|
| 7-1 | Warning: the Jira specification file appears to be out of date. | `FHIR-eu-eps.xml` | See 1-2. |
| 7-2 | Warning: "The resource ValueSet/gestational-age-loinc **should** have an OID assigned", plus 24 information messages "… **could usefully** have an OID assigned" (all profiles and the IG). The wildcard on line 65 now has 0 uses: Publisher 3.0.1 links to `ig-guidance/oids.html`, not to the `fhir-tools-ig` URL in the entry. | all StructureDefinitions, `ValueSet-gestational-age-loinc`, the IG | Set the `auto-oid-root` IG parameter (or assign OIDs); that fixes both wordings. Otherwise shorten line 65 to `%could usefully have an OID assigned%`. |
| 7-3 | Information: the parameter `system-version` has the same name as a core operation parameter but has type uri. | `Parameters-exp-params` | The suppression on line 59 uses an older message text (0 uses). Replace it with the current text. |
| 7-4 | Information: no explicitly linked examples for `medicationstatement-obl-eu-eps`. | `StructureDefinition-medicationstatement-obl-eu-eps` | Line 48 was copied from `qa.html` and contains zero-width spaces (U+200B), so it never matches (0 uses). Retype it without them. |
**Publication request check:** `publication-request.json` is missing (see 1-1).

**Suppressed messages:** 94 warnings and 530 hints, from 26 entries. Five entries had 0 uses: line 32 (7-11, now replaced by lines 32-38), and lines 48 (7-4), 53 (7-9), 59 (7-3) and 65 (7-2) in the current file.

**Suppressions that hide fixable issues:**

| ID | Lines | Entry (uses) | Fix |
|---|---|---|---|
| 7-5 | 61-62 | "does not match any known slice defined in the profile …/bundle-eu-eps" (19) | These are the lab Observations of the complete example. Add a medical test result slice (3.1-1), then delete the entry. The comment also has a typo ("bunlde"). The entry ends with the profile version `1.0.0-ci-build`, so it stops matching once the version is set for the release (1-1), and the 19 messages come back. |
| 7-6 | 9-10 | "The Implementation Guide contains no examples for this profile" (5) | The comment says it's for obligation profiles, but those are covered by lines 34-42. This one hides the missing examples in 5-1. Add the examples, then delete or narrow the entry. |
| 7-7 | 24-25 | `All_observations_should_have_a_performer` (19) | A blanket suppression by message id. Add a performer (the lab Organization) to the example lab Observations, and delete it. |
| 7-8 | 12-19 | `Terminology_TX_NoValid_3_CC` (61), `TYPE_SPECIFIC_CHECKS_DT_CANONICAL_MULTIPLE_POSSIBLE_VERSIONS` (37), `TYPE_SPECIFIC_CHECKS_DT_QTY_UCUM_ANNOTATIONS` (16) | Blanket suppressions by message id that will also hide new occurrences. Check the current hits once, then narrow them to message texts, or document why they are global. |

The wildcard on line 7 (5 uses, R5 document rule) is still justified. Line 59 (OIDs) no longer matches anything; see 7-2.

**Stale entries** (0 uses, safe to delete), by line in `ignoreWarnings.txt`:

- **[7-9]** Line 53: "Reference to draft CodeSystem http://terminology.hl7.org/CodeSystem/consentscope|4.0.1".
- Lines 48, 59 and 65 also have 0 uses, but they should be corrected rather than deleted (7-4, 7-3, 7-2).

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

1. Commit the 5-6, 7-11 and 7-12 fixes, fix 7-2, then rebuild to get back to a clean QA baseline.
2. Profile coherence: the pregnancy section (1-3), Bundle slices (3.1-1), section entry rules (3.1-2), the invariant description (3.2-1).
3. Examples for the four profiles without one (5-1), then narrow the suppressions 7-5 to 7-7.
4. Groups (2-2), and obligations vs cardinality (4-1, 4-2).
5. Duplicated example sets (5-2), then regenerate and submit the Jira spec file (1-2).
6. Narrative pages: copyright statement (6.4-11), Variance and Missing Data (6.4-1, 6.4-2), lab mapping row (6.4-8), Known Issues (§6.6, 6.4-10), home page and Introduction (6.4-4, 6.4-9, 6.3-2, 6.3-3), then `changes.md` (6.1-1, 6.1-2).
7. QA leftovers: 7-3, 7-4, 7-9.
8. Release configuration (1-1), rebuild, re-run this review.
9. Cleanup: §3.3, §3.4, 2-7, §6.5, §8.

---

## Won't fix (accepted)

Items reviewed and accepted as they are. They keep their id and the structure of the section they come from; the last column gives the rationale.

| ID | Sev | Location | Finding | Rationale |
|---|---|---|---|---|
| 6.4-5 | Medium | `medicationStatement-eu-eps`, `observation-pregnancy-status-eu-eps`, `consent-eu-eps` | Three Xt-EHR 1.0.0 elements are 1..1 but optional in the profiles (`dosageInstructions`, `currentPregnancyStatus`, `header.subject`). | The editor decided to keep the profiles unchanged for this release (2026-10-02). Document them in `knownIssues.md` (6.6-2). |
| 6.4-6 | Low | `map-ehdslaboratoryobservation.xml:246, 332` | `referenceRange` and `component.referenceRange` are mapped as a whole, without their sub-elements. | Accepted by the editor: the mapping as a whole is enough. |
| 6.4-7 | Low | `map-ehdspatientsummary.xml` | `header.source` is not mapped. | `EHDSDocument` forbids it (max 0), so there is nothing to map. |
| 7-10 | Low | `input/ignoreWarnings.txt:67-68` | The duplicate anchor `Patient_f51071b2-…` on the complete Bundle page is suppressed. | The IG Publisher writes the subject's anchor twice when the Patient has an authored narrative. The editor chose to keep the narrative and suppress the warning. |

---

## Fixed since the first review

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
