# Test: `compliesWithProfile` instead of `imposeProfile`

Branch `test-complieswith`, built on 2026-11-02 with IG Publisher 3.0.1. The baseline is `master` at commit `021bc32`.

## Change tested

- New rule set `CompliesWithProfile (profile, index)` in `input/fsh/rulesSet/rulesSet-common.fsh`. It sets `http://hl7.org/fhir/StructureDefinition/structuredefinition-compliesWithProfile`. The `ImposeProfile` rule set is kept, so it is easy to switch back.
- All 11 `insert ImposeProfile` calls in `input/fsh/profiles/` now use `CompliesWithProfile`. The profiles are Bundle, Composition, Device, DeviceUseStatement, DiagnosticReport, MedicationStatement, Patient, Procedure and the three pregnancy Observations. The claimed profiles are the IPS 2.0.1 ones.
- `variance.md` now names and links `compliesWithProfile`.

The Publisher does not check `imposeProfile`, but it does check a `compliesWithProfile` claim. This test shows which EPS profiles fail that check.

## QA comparison

| | `master` (`imposeProfile`) | `test-complieswith` (`compliesWithProfile`) |
|---|---|---|
| SUSHI | 0 errors, 0 warnings | 0 errors, 0 warnings |
| Errors | 0 | **8** (6 after the C-2 fix) |
| Warnings | 2 | 2 |
| Information | 15 | 7 |
| Broken links | 0 | 0 |
| Suppressed warnings / hints | 119 / 500 | 117 / 471 |

The 2 warnings are the same in both builds:

- the Jira spec file;
- the OID root, not registered yet.

The obligation profiles inherit the claim from their structural profiles. So each error is reported twice, once for the structural profile and once for its obligation profile, and the 8 errors come from 4 problems.

## Errors

| ID | Profiles | Message | Cause | Possible fix |
|---|---|---|---|---|
| C-1 | Composition (EPS) and its obligation profile | This profile does not comply with claimed profile `Composition-uv-ips`: mismatch in slicing at `Composition.section:sectionPastProblems`: no slice found for the discriminator value `code` with the values `http://loinc.org#11348-0` | IPS defines a `sectionPastProblems` slice (LOINC 11348-0). EPS has this slice commented out (`composition-eu-eps.fsh`, `section contains`) and uses `sectionPatientHx` (LOINC 11329-0) instead. EPS slicing is open, so an EPS document may contain an 11348-0 section that does not meet the IPS rules for it. | Keep a `sectionPastProblems` slice with the IPS rules, or forbid code 11348-0 in EPS. |
| ~~C-2~~ (fixed) | DeviceUseStatement (EPS) and its obligation profile | This profile does not comply with claimed profile `DeviceUseStatement-uv-ips`: the type `Timing` is not allowed in the claimed profile (`DeviceUseStatement.timing[x]:timingTiming`) | EPS allows `timing[x]` to be Timing, Period or dateTime. IPS allows only Period or dateTime. | Add `* timing[x] only Period or dateTime` to `deviceUseStatement-eps.fsh`, or drop the claim if EPS needs Timing. |
| C-3 | Bundle (EPS) and its obligation profile | Error processing Snapshot: `Cannot invoke "org.hl7.fhir.model.core.DataType.primitiveValue()" because "dt1.value" is null` (`ERROR_PROCESSING_SNAPSHOT`) | This is a Java null-pointer exception inside the Publisher's compliance check. It appears only with `compliesWithProfile`. It is most likely a Publisher defect, probably triggered by a pattern or fixed element that has no primitive value. | Report it on Zulip (#tooling / IG Publisher), or leave the claim off this profile until it is fixed. |
| C-4 | DiagnosticReport (EPS) and its obligation profile | Same exception as C-3 | Same as C-3. | Same as C-3. |

## Conclusion

- **Real differences from IPS:** C-1 and C-2. With `imposeProfile` they were not visible. They need either a profile change or a decision to stop claiming compliance with those IPS profiles. C-2 is fixed (see below); C-1 is open.
- **Tooling defect:** C-3 and C-4 do not depend on the content of the guide. They block the switch until the Publisher is fixed or the claim is dropped for Bundle and DiagnosticReport.
- **Other profiles:** Device, MedicationStatement, Patient, Procedure and the three pregnancy Observations raise no errors with `compliesWithProfile`.

## Fixes on this branch

- **C-2:** `deviceUseStatement-eps.fsh` now has `* timing[x] only Period or dateTime // as in the IPS`. No example or mapping used `timingTiming`. After a rebuild there are 6 errors (C-1, C-3 and C-4, each twice), 2 warnings, 7 information messages and 0 broken links.
