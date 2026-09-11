### From 1.0.0-ballot to 1.0.0

This page summarizes the main changes made to this Implementation Guide since the **1.0.0-ballot** release


#### Dependencies

* Upgraded the **xtEHR EHDS Logical Models** dependency from 0.3.0 to 1.0, and pinned mapping pages to this specific model version. (FHIR-58103)
* Upgraded the **IPS (International Patient Summary)** dependency to 2.0.1, and fixed the corresponding link in the site menu. (FHIR-57675)

#### Profile changes

* **Composition (EU EPS)**
  * Fixed the cardinality of the `smokingTobaccoUse` and `alcoholUse` entries. (FHIR-58506)
  * Added the `ips-comp-1` invariant to the `sectionMedicalDevices` and `sectionProceduresHx` sections. (FHIR-58758)
  * Clarified the purpose of the Patient History section. (FHIR-58505)
* Fixed the `sliceAlert` slice name. (FHIR-58511)
* Fixed an incorrect link for `FlagEuCore`. (FHIR-58510)
* Updated the pregnancy status Observation profile ID and cross-references to align with EPS naming conventions. (FHIR-58120)

#### Documentation

* Fixed the xtEHR logical model link on the Logical Models page. (FHIR-58757)
* Removed the inaccurate "R4 vs R5 IG" paragraph from the Cross-version Analysis page. (FHIR-58109)


#### Editorial fixes

* Various typo, spacing, and wording corrections across profiles, obligations, and mapping pages. (FHIR-58113, FHIR-58114, FHIR-58117, FHIR-58119, FHIR-58121, FHIR-58122, FHIR-58123)
