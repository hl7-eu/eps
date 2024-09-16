Logical: PregnancyPsEhn
Id: Pregnancy
Title: "A.2.6 Pregnancy history"
Description: """Functional Status. Section A.2.3.3 of the eHN guideline."""
* pregnancyStatus 0..* BackboneElement "A.2.6.1 Current pregnancy status" """A.2.6.1 Current pregnancy status"""
* pregnancyStatus.dateOfObservation 0..* dateTime "A.2.6.1.1 Date of observation" """Date on which the observation of the pregnancy state was made - Preferred system(s): ISO 8601"""
* pregnancyStatus.status 0..* CodeableConcept "A.2.6.1.2 Status" """Provides the woman's current state at the date the observation was made: e.g. pregnant, not pregnant, unknown - Preferred system(s): SNOMED CT GPS"""
* pregnancyStatus.deliveryDate 0..* dateTime "A.2.6.1.3 Expected date of delivery" """Date on which the woman is due to give birth. - Preferred system(s): ISO 8601"""
* hxPreviousPregnancies 0..* BackboneElement "A.2.6.2 History of previous pregnancies" """A.2.6.2 History of previous pregnancies"""
* hxPreviousPregnancies.status 0..* CodeableConcept "A.2.6.2.1 Previous pregnancies status" """Information on the woman's previous pregnancies: Yes, previous pregnancies; No, previous pregnancies; Unknown - Preferred system(s): SNOMED CT GPS"""
* hxPreviousPregnancies.description 0..* BackboneElement "A.2.6.2.2 Previous pregnancies description" """A.2.6.2.2 Previous pregnancies description"""
* hxPreviousPregnancies.description.outcomeDate 0..* dateTime "A.2.6.2.2.1 Outcome date" """Date referred to the previous pregnancies outcome - Preferred system(s): ISO 8601"""
* hxPreviousPregnancies.description.outcome 0..* CodeableConcept "A.2.6.2.2.2 Outcome" """Outcome of the previous pregnancies - Preferred system(s): SNOMED CT GPS"""
* hxPreviousPregnancies.description.numberOfChildren 0..* integer "A.2.6.2.2.3 Number of children" """Number of children/fetus in this specific pregnancy"""
