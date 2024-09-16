Logical: ProcedurePsEhn
Id: ProcedurePs
Title: "A.2.3.3 - Procedures"
Description: """Procedures.Section A.2.3.3 of the eHN guideline."""
* description 0..* CodeableConcept "A.2.3.3.1 Procedure description" """Describes the type of procedure - Preferred system(s): SNOMED CT GPS*"""
* bodySite 0..* BackboneElement "A.2.3.3.2 Body site" """Procedure target body site - Preferred system(s): SNOMED CT GPS*"""
* date 0..* dateTime "A.2.3.3.3 Procedure date" """Date when procedure was performed - Preferred system(s): ISO 8601"""
