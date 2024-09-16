Logical: AllergyPsEhn
Id: Allergy
Title: "A.2.1.1 - Allergy"
Description: """A.2.1.1 - Allergy"""
* description 0..* BackboneElement "A.2.1.1.1 Allergy description" """A.2.1.1.1 Allergy description - Textual description of the allergy or intolerance"""
* type 0..* string "A.2.1.1.2 Type of propensity" """A.2.1.1.2 Type of propensity - This element describes whether this condition refers to an allergy, non-allergy intolerance, or unknown class of intolerance (not known to be allergy or intolerance)"""
* manifestation 0..* CodeableConcept "A.2.1.1.3 Allergy manifestation" """A.2.1.1.3 Allergy manifestation- Description of the clinical manifestation of the allergic reaction. Example: anaphylactic shock, angioedema (the clinical manifestation also gives"""
* severity 0..* BackboneElement "A.2.1.1.4 Severity" """A.2.1.1.4 Severity - Severity of the clinical manifestation of the allergic reaction."""
* criticality 0..* CodeableConcept "A.2.1.1.5 Criticality" """A.2.1.1.5 Criticality - Potential risk for future life-threatening adverse reactions when exposed to a substance known to cause an adverse reaction."""
* onsetDate 0..* CodeableConcept "A.2.1.1.6 Onset date" """A.2.1.1.6 Onset date - Date of the observation of the reaction ISO 8601"""
* endDate 0..* dateTime "A.2.1.1.7 End Date" """A.2.1.1.7 End Date - Date of resolution of the allergy (e.g. when the clinician deemed there is no longer any need to track the underlying condition)"""
* status 0..* dateTime "A.2.1.1.8 Status" """A.2.1.1.8 Status - Current status of the allergy or intolerance, for example, whether it is active, in remission, resolved, etc."""
* certainty 0..* CodeableConcept "A.2.1.1.9 Certainty" """A.2.1.1.9 Certainty - Assertion about the certainty associated with a propensity, or potential risk, of a reaction to the identified substance. Diagnostic and/or clinical evidence of condition."""
* agent 0..* CodeableConcept "A.2.1.1.10 Agent or Allergen" """A.2.1.1.10 Agent or Allergen - A specific allergen or other agent/substance (drug, food, chemical agent, etc.) to which the patient has an adverse reaction propensity."""
