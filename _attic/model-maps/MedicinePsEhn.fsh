Logical: MedicinePsEhn
Id: Medicine
Title: "A.2.4.1 Current and relevant past medicines"
Description: """Relevant prescribed medicines whose period of time indicated for the treatment has not yet expired whether it has been dispensed or not, or medicines that influence current health status or are relevant to a clinical decision.
Section A2.4.1 of the eHN guideline."""
* reason 0..* CodeableConcept "A.2.4.1.1 Medication reason" """The reason why the medication is or was prescribed, or used This is the reason why the medication is being prescribed or used. It provides a link to the Past or current health conditions or problems that the patient has had or has. - Preferred system(s): ICD-10* SNOMED CT GPS Orphacode if rare disease is diagnosed"""
* intendedUse 0..* CodeableConcept "A.2.4.1.2 Intended use" """Indication intended use as: prevention or treatment Example: prophylaxis, treatment, diagnostic, anaesthesia, care of equipment"""
* productName 1..* string "A.2.4.1.3 Brand name" """Brand name if biological medicinal product or when justified by the health professional (ref. Commission Directive 2012/52/EU)"""
* activeIngredient 2..* BackboneElement "A.2.4.1.4 Active ingredient lists" """Substance that alone or in combination with one or more other ingredients produces the intended activity of a medicinal product. Example: ""paracetamol"" ATC* (IDMP identifier, when available)"""
* strength 3..* Ratio "A.2.4.1.5 Strength" """The content of the active ingredient expressed quantifiably per dosage unit, per unit of volume or per unit of weight, according to the pharmaceutical dose form. Example: 500 mg per tablet UCUM, - Preferred system(s): EDQM Standard Terms"""
* doseForm 4..* CodeableConcept "A.2.4.1.6 Pharmaceutical dose form" """The form in which a pharmaceutical product is presented in the medicinal product package (e.g. tablet, syrup) - Preferred system(s): EDQM Standard Terms"""
* dosageRegimen 5..* BackboneElement "A.2.4.1.7 Dosage Regimen" """Number of units per intake and frequency of intake over a specified duration of time. Example: 1 tablet every 24h, for .1z"""
* route 6..* CodeableConcept "A.2.4.1.8 Route of administration" """Path by which the pharmaceutical product is taken into or makes contact with the body.  - Preferred system(s): EDQM Standard Terms"""
* onsetDate 7..* dateTime "A.2.4.1.9 Date of onset of treatment" """Date when patient needs to start taking the medicine prescribed - Preferred system(s): ISO 8601"""
