Logical: ResultPsEhn
Id: Result
Title: "A.2.8 - Results"
Description: """Results data elements. Section A2.8 of the eHN guideline."""
* observation 0..1 BackboneElement "A.2.8.1 Result observations" """(A list of observation results pertaining to the subject of care's health condition and which might have impact on future treatments)"""
* date 0..* dateTime "A.2.8.1.1 Date" """Date and time of the observation - Preferred system(s): ISO 8601"""
* type 0..* CodeableConcept "A.2.8.1.2 Observation type" """Observation results types that may be measurements, laboratory results, anatomic pathology results, radiology results or other imaging or clinical results. Examples: Diagnostic results (Blood group, Laboratory Observations, Imaging results etc.) Physical findings (Vital signs observations)  - Preferred system(s): HL7 ObservationCategoryCodes"""
* description 0..* Narrative "A.2.8.1.3 Result description" """Narrative representation of the observation result and findings."""
* details 0..* BackboneElement "A.2.8.1.4 Observation details" """Observation details including code that identifies observation, specification of the observed body structure or specimen, date and time of the specimen collection. LOINC - Preferred system(s): SNOMED CT GPS NPU"""
* result 0..* BackboneElement "A.2.8.1.5 Observation results" """Result of the observation including numeric and coded results of the measurement, details about how the tests were done to get the result values, information about referential ranges and result interpretation. Content of the observation result will vary according to the type of the observation. - Preferred system(s): SNOMED CT GPS (for ordinal or nominal scale results) UCUM (for units)"""
* performer 0..* BackboneElement "A.2.8.1.6 Performer" """Identifies the originator/author and provides provenance information about the source of the results data that may have not originated with the source of the whole PS document."""
* reporter 0..* BackboneElement "A.2.8.1.7 Reporter" """With certain observation results, e.g. there may also be an interpreter or a person responsible for validation."""
