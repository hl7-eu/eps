### Change Log

This page summarizes the main changes made to this Implementation Guide since the **1.0.0-ballot** release ([commit 5a7a236](https://github.com/hl7-eu/eps/commit/5a7a236ebff5f212d291defd7ff10da51187a1ce)).

Note: this log covers substantive content and documentation changes only; purely editorial commits (e.g. minor typo fixes) are grouped together below.

#### Dependencies

* Upgraded the **xtEHR EHDS Logical Models** dependency from 0.3.0 to 1.0, and pinned mapping pages to this specific model version.
* Upgraded the **IPS (International Patient Summary)** dependency to 2.0.1, and fixed the corresponding link in the site menu.

#### Profile changes

* **Composition (EU EPS)**
  * Fixed the cardinality of the `smokingTobaccoUse` and `alcoholUse` entries.
  * Added the `ips-comp-1` invariant to the `sectionMedicalDevices` and `sectionProceduresHx` sections.
  * Clarified the purpose of the Patient History section.
* Fixed the `sliceAlert` slice name.
* Fixed an incorrect link for `FlagEuCore`.
* Updated the pregnancy status Observation profile ID and cross-references to align with EPS naming conventions.
* Removed duplicated text in the MedicationStatement profile.
* Removed obsolete references to Hospital Discharge Report (HDR) sections, which are out of scope for this guide.

#### Documentation

* Fixed the xtEHR logical model link on the Logical Models page.
* Removed the inaccurate "R4 vs R5 IG" paragraph from the Cross-version Analysis page.
* Removed references to the retired Contributors page.
* Fixed a broken URL pattern (`1.0.0/0.30/`) appearing in several mapping/model pages.
* Harmonized the arrow notation and casing conventions used throughout the mapping pages, and fixed typos, awkward phrasing, and inconsistent R4/R5 notation.

#### Editorial fixes

* Various typo, spacing, and wording corrections across profiles, obligations, and mapping pages.
