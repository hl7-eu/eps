Instance: Composition-24c0f4df-ed5c-4a81-b34f-6d7cfffe310b
InstanceOf: CompositionEuEps
Title: "Composition: Complete EPS"
Description: "Example of a complete HL7 Europe Patient Summary (EPS) FHIR Composition [Petra Schwartz]"
Usage: #example
* id = "24c0f4df-ed5c-4a81-b34f-6d7cfffe310b"
* identifier.system = "urn:ietf:rfc:9562"
* identifier.value = "4efe560e-aeef-4419-9a57-4b6af5c05779"
* identifier.assigner.display = "HL7 Europe"
* title = "European Patient Summary"
* status = #final
* type = $loinc#60591-5 "Patient summary Document"
* type.text = "Patient summary Document"
* subject = Reference(Patient-f0b2dcfe-e837-464b-ae8a-3b9da1807dd3)
* author[+] = Reference(PractitionerRole-01d682e6-bb2d-4b31-9d3c-51cdc6dfb39b)
* custodian[+] = Reference(Organization-ce815734-508a-4c1d-8b63-01e1d02a5614)
* date = "2025-08-31T17:46:55Z"
* confidentiality = #N
//
// section 0 , slice sectionProblems
//
* section[sectionProblems]
  * title = "Problem list"
  * code = $loinc#11450-4 "Problem list - Reported"
  * text.status = #generated
  * text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
<table class='hl7__ips'><tr><th>Condition</th><th>Onset Date</th><th>Status</th></tr><tr><td>Hyperlipidemia</td><td><span class='nb'>2020-06-15</span></td><td>active</td></tr><tr><td>Emphysematous bronchitis</td><td><span class='nb'>2020-06-15</span></td><td>active</td></tr><tr><td>Ischemic heart disease</td><td><span class='nb'>2010-04-19</span></td><td>active</td></tr><tr><td>Chronic sinusitis</td><td><span class='nb'>1994-01-16</span></td><td>active</td></tr><tr><td>Anemia</td><td><span class='nb'>1993-02-22</span></td><td>active</td></tr><tr><td>Prediabetes</td><td><span class='nb'>1991-02-18</span></td><td>active</td></tr></table>
</div>
"""
  * entry[problem][+] = Reference(Condition-1945356e-a6aa-498e-9aee-9f708bd78c35)


// section 1
* section[sectionMedications]
  * title = "Medication list"
  * code = $loinc#10160-0 "History of Medication use Narrative"
  * text.status = #generated
  * text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
<table class='hl7__ips'><tr><th>Medication</th><th>Since</th><th>Form</th><th>Dosage</th><th>Reason</th></tr><tr><td>Simvastatin 10 mg oral tablet</td><td><span class='nb'>2025-07-15</span></td><td>Oral tablet
</td><td>1 tablet (10 mg) by mouth once daily</td><td>Hyperlipidemia</td></tr><tr><td>Albuterol (as albuterol sulfate) 5 mg/mL solution for inhalation</td><td><span class='nb'>2025-07-14</span></td><td>Solution for inhalation
</td><td>2.5 mg (0.5 mL of 5 mg/mL solution) via nebulizer every 4 to 6 hours as needed</td><td>Chronic obstructive bronchitis (disorder)</td></tr><tr><td>Acetaminophen 300 mg and hydrocodone bitartrate 5 mg oral tablet</td><td><span class='nb'>2025-07-14</span></td><td>Oral tablet
</td><td>1 tablet (300 mg/5 mg) by mouth every 4 to 6 hours as needed for pain</td><td></td></tr><tr><td>60 ACTUAT Fluticasone propionate 0.25 MG/ACTUAT / salmeterol 0.05 MG/ACTUAT Dry Powder Inhaler</td><td><span class='nb'>2025-07-14</span></td><td></td><td>1 inhalation (0.25 mg/0.05 mg) twice daily</td><td>Chronic obstructive bronchitis (disorder)</td></tr><tr><td>Clopidogrel (as clopidogrel bisulfate) 75 mg oral tablet</td><td><span class='nb'>2010-04-26</span></td><td>Oral tablet
</td><td>1 tablet (75 mg) by mouth once daily</td><td></td></tr><tr><td>Simvastatin 20 mg oral tablet</td><td><span class='nb'>2010-04-26</span></td><td>Oral tablet
</td><td>1 tablet (20 mg) by mouth once daily</td><td></td></tr><tr><td>Nitroglycerin 400 microgram/actuation sublingual spray</td><td><span class='nb'>2010-04-26</span></td><td>Sublingual spray
</td><td>400 micrograms (1 spray) sublingually as needed for chest pain, may repeat every 5 minutes as needed, up to 3 sprays in 15 minutes</td><td></td></tr><tr><td>Metoprolol tartrate (as metoprolol succinate) 100 mg prolonged-release oral tablet</td><td><span class='nb'>2010-04-26</span></td><td>Prolonged-release oral tablet
</td><td>1 tablet (100 mg) once daily</td><td></td></tr><tr><td>doxycycline hyclate 100 MG</td><td><span class='nb'>2008-08-12</span></td><td></td><td>100 mg twice daily</td><td>Viral sinusitis (disorder)</td></tr><tr><td>Astemizole 10 mg oral tablet</td><td><span class='nb'>1978-10-26</span></td><td>Oral tablet
</td><td>1 tablet (10 mg) once daily</td><td></td></tr><tr><td>Hydrocortisone 10 mg/g and urea 100 mg/g cutaneous cream</td><td><span class='nb'>1978-10-11</span></td><td>Cutaneous cream
</td><td>Apply a thin layer (approximately 1 g) to the affected area twice daily</td><td>Contact dermatitis</td></tr></table>
</div>
"""
  * entry[medicationStatementOrRequest][+] = Reference(MedicationStatement-b3a1ed32-3f44-41e2-919b-1c8bdeaee29c)

//
// section 2, slice sectionImmunizations
//
* section[sectionImmunizations]
  * title = "Immunizations list"
  * code = $loinc#11369-6 "History of Immunization note"
  * text.status = #generated
  * text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
<table class='hl7__ips'><tr><th>Vaccine</th><th>Date</th></tr><tr><td>Influenza virus antigen only vaccine product</td><td><span class='nb'>2025-07-14</span></td></tr><tr><td>SARS-CoV-2 mRNA vaccine</td><td><span class='nb'>2021-03-01</span></td></tr><tr><td>Clostridium tetani toxoid antigen adsorbed only vaccine product</td><td><span class='nb'>2018-06-04</span></td></tr></table>
</div>
"""
  * entry[immunization][+] = Reference(Immunization-2c268a6d-fd6e-4580-acae-3b5f52d43c26)
 //  * entry[+] = Reference(urn:uuid:15ea584e-1e48-4177-8f0a-9f394f38bd43)
/*   * entry[+] = Reference(urn:uuid:2a00add8-f084-4b9e-9d73-8440450d527b) */
//
// section, slice sectionAllergies
//
* section[sectionAllergies]
  * title = "Allergies and Intolerances"
  * code = $loinc#48765-2 "Allergies and adverse reactions Document"
  * text.status = #generated
  * text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
<table class='hl7__ips'><tr><th>Allergy/Intolerance</th><th>Onset Date</th><th>Status</th><th>Type</th><th>Reaction</th></tr><tr><td>Penicillin V</td><td><span class='nb'>1978-10-26</span></td><td>active</td><td>medication</td><td></td></tr><tr><td>Allergy to substance</td><td><span class='nb'>1978-10-26</span></td><td>active</td><td>environment</td><td></td></tr></table>
</div>
"""
  * entry[allergyOrIntolerance][+] = Reference(AllergyIntolerance-d5cab1c1-382d-418c-a1b6-1c21408fcfe5)


//
// section 4, slice sectionPlanOfCare
//
* section[sectionPlanOfCare]
  * title = "Care Plan"
  * code = $loinc#18776-5 "Plan of care note"
  * text.status = #generated
  * text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
<table class='hl7__ips'><tr><th>Immunization Recommendation</th><th>Due Date</th><th>Reason</th></tr><tr><td>Vaccine product containing only Influenza virus antigen (medicinal product)</td><td><span class='nb'>2025-10-01</span></td><td>Annual seasonal influenza vaccination</td></tr></table>
</div>
"""
  * entry[carePlan][+] = Reference(CarePlan-81b033d8-ab2e-4eee-8792-3b9c6261869d)


 
// section 5, slice sectionProceduresHx
//
* section[sectionProceduresHx]
  * title = "History of Procedures"
  * code = $loinc#47519-4 "History of Procedures Document"
  * text.status = #generated
  * text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
<table class='hl7__ips'><tr><td>No known procedures</td></tr></table>
</div>
"""
  * emptyReason = $list-empty-reason#nilknown
//
// section 6, slice sectionVitalSigns
//
* section[sectionVitalSigns]
  * title = "Vital Signs"
  * code = $loinc#8716-3 "Vital signs note"
  * text.status = #generated
  * text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
<table class='hl7__ips'><tr><th>Vital Signs</th><th>2025-07-14</th><th>2024-07-08</th></tr><tr><td>Body Height</td><td>158.3 cm</td><td>158.3 cm</td></tr><tr><td>Pain severity - 0-10 verbal numeric rating [Score] - Reported</td><td>3 {score}</td><td>2 {score}</td></tr><tr><td>Body Weight</td><td>73.3 kg</td><td>71.3 kg</td></tr><tr><td>Body mass index (BMI) [Ratio]</td><td>29.2 kg/m2</td><td>28.5 kg/m2</td></tr><tr><td>Diastolic Blood Pressure</td><td>55 mm[Hg]</td><td>62 mm[Hg]</td></tr><tr><td>Systolic Blood Pressure</td><td>113 mm[Hg]</td><td>104 mm[Hg]</td></tr><tr><td>Heart rate</td><td>80 /min</td><td>72 /min</td></tr><tr><td>Respiratory rate</td><td>13 /min</td><td>14 /min</td></tr></table>
</div>
"""
  * entry[vitalSign][+] = Reference(Observation-62e65dfb-d837-4556-8e75-2ca7a6fe6e40)

//
// section 7, slice sectionResults
//
* section[sectionResults]
  * title = "Relevant diagnostic tests/laboratory data"
  * code = $loinc#30954-2 "Relevant diagnostic tests/laboratory data note"
  * text.status = #generated
  * text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
<table class="hl7__ips"><thead><tr><th>Recent Lab Observations</th><th>15 Jul 2024</th><th>Reference Range</th><th>Unit</th></tr></thead><tbody><tr><td>Glucose [Mass/volume] in Blood</td><td><strong>65.9 L</strong></td><td>70 - 99</td><td>mg/dL</td></tr><tr><td>Urea nitrogen [Mass/volume] in Blood</td><td>9.2</td><td>7 - 20</td><td>mg/dL</td></tr><tr><td>Creatinine [Mass/volume] in Blood</td><td><strong>2.7 H</strong></td><td>0.6 - 1.3</td><td>mg/dL</td></tr><tr><td>Calcium [Mass/volume] in Blood</td><td>8.7</td><td>8.5 - 10.3</td><td>mg/dL</td></tr><tr><td>Sodium [Moles/volume] in Blood</td><td>136.4</td><td>135 - 145</td><td>mmol/L</td></tr><tr><td>Potassium [Moles/volume] in Blood</td><td>4.4</td><td>3.5 - 5.1</td><td>mmol/L</td></tr><tr><td>Chloride [Moles/volume] in Blood</td><td>101.2</td><td>98 - 108</td><td>mmol/L</td></tr><tr><td>Carbon dioxide, total [Moles/volume] in Blood</td><td>28.5</td><td>22 - 32</td><td>mmol/L</td></tr><tr><td>Protein [Mass/volume] in Serum or Plasma</td><td>6.9</td><td>6 - 8.3</td><td>g/dL</td></tr><tr><td>Albumin [Mass/volume] in Serum or Plasma</td><td>4.0</td><td>3.5 - 5</td><td>g/dL</td></tr><tr><td>Globulin [Mass/volume] in Serum by calculation</td><td>2.9</td><td>2 - 3.5</td><td>g/L</td></tr><tr><td>Bilirubin.total [Mass/volume] in Serum or Plasma</td><td>0.8</td><td>0.3 - 1.2</td><td>mg/dL</td></tr><tr><td>Alkaline phosphatase [Enzymatic activity/volume] in Serum or Plasma</td><td>87.0</td><td>35 - 117</td><td>U/L</td></tr><tr><td>Alanine aminotransferase [Enzymatic activity/volume] in Serum or Plasma</td><td>45.0</td><td>7 - 46</td><td>U/L</td></tr><tr><td>Aspartate aminotransferase [Enzymatic activity/volume] in Serum or Plasma</td><td><strong>8.7 L</strong></td><td>10 - 40</td><td>U/L</td></tr><tr><td>Cholesterol [Mass/volume] in Serum or Plasma</td><td>193.2</td><td>125 - 200</td><td>mg/dL</td></tr><tr><td>Triglyceride [Mass/volume] in Serum or Plasma</td><td>149.3</td><td>0 - 199</td><td>mg/dL</td></tr><tr><td>Cholesterol in LDL [Mass/volume] in Serum or Plasma by Direct assay</td><td>129.5</td><td>0 - 159</td><td>mg/dL</td></tr><tr><td>Cholesterol in HDL [Mass/volume] in Serum or Plasma</td><td>62.7</td><td>50 - 100</td><td>mg/dL</td></tr></tbody></table>
</div>
"""
  * entry[results-medicalTestResult][+] = Reference(Observation-faacb416-55b2-433a-82b9-9c5d84912df1)
//
// section 8, slice sectionMedicalDevices
//
* section[sectionMedicalDevices]
  * title = "Device Use"
  * code = $loinc#46264-8 "History of medical device use"
  * text.status = #generated
  * text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
<table class='hl7__ips'><tr><th>Device</th><th>Date (since)</th></tr><tr><td>Home nebulizer (physical object)</td><td><span class='nb'>2021-06-21</span></td></tr><tr><td>Blood glucose meter (physical object)</td><td><span class='nb'>1991-02-18</span></td></tr></table>
</div>
"""
  * entry[deviceStatement][+] = Reference(DeviceUse-9ee7b991-3240-42e3-9bcf-a1de0507754f)




Instance: Condition-1945356e-a6aa-498e-9aee-9f708bd78c35
InstanceOf: ConditionEuCore
Title: "Condition: Hyperlipidemia"
Description: "Example condition for Hyperlipidemia [Petra Schwartz]"
Usage: #example
* id = "1945356e-a6aa-498e-9aee-9f708bd78c35"
* category = $condition-category#problem-list-item "Problem List Item"
* code.coding[0] = $sct#55822004 "Hyperlipidemia (disorder)"
* code.text = "Hyperlipidemia"
* onsetDateTime = "2020-06-15"
* clinicalStatus = $condition-clinical#active
* subject = Reference(Patient-f0b2dcfe-e837-464b-ae8a-3b9da1807dd3) "Petra Schwartz"
* asserter = Reference(Practitioner-3752dacc-a6e8-4cdd-b82f-92e1647de816) "Dr. Hel Ping"
* text.status = #generated
* text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
<table class="hl7__ips"><tr><td>Hyperlipidemia</td><td><span class='nb'>2020-06-15</span></td><td>active</td></tr></table>
</div>
"""



Instance: Medication-a20659b9-12e2-417a-aa70-98483da34f44
InstanceOf: MedicationEuCore
Title: "Medication: simvastatin 10 MG Oral Tablet"
Description: "Medication: simvastatin 10 MG Oral Tablet"
Usage: #example
* id = "a20659b9-12e2-417a-aa70-98483da34f44"
* code.coding[0] = $rxnorm#314231 "simvastatin 10 MG Oral Tablet"
* code.coding[+] = $sct#319996000 "Product containing precisely simvastatin 10 milligram/1 each conventional release oral tablet (clinical drug)"
* code.text = "Simvastatin 10 mg oral tablet"
* form.coding = $sct#421026006 "Oral tablet"
* ingredient[0].itemCodeableConcept = $sct#387584000 "Simvastatin"
* ingredient[0].isActive = true
* text.status = #generated
* text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
Simvastatin 10 mg oral tablet, Oral tablet

</div>
"""




Instance: MedicationStatement-b3a1ed32-3f44-41e2-919b-1c8bdeaee29c
InstanceOf: MedicationStatementEuEps
Title: "MedicationStatement: Simvastatin 10 mg oral tablet"
Description: "Example medication statement for Simvastatin 10 mg oral tablet [Petra Schwartz]"
Usage: #example
* id = "b3a1ed32-3f44-41e2-919b-1c8bdeaee29c"
* status = #active
* medicationReference = Reference(Medication-a20659b9-12e2-417a-aa70-98483da34f44) "Simvastatin 10 mg oral tablet"
* subject = Reference(Patient-f0b2dcfe-e837-464b-ae8a-3b9da1807dd3) "Petra Schwartz"
* effectivePeriod.start = "2025-07-15"
* dosage.text = "1 tablet (10 mg) by mouth once daily"
* dosage.doseAndRate.doseQuantity.value = 1
* dosage.doseAndRate.doseQuantity.unit = "{tbl}"
* dosage.doseAndRate.doseQuantity.code = #{tbl}
* dosage.doseAndRate.doseQuantity.system = $ucum
* dosage.timing.repeat.frequency = 1
* dosage.timing.repeat.period = 1
* dosage.timing.repeat.periodUnit = #d
* dosage.asNeededBoolean = false
* reasonCode[0].coding = $sct#55822004 "Hyperlipidemia"
* text.status = #generated
* text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
<table class="hl7__ips"><tr><td>Simvastatin 10 mg oral tablet</td><td><span class='nb'>2025-07-15</span></td><td>Oral tablet
</td><td>1 tablet (10 mg) by mouth once daily</td><td>Hyperlipidemia</td></tr></table>
</div>
"""






// Instance: Medication-1340afef-eeb2-454f-8059-aec90c0b4ccd
// InstanceOf: MedicationEuCore
// Title: "Medication"
// Description: "Medication"
// Usage: #example
// * id = "1340afef-eeb2-454f-8059-aec90c0b4ccd"
// * code.coding[0] = $rxnorm#245314 "albuterol 5 MG/ML Inhalation Solution"
// * code.coding[+] = $sct#1197460000 "Product containing precisely salbutamol (as salbutamol sulfate) 5 milligram/1 milliliter conventional release solution for inhalation (clinical drug)"
// * code.text = "Albuterol (as albuterol sulfate) 5 mg/mL solution for inhalation"
// * form.coding = $sct#420641004 "Solution for inhalation"
// * ingredient[0].itemCodeableConcept = $sct#48474002 "Albuterol sulfate"
// * ingredient[0].isActive = true
// * text.status = #generated
// * text.div = """
// <div xmlns="http://www.w3.org/1999/xhtml">
// Albuterol (as albuterol sulfate) 5 mg/mL solution for inhalation, Solution for inhalation

// </div>
// """


// Instance: MedicationStatement-a7da60a1-8ba6-4ca2-94aa-a8e67c8c253b
// InstanceOf: MedicationStatementEuEps
// Title: "MedicationStatement: Albuterol (as albuterol sulfate) 5 mg/mL solution for inhalation"
// Description: "Example medication statement for Albuterol (as albuterol sulfate) 5 mg/mL solution for inhalation [Petra Schwartz]"
// Usage: #example
// * id = "a7da60a1-8ba6-4ca2-94aa-a8e67c8c253b"
// * status = #active
// * medicationReference = Reference(urn:uuid:1340afef-eeb2-454f-8059-aec90c0b4ccd) "Albuterol (as albuterol sulfate) 5 mg/mL solution for inhalation"
// * subject = Reference(Patient-f0b2dcfe-e837-464b-ae8a-3b9da1807dd3) "Petra Schwartz"
// * effectivePeriod.start = "2025-07-14"
// * dosage.text = "2.5 mg (0.5 mL of 5 mg/mL solution) via nebulizer every 4 to 6 hours as needed"
// * dosage.doseAndRate.doseQuantity.value = 2.5
// * dosage.doseAndRate.doseQuantity.unit = "mg"
// * dosage.doseAndRate.doseQuantity.code = #mg
// * dosage.doseAndRate.doseQuantity.system = $ucum
// * dosage.timing.repeat.frequency = 1
// * dosage.timing.repeat.period = 4
// * dosage.timing.repeat.periodUnit = #h
// * dosage.asNeededBoolean = true
// * reasonCode[0].coding = $sct#185086009 "Chronic obstructive bronchitis (disorder)"
// * text.status = #generated
// * text.div = """
// <div xmlns="http://www.w3.org/1999/xhtml">
// <table class="hl7__ips"><tr><td>Albuterol (as albuterol sulfate) 5 mg/mL solution for inhalation</td><td><span class='nb'>2025-07-14</span></td><td>Solution for inhalation
// </td><td>2.5 mg (0.5 mL of 5 mg/mL solution) via nebulizer every 4 to 6 hours as needed</td><td>Chronic obstructive bronchitis (disorder)</td></tr></table>
// </div>
// """






// Instance: Medication-f58456a0-ec92-46ee-a8c6-ba34919ca9fd
// InstanceOf: MedicationEuCore
// Title: "Medication"
// Description: "Medication"
// Usage: #example
// * id = "f58456a0-ec92-46ee-a8c6-ba34919ca9fd"
// * code.coding[0] = $rxnorm#856987 "acetaminophen 300 MG / hydrocodone bitartrate 5 MG Oral Tablet"
// * code.coding[+] = $sct#420397007 "Product containing precisely hydrocodone bitartrate 5 milligram and paracetamol 300 milligram/1 each conventional release oral tablet (clinical drug)"
// * code.text = "Acetaminophen 300 mg and hydrocodone bitartrate 5 mg oral tablet"
// * form.coding = $sct#421026006 "Oral tablet"
// * ingredient[0].itemCodeableConcept = $sct#3874004 "Hydrocodone bitartrate"
// * ingredient[0].isActive = true
// * text.status = #generated
// * text.div = """
// <div xmlns="http://www.w3.org/1999/xhtml">
// Acetaminophen 300 mg and hydrocodone bitartrate 5 mg oral tablet, Oral tablet

// </div>
// """






// Instance: MedicationStatement-593b3d7f-857c-4d3e-9aa7-2e9204fe2d57
// InstanceOf: MedicationStatementEuEps
// Title: "MedicationStatement: Acetaminophen 300 mg and hydrocodone bitartrate 5 mg oral tablet"
// Description: "Example medication statement for Acetaminophen 300 mg and hydrocodone bitartrate 5 mg oral tablet [Petra Schwartz]"
// Usage: #example
// * id = "593b3d7f-857c-4d3e-9aa7-2e9204fe2d57"
// * status = #active
// * medicationReference = Reference(urn:uuid:f58456a0-ec92-46ee-a8c6-ba34919ca9fd) "Acetaminophen 300 mg and hydrocodone bitartrate 5 mg oral tablet"
// * subject = Reference(Patient-f0b2dcfe-e837-464b-ae8a-3b9da1807dd3) "Petra Schwartz"
// * effectivePeriod.start = "2025-07-14"
// * dosage.text = "1 tablet (300 mg/5 mg) by mouth every 4 to 6 hours as needed for pain"
// * dosage.doseAndRate.doseQuantity.value = 1
// * dosage.doseAndRate.doseQuantity.unit = "{tbl}"
// * dosage.doseAndRate.doseQuantity.code = #{tbl}
// * dosage.doseAndRate.doseQuantity.system = $ucum
// * dosage.timing.repeat.frequency = 1
// * dosage.timing.repeat.period = 4
// * dosage.timing.repeat.periodUnit = #h
// * dosage.asNeededBoolean = true
// * text.status = #generated
// * text.div = """
// <div xmlns="http://www.w3.org/1999/xhtml">
// <table class="hl7__ips"><tr><td>Acetaminophen 300 mg and hydrocodone bitartrate 5 mg oral tablet</td><td><span class='nb'>2025-07-14</span></td><td>Oral tablet
// </td><td>1 tablet (300 mg/5 mg) by mouth every 4 to 6 hours as needed for pain</td><td></td></tr></table>
// </div>
// """






// Instance: Medication-5d10a9b7-7f8e-46b5-8814-8b91176b4024
// InstanceOf: MedicationEuCore
// Title: "Medication"
// Description: "Medication"
// Usage: #example
// * id = "5d10a9b7-7f8e-46b5-8814-8b91176b4024"
// * code.coding[0] = $rxnorm#896209 "60 ACTUAT Fluticasone propionate 0.25 MG/ACTUAT / salmeterol 0.05 MG/ACTUAT Dry Powder Inhaler"
// * code.text = "60 ACTUAT Fluticasone propionate 0.25 MG/ACTUAT / salmeterol 0.05 MG/ACTUAT Dry Powder Inhaler"
// * text.status = #generated
// * text.div = """
// <div xmlns="http://www.w3.org/1999/xhtml">
// 60 ACTUAT Fluticasone propionate 0.25 MG/ACTUAT / salmeterol 0.05 MG/ACTUAT Dry Powder Inhaler, 
// </div>
// """






// Instance: MedicationStatement-7ec36e53-c60d-41f2-aab4-e6cebfb1b40f
// InstanceOf: MedicationStatementEuEps
// Title: "MedicationStatement: 60 ACTUAT Fluticasone propionate 0.25 MG/ACTUAT / salmeterol 0.05 MG/ACTUAT Dry Powder Inhaler"
// Description: "Example medication statement for 60 ACTUAT Fluticasone propionate 0.25 MG/ACTUAT / salmeterol 0.05 MG/ACTUAT Dry Powder Inhaler [Petra Schwartz]"
// Usage: #example
// * id = "7ec36e53-c60d-41f2-aab4-e6cebfb1b40f"
// * status = #active
// * medicationReference = Reference(urn:uuid:5d10a9b7-7f8e-46b5-8814-8b91176b4024) "60 ACTUAT Fluticasone propionate 0.25 MG/ACTUAT / salmeterol 0.05 MG/ACTUAT Dry Powder Inhaler"
// * subject = Reference(Patient-f0b2dcfe-e837-464b-ae8a-3b9da1807dd3) "Petra Schwartz"
// * effectivePeriod.start = "2025-07-14"
// * dosage.text = "1 inhalation (0.25 mg/0.05 mg) twice daily"
// * dosage.doseAndRate.doseQuantity.value = 1
// * dosage.doseAndRate.doseQuantity.unit = "actuat"
// * dosage.doseAndRate.doseQuantity.unit = #{actuat}
// * dosage.doseAndRate.doseQuantity.system = $ucum
// * dosage.timing.repeat.frequency = 2
// * dosage.timing.repeat.period = 1
// * dosage.timing.repeat.periodUnit = #d
// * dosage.asNeededBoolean = false
// * reasonCode[0].coding = $sct#185086009 "Chronic obstructive bronchitis (disorder)"
// * text.status = #generated
// * text.div = """
// <div xmlns="http://www.w3.org/1999/xhtml">
// <table class="hl7__ips"><tr><td>60 ACTUAT Fluticasone propionate 0.25 MG/ACTUAT / salmeterol 0.05 MG/ACTUAT Dry Powder Inhaler</td><td><span class='nb'>2025-07-14</span></td><td></td><td>1 inhalation (0.25 mg/0.05 mg) twice daily</td><td>Chronic obstructive bronchitis (disorder)</td></tr></table>
// </div>
// """






// Instance: Medication-625e7126-587a-482c-99e9-2a76e78aff99
// InstanceOf: MedicationEuCore
// Title: "Medication"
// Description: "Medication"
// Usage: #example
// * id = "625e7126-587a-482c-99e9-2a76e78aff99"
// * code.coding[0] = $rxnorm#309362 "clopidogrel 75 MG Oral Tablet"
// * code.coding[+] = $sct#783586007 "Product containing precisely clopidogrel (as clopidogrel bisulfate) 75 milligram/1 each conventional release oral tablet (clinical drug)"
// * code.text = "Clopidogrel (as clopidogrel bisulfate) 75 mg oral tablet"
// * form.coding = $sct#421026006 "Oral tablet"
// * ingredient[0].itemCodeableConcept = $sct#412354008 "Clopidogrel bisulfate"
// * ingredient[0].isActive = true
// * text.status = #generated
// * text.div = """
// <div xmlns="http://www.w3.org/1999/xhtml">
// Clopidogrel (as clopidogrel bisulfate) 75 mg oral tablet, Oral tablet

// </div>
// """






// Instance: MedicationStatement-e3178731-4083-4c0f-b993-0c654412ea6f
// InstanceOf: MedicationStatementEuEps
// Title: "MedicationStatement: Clopidogrel (as clopidogrel bisulfate) 75 mg oral tablet"
// Description: "Example medication statement for Clopidogrel (as clopidogrel bisulfate) 75 mg oral tablet [Petra Schwartz]"
// Usage: #example
// * id = "e3178731-4083-4c0f-b993-0c654412ea6f"
// * status = #active
// * medicationReference = Reference(urn:uuid:625e7126-587a-482c-99e9-2a76e78aff99) "Clopidogrel (as clopidogrel bisulfate) 75 mg oral tablet"
// * subject = Reference(Patient-f0b2dcfe-e837-464b-ae8a-3b9da1807dd3) "Petra Schwartz"
// * effectivePeriod.start = "2010-04-26"
// * dosage.text = "1 tablet (75 mg) by mouth once daily"
// * dosage.doseAndRate.doseQuantity.value = 1
// * dosage.doseAndRate.doseQuantity.unit = "{tbl}"
// * dosage.doseAndRate.doseQuantity.code = #{tbl}
// * dosage.doseAndRate.doseQuantity.system = $ucum
// * dosage.timing.repeat.frequency = 1
// * dosage.timing.repeat.period = 1
// * dosage.timing.repeat.periodUnit = #d
// * dosage.asNeededBoolean = false
// * text.status = #generated
// * text.div = """
// <div xmlns="http://www.w3.org/1999/xhtml">
// <table class="hl7__ips"><tr><td>Clopidogrel (as clopidogrel bisulfate) 75 mg oral tablet</td><td><span class='nb'>2010-04-26</span></td><td>Oral tablet
// </td><td>1 tablet (75 mg) by mouth once daily</td><td></td></tr></table>
// </div>
// """






// Instance: Medication-60fa453b-a7e3-42da-8325-b054bfaa0f50
// InstanceOf: MedicationEuCore
// Title: "Medication"
// Description: "Medication"
// Usage: #example
// * id = "60fa453b-a7e3-42da-8325-b054bfaa0f50"
// * code.coding[0] = $rxnorm#312961 "simvastatin 20 MG Oral Tablet"
// * code.coding[+] = $sct#319997009 "Product containing precisely simvastatin 20 milligram/1 each conventional release oral tablet (clinical drug)"
// * code.text = "Simvastatin 20 mg oral tablet"
// * form.coding = $sct#421026006 "Oral tablet"
// * ingredient[0].itemCodeableConcept = $sct#387584000 "Simvastatin"
// * ingredient[0].isActive = true
// * text.status = #generated
// * text.div = """
// <div xmlns="http://www.w3.org/1999/xhtml">
// Simvastatin 20 mg oral tablet, Oral tablet

// </div>
// """






// Instance: MedicationStatement-dee03718-e08f-43dc-afd4-72d4d7b064c8
// InstanceOf: MedicationStatementEuEps
// Title: "MedicationStatement: Simvastatin 20 mg oral tablet"
// Description: "Example medication statement for Simvastatin 20 mg oral tablet [Petra Schwartz]"
// Usage: #example
// * id = "dee03718-e08f-43dc-afd4-72d4d7b064c8"
// * status = #active
// * medicationReference = Reference(urn:uuid:60fa453b-a7e3-42da-8325-b054bfaa0f50) "Simvastatin 20 mg oral tablet"
// * subject = Reference(Patient-f0b2dcfe-e837-464b-ae8a-3b9da1807dd3) "Petra Schwartz"
// * effectivePeriod.start = "2010-04-26"
// * dosage.text = "1 tablet (20 mg) by mouth once daily"
// * dosage.doseAndRate.doseQuantity.value = 1
// * dosage.doseAndRate.doseQuantity.unit = "{tbl}"
// * dosage.doseAndRate.doseQuantity.code = #{tbl}
// * dosage.doseAndRate.doseQuantity.system = $ucum
// * dosage.timing.repeat.frequency = 1
// * dosage.timing.repeat.period = 1
// * dosage.timing.repeat.periodUnit = #d
// * dosage.asNeededBoolean = false
// * text.status = #generated
// * text.div = """
// <div xmlns="http://www.w3.org/1999/xhtml">
// <table class="hl7__ips"><tr><td>Simvastatin 20 mg oral tablet</td><td><span class='nb'>2010-04-26</span></td><td>Oral tablet
// </td><td>1 tablet (20 mg) by mouth once daily</td><td></td></tr></table>
// </div>
// """






// Instance: Medication-4147d79f-97cd-4eaa-88a0-3644ef626ff9
// InstanceOf: MedicationEuCore
// Title: "Medication"
// Description: "Medication"
// Usage: #example
// * id = "4147d79f-97cd-4eaa-88a0-3644ef626ff9"
// * code.coding[0] = $rxnorm#705129 "nitroglycerin 0.4 MG/ACTUAT Mucosal Spray"
// * code.coding[+] = $sct#425176000 "Product containing precisely glyceryl trinitrate 400 microgram/1 actuation conventional release sublingual spray (clinical drug)"
// * code.text = "Nitroglycerin 400 microgram/actuation sublingual spray"
// * form.coding = $sct#385074009 "Sublingual spray"
// * ingredient[0].itemCodeableConcept = $sct#387404004 "Glyceryl trinitrate"
// * ingredient[0].isActive = true
// * text.status = #generated
// * text.div = """
// <div xmlns="http://www.w3.org/1999/xhtml">
// Nitroglycerin 400 microgram/actuation sublingual spray, Sublingual spray

// </div>
// """






// Instance: MedicationStatement-7bec446f-4394-4158-b831-ace90bef328f
// InstanceOf: MedicationStatementEuEps
// Title: "MedicationStatement: Nitroglycerin 400 microgram/actuation sublingual spray"
// Description: "Example medication statement for Nitroglycerin 400 microgram/actuation sublingual spray [Petra Schwartz]"
// Usage: #example
// * id = "7bec446f-4394-4158-b831-ace90bef328f"
// * status = #active
// * medicationReference = Reference(urn:uuid:4147d79f-97cd-4eaa-88a0-3644ef626ff9) "Nitroglycerin 400 microgram/actuation sublingual spray"
// * subject = Reference(Patient-f0b2dcfe-e837-464b-ae8a-3b9da1807dd3) "Petra Schwartz"
// * effectivePeriod.start = "2010-04-26"
// * dosage.text = "400 micrograms (1 spray) sublingually as needed for chest pain, may repeat every 5 minutes as needed, up to 3 sprays in 15 minutes"
// * dosage.doseAndRate.doseQuantity.value = 400
// * dosage.doseAndRate.doseQuantity.unit = "microgram"
// * dosage.doseAndRate.doseQuantity.code = #ug
// * dosage.doseAndRate.doseQuantity.system = $ucum
// * dosage.timing.repeat.frequency = 1
// * dosage.timing.repeat.period = 5
// * dosage.timing.repeat.periodUnit = #min
// * dosage.asNeededBoolean = true
// * text.status = #generated
// * text.div = """
// <div xmlns="http://www.w3.org/1999/xhtml">
// <table class="hl7__ips"><tr><td>Nitroglycerin 400 microgram/actuation sublingual spray</td><td><span class='nb'>2010-04-26</span></td><td>Sublingual spray
// </td><td>400 micrograms (1 spray) sublingually as needed for chest pain, may repeat every 5 minutes as needed, up to 3 sprays in 15 minutes</td><td></td></tr></table>
// </div>
// """






// Instance: Medication-b89ab018-9174-4569-a9d5-a9afe867d542
// InstanceOf: MedicationEuCore
// Title: "Medication"
// Description: "Medication"
// Usage: #example
// * id = "b89ab018-9174-4569-a9d5-a9afe867d542"
// * code.coding[0] = $rxnorm#866412 "24 HR metoprolol succinate 100 MG Extended Release Oral Tablet"
// * code.coding[+] = $sct#879980009 "Product containing precisely metoprolol tartrate (as metoprolol succinate) 100 milligram/1 each prolonged-release oral tablet (clinical drug)"
// * code.text = "Metoprolol tartrate (as metoprolol succinate) 100 mg prolonged-release oral tablet"
// * form.coding =  $sct#385060002 "Prolonged-release oral tablet"
// * ingredient[0].itemCodeableConcept = $sct#412432007 "Metoprolol succinate"
// * ingredient[0].isActive = true
// * text.status = #generated
// * text.div = """
// <div xmlns="http://www.w3.org/1999/xhtml">
// Metoprolol tartrate (as metoprolol succinate) 100 mg prolonged-release oral tablet, Prolonged-release oral tablet

// </div>
// """






// Instance: MedicationStatement-cf3335dc-289e-4b2b-95ca-e266cbf12c1c
// InstanceOf: MedicationStatementEuEps
// Title: "MedicationStatement: Metoprolol tartrate (as metoprolol succinate) 100 mg prolonged-release oral tablet"
// Description: "Example medication statement for Metoprolol tartrate (as metoprolol succinate) 100 mg prolonged-release oral tablet [Petra Schwartz]"
// Usage: #example
// * id = "cf3335dc-289e-4b2b-95ca-e266cbf12c1c"
// * status = #active
// * medicationReference = Reference(urn:uuid:b89ab018-9174-4569-a9d5-a9afe867d542) "Metoprolol tartrate (as metoprolol succinate) 100 mg prolonged-release oral tablet"
// * subject = Reference(Patient-f0b2dcfe-e837-464b-ae8a-3b9da1807dd3) "Petra Schwartz"
// * effectivePeriod.start = "2010-04-26"
// * dosage.text = "1 tablet (100 mg) once daily"
// * dosage.doseAndRate.doseQuantity.value = 1
// * dosage.doseAndRate.doseQuantity.unit = "{tbl}"
// * dosage.doseAndRate.doseQuantity.code = #{tbl}
// * dosage.doseAndRate.doseQuantity.system = $ucum
// * dosage.timing.repeat.frequency = 1
// * dosage.timing.repeat.period = 1
// * dosage.timing.repeat.periodUnit = #d
// * dosage.asNeededBoolean = false
// * text.status = #generated
// * text.div = """
// <div xmlns="http://www.w3.org/1999/xhtml">
// <table class="hl7__ips"><tr><td>Metoprolol tartrate (as metoprolol succinate) 100 mg prolonged-release oral tablet</td><td><span class='nb'>2010-04-26</span></td><td>Prolonged-release oral tablet
// </td><td>1 tablet (100 mg) once daily</td><td></td></tr></table>
// </div>
// """






// Instance: Medication-96cf84a2-4a7f-4370-8090-c6834e53905b
// InstanceOf: MedicationEuCore
// Title: "Medication"
// Description: "Medication"
// Usage: #example
// * id = "96cf84a2-4a7f-4370-8090-c6834e53905b"
// * code.coding[0] = $rxnorm#1649987 "doxycycline hyclate 100 MG"
// * code.text = "doxycycline hyclate 100 MG"
// * text.status = #generated
// * text.div = """
// <div xmlns="http://www.w3.org/1999/xhtml">
// doxycycline hyclate 100 MG, 
// </div>
// """






// Instance: MedicationStatement-8113c231-0133-4ac0-bfe0-437f227d3e63
// InstanceOf: MedicationStatementEuEps
// Title: "MedicationStatement: doxycycline hyclate 100 MG"
// Description: "Example medication statement for doxycycline hyclate 100 MG [Petra Schwartz]"
// Usage: #example
// * id = "8113c231-0133-4ac0-bfe0-437f227d3e63"
// * status = #active
// * medicationReference = Reference(urn:uuid:96cf84a2-4a7f-4370-8090-c6834e53905b) "doxycycline hyclate 100 MG"
// * subject = Reference(Patient-f0b2dcfe-e837-464b-ae8a-3b9da1807dd3) "Petra Schwartz"
// * effectivePeriod.start = "2008-08-12"
// * dosage.text = "100 mg twice daily"
// * dosage.doseAndRate.doseQuantity.value = 100
// * dosage.doseAndRate.doseQuantity.unit = "mg"
// * dosage.doseAndRate.doseQuantity.code = #mg
// * dosage.doseAndRate.doseQuantity.system = $ucum
// * dosage.timing.repeat.frequency = 2
// * dosage.timing.repeat.period = 1
// * dosage.timing.repeat.periodUnit = #d
// * dosage.asNeededBoolean = false
// * reasonCode[0].coding = $sct#444814009 "Viral sinusitis (disorder)"
// * text.status = #generated
// * text.div = """
// <div xmlns="http://www.w3.org/1999/xhtml">
// <table class="hl7__ips"><tr><td>doxycycline hyclate 100 MG</td><td><span class='nb'>2008-08-12</span></td><td></td><td>100 mg twice daily</td><td>Viral sinusitis (disorder)</td></tr></table>
// </div>
// """






// Instance: Medication-43f6bb90-095b-48cb-8e43-bf8af1678954
// InstanceOf: MedicationEuCore
// Title: "Medication"
// Description: "Medication"
// Usage: #example
// * id = "43f6bb90-095b-48cb-8e43-bf8af1678954"
// * code.coding[0] = $rxnorm#197378 "astemizole 10 MG Oral Tablet"
// * code.coding[+] = $sct#427388006 "Product containing precisely astemizole 10 milligram/1 each conventional release oral tablet (clinical drug)"
// * code.text = "Astemizole 10 mg oral tablet"
// * form.coding = $sct#421026006 "Oral tablet"
// * ingredient[0].itemCodeableConcept = $sct#387333002 "Astemizole"
// * ingredient[0].isActive = true
// * text.status = #generated
// * text.div = """
// <div xmlns="http://www.w3.org/1999/xhtml">
// Astemizole 10 mg oral tablet, Oral tablet

// </div>
// """






// Instance: MedicationStatement-c96b1da4-421c-48cb-ad59-f0eeac826ede
// InstanceOf: MedicationStatementEuEps
// Title: "MedicationStatement: Astemizole 10 mg oral tablet"
// Description: "Example medication statement for Astemizole 10 mg oral tablet [Petra Schwartz]"
// Usage: #example
// * id = "c96b1da4-421c-48cb-ad59-f0eeac826ede"
// * status = #active
// * medicationReference = Reference(urn:uuid:43f6bb90-095b-48cb-8e43-bf8af1678954) "Astemizole 10 mg oral tablet"
// * subject = Reference(Patient-f0b2dcfe-e837-464b-ae8a-3b9da1807dd3) "Petra Schwartz"
// * effectivePeriod.start = "1978-10-26"
// * dosage.text = "1 tablet (10 mg) once daily"
// * dosage.doseAndRate.doseQuantity.value = 1
// * dosage.doseAndRate.doseQuantity.unit = "{tbl}"
// * dosage.doseAndRate.doseQuantity.code = #{tbl}
// * dosage.doseAndRate.doseQuantity.system = $ucum
// * dosage.timing.repeat.frequency = 1
// * dosage.timing.repeat.period = 1
// * dosage.timing.repeat.periodUnit = #d
// * dosage.asNeededBoolean = false
// * text.status = #generated
// * text.div = """
// <div xmlns="http://www.w3.org/1999/xhtml">
// <table class="hl7__ips"><tr><td>Astemizole 10 mg oral tablet</td><td><span class='nb'>1978-10-26</span></td><td>Oral tablet
// </td><td>1 tablet (10 mg) once daily</td><td></td></tr></table>
// </div>
// """






// Instance: Medication-05fc596e-fb55-4ffa-8f6e-9080871a49a1
// InstanceOf: MedicationEuCore
// Title: "Medication"
// Description: "Medication"
// Usage: #example
// * id = "05fc596e-fb55-4ffa-8f6e-9080871a49a1"
// * code.coding[0] = $rxnorm#106258 "hydrocortisone 10 MG/ML Topical Cream"
// * code.coding[+] = $sct#331722005 "Product containing precisely hydrocortisone 10 milligram/1 gram and urea 100 milligram/1 gram conventional release cutaneous cream (clinical drug)"
// * code.text = "Hydrocortisone 10 mg/g and urea 100 mg/g cutaneous cream"
// * form.coding = $sct#421628006 "Cutaneous cream"
// * ingredient[0].itemCodeableConcept = $sct#387092000 "Urea"
// * ingredient[0].isActive = true
// * text.status = #generated
// * text.div = """
// <div xmlns="http://www.w3.org/1999/xhtml">
// Hydrocortisone 10 mg/g and urea 100 mg/g cutaneous cream, Cutaneous cream

// </div>
// """






// Instance: MedicationStatement-d42c2dfe-d5b3-48db-a483-891a53e1e765
// InstanceOf: MedicationStatementEuEps
// Title: "MedicationStatement: Hydrocortisone 10 mg/g and urea 100 mg/g cutaneous cream"
// Description: "Example medication statement for Hydrocortisone 10 mg/g and urea 100 mg/g cutaneous cream [Petra Schwartz]"
// Usage: #example
// * id = "d42c2dfe-d5b3-48db-a483-891a53e1e765"
// * status = #active
// * medicationReference = Reference(urn:uuid:05fc596e-fb55-4ffa-8f6e-9080871a49a1) "Hydrocortisone 10 mg/g and urea 100 mg/g cutaneous cream"
// * subject = Reference(Patient-f0b2dcfe-e837-464b-ae8a-3b9da1807dd3) "Petra Schwartz"
// * effectivePeriod.start = "1978-10-11"
// * dosage.text = "Apply a thin layer (approximately 1 g) to the affected area twice daily"
// * dosage.doseAndRate.doseQuantity.value = 1
// * dosage.doseAndRate.doseQuantity.unit = "g"
// * dosage.doseAndRate.doseQuantity.code = #g
// * dosage.doseAndRate.doseQuantity.system = $ucum
// * dosage.timing.repeat.frequency = 2
// * dosage.timing.repeat.period = 1
// * dosage.timing.repeat.periodUnit = #d
// * dosage.asNeededBoolean = false
// * reasonCode[0].coding = $sct#40275004 "Contact dermatitis"
// * text.status = #generated
// * text.div = """
// <div xmlns="http://www.w3.org/1999/xhtml">
// <table class="hl7__ips"><tr><td>Hydrocortisone 10 mg/g and urea 100 mg/g cutaneous cream</td><td><span class='nb'>1978-10-11</span></td><td>Cutaneous cream
// </td><td>Apply a thin layer (approximately 1 g) to the affected area twice daily</td><td>Contact dermatitis</td></tr></table>
// </div>
// """


Instance: Immunization-2c268a6d-fd6e-4580-acae-3b5f52d43c26
InstanceOf: ImmunizationEuCore
Title: "Immunization"
Description: "Immunization"
Usage: #example
* id = "2c268a6d-fd6e-4580-acae-3b5f52d43c26"
* status = #completed
* vaccineCode.coding[0] = $sct#1181000221105 "Vaccine product containing only Influenza virus antigen (medicinal product)"
* vaccineCode.coding[+] = $atc#J07BB02 "influenza, inactivated, split virus or surface antigen"
* vaccineCode.text = "Influenza virus antigen only vaccine product"
* patient = Reference(Patient-f0b2dcfe-e837-464b-ae8a-3b9da1807dd3) "Petra Schwartz"
* occurrenceDateTime = "2025-07-14"
* lotNumber = "AE-d4oGKOZN1"
* expirationDate = "2026-03-01"
* site.coding = $sct#244979005 "Entire muscle of upper arm"
* site.text = "Entire muscle of upper arm"
* route.coding[0] = $sct#78421000 "Intramuscular route"
* route.text = "Intramuscular route"
* text.status = #generated
* text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
<table class="hl7__ips"><tr><td>Influenza virus antigen only vaccine product</td><td><span class='nb'>2025-07-14</span></td></tr></table>
</div>
"""



// Instance: Immunization-15ea584e-1e48-4177-8f0a-9f394f38bd43
// InstanceOf: ImmunizationEuCore
// Title: "Immunization"
// Description: "Immunization"
// Usage: #example
// * id = "15ea584e-1e48-4177-8f0a-9f394f38bd43"
// * status = #completed
// * vaccineCode.coding[0] = $sct#1119349007 "Vaccine product containing only severe acute respiratory syndrome coronavirus 2 messenger ribonucleic acid (medicinal product)"
// * vaccineCode.coding[+] = $atc#J07BX03 "COVID-19 mRNA vaccines"

// * vaccineCode.text = "SARS-CoV-2 mRNA vaccine"
// * patient = Reference(Patient-f0b2dcfe-e837-464b-ae8a-3b9da1807dd3) "Petra Schwartz"
// * occurrenceDateTime = "2021-03-01"
// * lotNumber = "OG-UhMDBy84"
// * expirationDate = "2021-07-10"
// * site.coding = $sct#244979005 "Entire muscle of upper arm"
// * site.text = "Entire muscle of upper arm"
// * route.coding[0] = $sct#78421000 "Intramuscular route"
// * route.text = "Intramuscular route"
// * text.status = #generated
// * text.div = """
// <div xmlns="http://www.w3.org/1999/xhtml">
// <table class="hl7__ips"><tr><td>SARS-CoV-2 mRNA vaccine</td><td><span class='nb'>2021-03-01</span></td></tr></table>
// </div>
// """



// Instance: Immunization-2a00add8-f084-4b9e-9d73-8440450d527b
// InstanceOf: ImmunizationEuCore
// Title: "Immunization"
// Description: "Immunization"
// Usage: #example
// * id = "2a00add8-f084-4b9e-9d73-8440450d527b"
// * status = #completed
// * vaccineCode.coding[0] = $sct#777725002 "Vaccine product containing only Clostridium tetani toxoid antigen adsorbed (medicinal product)"
// * vaccineCode.coding[+] = $atc#J07AM51 "tetanus toxoid, combinations with diphtheria toxoid"

// * vaccineCode.text = "Clostridium tetani toxoid antigen adsorbed only vaccine product"
// * patient = Reference(Patient-f0b2dcfe-e837-464b-ae8a-3b9da1807dd3) "Petra Schwartz"
// * occurrenceDateTime = "2018-06-04"
// * lotNumber = "PS-E5jrOMsjo"
// * expirationDate = "2018-11-05"
// * site.coding = $sct#244979005 "Entire muscle of upper arm"
// * site.text = "Entire muscle of upper arm"
// * route.coding[0] = $sct#78421000 "Intramuscular route"
// * route.text = "Intramuscular route"
// * text.status = #generated
// * text.div = """
// <div xmlns="http://www.w3.org/1999/xhtml">
// <table class="hl7__ips"><tr><td>Clostridium tetani toxoid antigen adsorbed only vaccine product</td><td><span class='nb'>2018-06-04</span></td></tr></table>
// </div>
// """



Instance: AllergyIntolerance-d5cab1c1-382d-418c-a1b6-1c21408fcfe5
InstanceOf: AllergyIntoleranceEuCore
Title: "AllergyIntolerance: Penicillin V"
Description: "Example allergy intolerance for Penicillin V [Petra Schwartz]"
Usage: #example
* id = "d5cab1c1-382d-418c-a1b6-1c21408fcfe5"
* verificationStatus = $allergyintolerance-verification#confirmed
* type = #allergy
* code = $sct#372725003 "Penicillin V"
* code.text = "Penicillin V"
* onsetDateTime = "1978-10-26"
* clinicalStatus.coding = $allergyintolerance-clinical#active
* category = #medication
* patient = Reference(Patient-f0b2dcfe-e837-464b-ae8a-3b9da1807dd3) "Petra Schwartz"
* text.status = #generated
* text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
<table class="hl7__ips"><tr><td>Penicillin V</td><td><span class='nb'>1978-10-26</span></td><td>active</td><td>medication</td><td></td></tr></table>
</div>
"""



// Instance: AllergyIntolerance-9e220a02-5c9d-4ee7-82cf-b4ed25c57a4a
// InstanceOf: AllergyIntoleranceEuCore
// Title: "AllergyIntolerance: Allergic disposition"
// Description: "Example allergy intolerance for Allergic disposition [Petra Schwartz]"
// Usage: #example
// * id = "9e220a02-5c9d-4ee7-82cf-b4ed25c57a4a"
// * verificationStatus = $allergyintolerance-verification#confirmed
// * type = #allergy
// * code.coding[0] = $sct#609328004 "Allergic disposition"
// * code.text = "Allergic disposition"
// * onsetDateTime = "1978-10-26"
// * clinicalStatus.coding = $allergyintolerance-clinical#active
// * category = #environment
// * patient = Reference(Patient-f0b2dcfe-e837-464b-ae8a-3b9da1807dd3) "Petra Schwartz"
// * text.status = #generated
// * text.div = """
// <div xmlns="http://www.w3.org/1999/xhtml">
// <table class="hl7__ips"><tr><td>Allergic disposition</td><td><span class='nb'>1978-10-26</span></td><td>active</td><td>environment</td><td></td></tr></table>
// </div>
// """



Instance: CarePlan-81b033d8-ab2e-4eee-8792-3b9c6261869d
InstanceOf: CarePlan
Title: "CarePlan: Hyperlipidemia clinical management plan"
Description: "Example care plan for Hyperlipidemia clinical management plan [Petra Schwartz]"
Usage: #example
* id = "81b033d8-ab2e-4eee-8792-3b9c6261869d"
* status = #active
* intent = #plan
* subject = Reference(Patient-f0b2dcfe-e837-464b-ae8a-3b9da1807dd3) "Petra Schwartz"
* category.coding = $sct#734163000 "Care plan"
* activity.detail.kind = #Appointment
* activity.detail.status = #unknown
* activity.detail.code.coding = $sct#736285004 "Hyperlipidemia clinical management plan (record artifact)"
* activity.detail.description = "Hyperlipidemia clinical management plan"
* period.start = "2020-07-06"
* activity.detail.reasonCode = $sct#55822004 "Hyperlipidemia"
* text.status = #generated
* text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
<table class="hl7__ips"><tr><td>Hyperlipidemia clinical management plan</td><td><span class='nb'>2020-07-06</span></td><td>Hyperlipidemia</td></tr></table>
</div>
"""



// Instance: CarePlan-88a285e7-386c-43b2-b42a-242bd03b3bcd
// InstanceOf: CarePlan
// Title: "CarePlan: Chronic obstructive pulmonary disease clinical management plan"
// Description: "Example care plan for Chronic obstructive pulmonary disease clinical management plan [Petra Schwartz]"
// Usage: #example
// * id = "88a285e7-386c-43b2-b42a-242bd03b3bcd"
// * status = #active
// * intent = #plan
// * subject = Reference(Patient-f0b2dcfe-e837-464b-ae8a-3b9da1807dd3) "Petra Schwartz"
// * category.coding = $sct#734163000 "Care plan"
// * activity.detail.kind = #Appointment
// * activity.detail.status = #unknown
// * activity.detail.code.coding = $sct#736283006 "Chronic obstructive pulmonary disease clinical management plan"
// * activity.detail.description = "Chronic obstructive pulmonary disease clinical management plan"
// * period.start = "2020-06-15"
// * activity.detail.reasonCode = $sct#185086009 "Chronic obstructive bronchitis (disorder)"
// * text.status = #generated
// * text.div = """
// <div xmlns="http://www.w3.org/1999/xhtml">
// <table class="hl7__ips"><tr><td>Chronic obstructive pulmonary disease clinical management plan</td><td><span class='nb'>2020-06-15</span></td><td>Chronic obstructive bronchitis (disorder)</td></tr></table>
// </div>
// """



// Instance: CarePlan-8d0b1ee6-25a3-4ae7-827f-ab5876b90a1b
// InstanceOf: CarePlan
// Title: "CarePlan: Diabetes self management plan"
// Description: "Example care plan for Diabetes self management plan [Petra Schwartz]"
// Usage: #example
// * id = "8d0b1ee6-25a3-4ae7-827f-ab5876b90a1b"
// * status = #active
// * intent = #plan
// * subject = Reference(Patient-f0b2dcfe-e837-464b-ae8a-3b9da1807dd3) "Petra Schwartz"
// * category.coding = $sct#734163000 "Care plan"
// * activity.detail.kind = #Appointment
// * activity.detail.status = #unknown
// * activity.detail.code.coding = $sct#735985000 "Diabetes self management plan"
// * activity.detail.description = "Diabetes self management plan"
// * period.start = "1991-02-18"
// * activity.detail.reasonCode = $sct#714628002 "Prediabetes"
// * text.status = #generated
// * text.div = """
// <div xmlns="http://www.w3.org/1999/xhtml">
// <table class="hl7__ips"><tr><td>Diabetes self management plan</td><td><span class='nb'>1991-02-18</span></td><td>Prediabetes</td></tr></table>
// </div>
// """



// Instance: CarePlan-6e2d0079-42e9-417a-8487-6fdc949dbcdf
// InstanceOf: CarePlan
// Title: "CarePlan: Self-care interventions"
// Description: "Example care plan for Self-care interventions [Petra Schwartz]"
// Usage: #example
// * id = "6e2d0079-42e9-417a-8487-6fdc949dbcdf"
// * status = #active
// * intent = #plan
// * subject = Reference(Patient-f0b2dcfe-e837-464b-ae8a-3b9da1807dd3) "Petra Schwartz"
// * category.coding = $sct#734163000 "Care plan"
// * activity.detail.kind = #Appointment
// * activity.detail.status = #unknown
// * activity.detail.code.coding = $sct#384758001 "Self-care interventions (procedure)"
// * activity.detail.description = "Self-care interventions"
// * period.start = "1978-10-26"
// * text.status = #generated
// * text.div = """
// <div xmlns="http://www.w3.org/1999/xhtml">
// <table class="hl7__ips"><tr><td>Self-care interventions</td><td><span class='nb'>1978-10-26</span></td><td>-</td></tr></table>
// </div>
// """

Instance: Observation-62e65dfb-d837-4556-8e75-2ca7a6fe6e40
InstanceOf: http://hl7.org/fhir/StructureDefinition/vitalsigns
Title: "Vital Signs"
Description: "Vital Signs"
Usage: #example
* id = "62e65dfb-d837-4556-8e75-2ca7a6fe6e40"
* status = #final
* category[VSCat].coding[0] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs "Vital Signs"
* code = $loinc#8302-2 "Body Height"
* subject = Reference(Patient-f0b2dcfe-e837-464b-ae8a-3b9da1807dd3) "Petra Schwartz"
* effectiveDateTime = "2025-07-14"
* valueQuantity.value = 158.3
* valueQuantity.code = #cm
* valueQuantity.system = $ucum
* valueQuantity.unit = "cm"
* text.status = #generated
* text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
<table class="hl7__ips"><tr><td>Body Height</td><td>158.3 cm</td></tr></table>
</div>
"""



// Instance: Observation-9b2a6858-76cd-43c0-8080-642fcbf0b3cb
// InstanceOf: http://hl7.org/fhir/StructureDefinition/vitalsigns
// Title: "Vital Signs"
// Description: "Vital Signs"
// Usage: #example
// * id = "9b2a6858-76cd-43c0-8080-642fcbf0b3cb"
// * status = #final
// * category[VSCat].coding[0] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs "Vital Signs"
// * code = $loinc#72514-3 "Pain severity - 0-10 verbal numeric rating [Score] - Reported"
// * subject = Reference(Patient-f0b2dcfe-e837-464b-ae8a-3b9da1807dd3) "Petra Schwartz"
// * effectiveDateTime = "2025-07-14"
// * valueQuantity.value = 3
// * valueQuantity.code = #{score}
// * valueQuantity.system = $ucum
// * valueQuantity.unit = "{score}"
// * text.status = #generated
// * text.div = """
// <div xmlns="http://www.w3.org/1999/xhtml">
// <table class="hl7__ips"><tr><td>Pain severity - 0-10 verbal numeric rating [Score] - Reported</td><td>3 {score}</td></tr></table>
// </div>
// """



// Instance: Observation-9be1518a-76d5-4dcc-a79f-76dc9496d363
// InstanceOf: http://hl7.org/fhir/StructureDefinition/vitalsigns
// Title: "Vital Signs"
// Description: "Vital Signs"
// Usage: #example
// * id = "9be1518a-76d5-4dcc-a79f-76dc9496d363"
// * status = #final
// * category[VSCat].coding[0] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs "Vital Signs"
// * code = $loinc#29463-7 "Body Weight"
// * subject = Reference(Patient-f0b2dcfe-e837-464b-ae8a-3b9da1807dd3) "Petra Schwartz"
// * effectiveDateTime = "2025-07-14"
// * valueQuantity.value = 73.3
// * valueQuantity.code = #kg
// * valueQuantity.system = $ucum
// * valueQuantity.unit = "kg"
// * text.status = #generated
// * text.div = """
// <div xmlns="http://www.w3.org/1999/xhtml">
// <table class="hl7__ips"><tr><td>Body Weight</td><td>73.3 kg</td></tr></table>
// </div>
// """



// Instance: Observation-ba3f891a-3fc6-43d5-a8b8-d2054c144269
// InstanceOf: http://hl7.org/fhir/StructureDefinition/vitalsigns
// Title: "Vital Signs"
// Description: "Vital Signs"
// Usage: #example
// * id = "ba3f891a-3fc6-43d5-a8b8-d2054c144269"
// * status = #final
// * category[VSCat].coding[0] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs "Vital Signs"
// * code = $loinc#39156-5 "Body mass index (BMI) [Ratio]"
// * subject = Reference(Patient-f0b2dcfe-e837-464b-ae8a-3b9da1807dd3) "Petra Schwartz"
// * effectiveDateTime = "2025-07-14"
// * valueQuantity.value = 29.2
// * valueQuantity.code = #kg/m2
// * valueQuantity.system = $ucum
// * valueQuantity.unit = "kg/m2"
// * text.status = #generated
// * text.div = """
// <div xmlns="http://www.w3.org/1999/xhtml">
// <table class="hl7__ips"><tr><td>Body mass index (BMI) [Ratio]</td><td>29.2 kg/m2</td></tr></table>
// </div>
// """



// Instance: Observation-612f2f3f-d3f6-4fe0-889a-1c618c5c4f8e
// InstanceOf: http://hl7.org/fhir/StructureDefinition/vitalsigns
// Title: "Vital Signs"
// Description: "Vital Signs"
// Usage: #example
// * id = "612f2f3f-d3f6-4fe0-889a-1c618c5c4f8e"
// * status = #final
// * category[VSCat].coding[0] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs "Vital Signs"
// * code = $loinc#8462-4 "Diastolic Blood Pressure"
// * subject = Reference(Patient-f0b2dcfe-e837-464b-ae8a-3b9da1807dd3) "Petra Schwartz"
// * effectiveDateTime = "2025-07-14"
// * valueQuantity.value = 55
// * valueQuantity.code = #mm[Hg]
// * valueQuantity.system = $ucum
// * valueQuantity.unit = "mm[Hg]"
// * text.status = #generated
// * text.div = """
// <div xmlns="http://www.w3.org/1999/xhtml">
// <table class="hl7__ips"><tr><td>Diastolic Blood Pressure</td><td>55 mm[Hg]</td></tr></table>
// </div>
// """



// Instance: Observation-4a594a1a-ebfb-4858-81d1-2815729d07e0
// InstanceOf: http://hl7.org/fhir/StructureDefinition/vitalsigns
// Title: "Vital Signs"
// Description: "Vital Signs"
// Usage: #example
// * id = "4a594a1a-ebfb-4858-81d1-2815729d07e0"
// * status = #final
// * category[VSCat].coding[0] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs "Vital Signs"

// * subject = Reference(Patient-f0b2dcfe-e837-464b-ae8a-3b9da1807dd3) "Petra Schwartz"
// * effectiveDateTime = "2025-07-14"

// * code = $loinc#85354-9 "Blood Pressure panel with all children optional"


// * component[+]
//   * code = $loinc#8480-6 "Systolic Blood Pressure"
//   * valueQuantity.value = 113
//   * valueQuantity.code = #mm[Hg]
//   * valueQuantity.system = $ucum
//   * valueQuantity.unit = "mm[Hg]"

// * component[+]
//   * code = $loinc#8462-4 "Diastolic Blood Pressure"
//   * valueQuantity.value = 55
//   * valueQuantity.code = #mm[Hg]
//   * valueQuantity.system = $ucum
//   * valueQuantity.unit = "mm[Hg]"


// * text.status = #generated
// * text.div = """
// <div xmlns="http://www.w3.org/1999/xhtml">
// <table class="hl7__ips"><tr><td>Systolic Blood Pressure</td><td>113 mm[Hg]</td></tr>
// <tr><td>Heart rate</td><td>80 /min</td></tr></table>
// </div>
// """



// Instance: Observation-9df80fea-0f26-4348-a3e6-ca5a6052a905
// InstanceOf: http://hl7.org/fhir/StructureDefinition/vitalsigns
// Title: "Vital Signs"
// Description: "Vital Signs"
// Usage: #example
// * id = "9df80fea-0f26-4348-a3e6-ca5a6052a905"
// * status = #final
// * category[VSCat].coding[0] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs "Vital Signs"
// * code = $loinc#9279-1 "Respiratory rate"
// * subject = Reference(Patient-f0b2dcfe-e837-464b-ae8a-3b9da1807dd3) "Petra Schwartz"
// * effectiveDateTime = "2025-07-14"
// * valueQuantity.value = 13
// * valueQuantity.code = #/min
// * valueQuantity.system = $ucum
// * valueQuantity.unit = "/min"
// * text.status = #generated
// * text.div = """
// <div xmlns="http://www.w3.org/1999/xhtml">
// <table class="hl7__ips"><tr><td>Respiratory rate</td><td>13 /min</td></tr></table>
// </div>
// """



// Instance: Observation-cb49b0c4-0754-40c9-9e36-c7ddd04a94c9
// InstanceOf: http://hl7.org/fhir/StructureDefinition/vitalsigns
// Title: "Vital Signs"
// Description: "Vital Signs"
// Usage: #example
// * id = "cb49b0c4-0754-40c9-9e36-c7ddd04a94c9"
// * status = #final
// * category[VSCat].coding[0] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs "Vital Signs"
// * code = $loinc#8302-2 "Body Height"
// * subject = Reference(Patient-f0b2dcfe-e837-464b-ae8a-3b9da1807dd3) "Petra Schwartz"
// * effectiveDateTime = "2024-07-08"
// * valueQuantity.value = 158.3
// * valueQuantity.code = #cm
// * valueQuantity.system = $ucum
// * valueQuantity.unit = "cm"
// * text.status = #generated
// * text.div = """
// <div xmlns="http://www.w3.org/1999/xhtml">
// <table class="hl7__ips"><tr><td>Body Height</td><td>158.3 cm</td></tr></table>
// </div>
// """



// Instance: Observation-0c555193-efc8-4983-8452-41e11fa2c515
// InstanceOf: http://hl7.org/fhir/StructureDefinition/vitalsigns
// Title: "Vital Signs"
// Description: "Vital Signs"
// Usage: #example
// * id = "0c555193-efc8-4983-8452-41e11fa2c515"
// * status = #final
// * category[VSCat].coding[0] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs "Vital Signs"
// * code = $loinc#72514-3 "Pain severity - 0-10 verbal numeric rating [Score] - Reported"
// * subject = Reference(Patient-f0b2dcfe-e837-464b-ae8a-3b9da1807dd3) "Petra Schwartz"
// * effectiveDateTime = "2024-07-08"
// * valueQuantity.value = 2
// * valueQuantity.code = #{score}
// * valueQuantity.system = $ucum
// * valueQuantity.unit = "{score}"
// * text.status = #generated
// * text.div = """
// <div xmlns="http://www.w3.org/1999/xhtml">
// <table class="hl7__ips"><tr><td>Pain severity - 0-10 verbal numeric rating [Score] - Reported</td><td>2 {score}</td></tr></table>
// </div>
// """



// Instance: Observation-b12412d4-6bea-4536-bc13-6a920225d2e3
// InstanceOf: http://hl7.org/fhir/StructureDefinition/vitalsigns
// Title: "Vital Signs"
// Description: "Vital Signs"
// Usage: #example
// * id = "b12412d4-6bea-4536-bc13-6a920225d2e3"
// * status = #final
// * category[VSCat].coding[0] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs "Vital Signs"
// * code = $loinc#29463-7 "Body Weight"
// * subject = Reference(Patient-f0b2dcfe-e837-464b-ae8a-3b9da1807dd3) "Petra Schwartz"
// * effectiveDateTime = "2024-07-08"
// * valueQuantity.value = 71.3
// * valueQuantity.code = #kg
// * valueQuantity.system = $ucum
// * valueQuantity.unit = "kg"
// * text.status = #generated
// * text.div = """
// <div xmlns="http://www.w3.org/1999/xhtml">
// <table class="hl7__ips"><tr><td>Body Weight</td><td>71.3 kg</td></tr></table>
// </div>
// """



// Instance: Observation-8c34e7a2-931f-4192-b74e-a8eadd249d03
// InstanceOf: http://hl7.org/fhir/StructureDefinition/vitalsigns
// Title: "Vital Signs"
// Description: "Vital Signs"
// Usage: #example
// * id = "8c34e7a2-931f-4192-b74e-a8eadd249d03"
// * status = #final
// * category[VSCat].coding[0] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs "Vital Signs"
// * code = $loinc#39156-5 "Body mass index (BMI) [Ratio]"
// * subject = Reference(Patient-f0b2dcfe-e837-464b-ae8a-3b9da1807dd3) "Petra Schwartz"
// * effectiveDateTime = "2024-07-08"
// * valueQuantity.value = 28.5
// * valueQuantity.code = #kg/m2
// * valueQuantity.system = $ucum
// * valueQuantity.unit = "kg/m2"
// * text.status = #generated
// * text.div = """
// <div xmlns="http://www.w3.org/1999/xhtml">
// <table class="hl7__ips"><tr><td>Body mass index (BMI) [Ratio]</td><td>28.5 kg/m2</td></tr></table>
// </div>
// """



// Instance: Observation-9c1f5491-7c0b-46b7-8f1c-d39edd82a6db
// InstanceOf: http://hl7.org/fhir/StructureDefinition/vitalsigns
// Title: "Vital Signs"
// Description: "Vital Signs"
// Usage: #example
// * id = "9c1f5491-7c0b-46b7-8f1c-d39edd82a6db"
// * status = #final
// * category[VSCat].coding[0] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs "Vital Signs"
// * subject = Reference(Patient-f0b2dcfe-e837-464b-ae8a-3b9da1807dd3) "Petra Schwartz"
// * effectiveDateTime = "2024-07-08"
// * code = $loinc#85354-9 "Blood Pressure panel with all children optional"

// * component[+]
//   * code = $loinc#8480-6 "Systolic Blood Pressure"
//   * valueQuantity.value = 104
//   * valueQuantity.code = #mm[Hg]
//   * valueQuantity.system = $ucum
//   * valueQuantity.unit = "mm[Hg]"

// * component[+]
//   * code = $loinc#8462-4 "Diastolic Blood Pressure"
//   * valueQuantity.value = 62
//   * valueQuantity.code = #mm[Hg]
//   * valueQuantity.system = $ucum
//   * valueQuantity.unit = "mm[Hg]"



// * text.status = #generated
// * text.div = """
// <div xmlns="http://www.w3.org/1999/xhtml">
// <table class="hl7__ips"><tr><td>Systolic Blood Pressure</td><td>104 mm[Hg]</td></tr>
// <tr><td>Diastolic Blood Pressure</td><td>62 mm[Hg]</td></tr></table>

// </div>
// """


// Instance: Observation-6813fab9-11e1-4a15-bba7-7240db5213fe
// InstanceOf: http://hl7.org/fhir/StructureDefinition/vitalsigns
// Title: "Vital Signs"
// Description: "Vital Signs"
// Usage: #example
// * id = "6813fab9-11e1-4a15-bba7-7240db5213fe"
// * status = #final
// * category[VSCat].coding[0] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs "Vital Signs"
// * code = $loinc#8867-4 "Heart rate"
// * subject = Reference(Patient-f0b2dcfe-e837-464b-ae8a-3b9da1807dd3) "Petra Schwartz"
// * effectiveDateTime = "2024-07-08"
// * valueQuantity.value = 72
// * valueQuantity.code = #/min
// * valueQuantity.system = $ucum
// * valueQuantity.unit = "/min"
// * text.status = #generated
// * text.div = """
// <div xmlns="http://www.w3.org/1999/xhtml">
// <table class="hl7__ips"><tr><td>Heart rate</td><td>72 /min</td></tr></table>
// </div>
// """



// Instance: Observation-c920e67a-ebdf-4a68-bf8d-b5ec8de9e896
// InstanceOf: http://hl7.org/fhir/StructureDefinition/vitalsigns
// Title: "Vital Signs"
// Description: "Vital Signs"
// Usage: #example
// * id = "c920e67a-ebdf-4a68-bf8d-b5ec8de9e896"
// * status = #final
// * category[VSCat].coding[0] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs "Vital Signs"
// * code = $loinc#9279-1 "Respiratory rate"
// * subject = Reference(Patient-f0b2dcfe-e837-464b-ae8a-3b9da1807dd3) "Petra Schwartz"
// * effectiveDateTime = "2024-07-08"
// * valueQuantity.value = 14
// * valueQuantity.code = #/min
// * valueQuantity.system = $ucum
// * valueQuantity.unit = "/min"
// * text.status = #generated
// * text.div = """
// <div xmlns="http://www.w3.org/1999/xhtml">
// <table class="hl7__ips"><tr><td>Respiratory rate</td><td>14 /min</td></tr></table>
// </div>
// """
Instance: Observation-faacb416-55b2-433a-82b9-9c5d84912df1
InstanceOf: MedicalTestResultEuCore
Title: "Medical Test Result: Glucose [Mass/volume] in Blood"
Description: "Example medical test result for Glucose [Mass/volume] in Blood [Petra Schwartz]"
Usage: #example
* id = "faacb416-55b2-433a-82b9-9c5d84912df1"
* status = #final
* performer[+].display = "The Central European Lab"
* category[+].coding = $observation-category#laboratory
* code.coding[+] = $loinc#2339-0 "Glucose [Mass/volume] in Blood"
* code.text = "Glucose [Mass/volume] in Blood"
* subject = Reference(Patient-f0b2dcfe-e837-464b-ae8a-3b9da1807dd3)
* effectiveDateTime = "2024-07-15"
* valueQuantity.value = 65.9
* valueQuantity.unit = "mg/dL"
* valueQuantity.code = #mg/dL
* valueQuantity.system = $ucum
* referenceRange[+].low = 70 $ucum#mg/dL
* referenceRange[+].high = 99 $ucum#mg/dL
* interpretation = $v3-ObservationInterpretation#L "Low"
// Instance: Observation-dcf587f6-75f4-41b4-95e8-b3e85d7eb094
// InstanceOf: MedicalTestResultEuCore
// Title: "Medical Test Result: Urea nitrogen [Mass/volume] in Blood"
// Description: "Example medical test result for Urea nitrogen [Mass/volume] in Blood [Petra Schwartz]"
// Usage: #example
// * id = "dcf587f6-75f4-41b4-95e8-b3e85d7eb094"
// * status = #final
// * performer[+].display = "The Central European Lab"
// * category[+].coding = $observation-category#laboratory
// * code.coding[+] = $loinc#6299-2 "Urea nitrogen [Mass/volume] in Blood"
// * code.text = "Urea nitrogen [Mass/volume] in Blood"
// * subject = Reference(Patient-f0b2dcfe-e837-464b-ae8a-3b9da1807dd3)
// * effectiveDateTime = "2024-07-15"
// * valueQuantity.value = 9.2
// * valueQuantity.unit = "mg/dL"
// * valueQuantity.code = #mg/dL
// * valueQuantity.system = $ucum
// * referenceRange[+].low = 7 $ucum#mg/dL
// * referenceRange[+].high = 20 $ucum#mg/dL
// Instance: Observation-115c9de5-f83e-4905-89d1-53c0246850a1
// InstanceOf: MedicalTestResultEuCore
// Title: "Medical Test Result: Creatinine [Mass/volume] in Blood"
// Description: "Example medical test result for Creatinine [Mass/volume] in Blood [Petra Schwartz]"
// Usage: #example
// * id = "115c9de5-f83e-4905-89d1-53c0246850a1"
// * status = #final
// * performer[+].display = "The Central European Lab"
// * category[+].coding = $observation-category#laboratory
// * code.coding[+] = $loinc#38483-4 "Creatinine [Mass/volume] in Blood"
// * code.text = "Creatinine [Mass/volume] in Blood"
// * subject = Reference(Patient-f0b2dcfe-e837-464b-ae8a-3b9da1807dd3)
// * effectiveDateTime = "2024-07-15"
// * valueQuantity.value = 2.7
// * valueQuantity.unit = "mg/dL"
// * valueQuantity.code = #mg/dL
// * valueQuantity.system = $ucum
// * referenceRange[+].low = 0.6 $ucum#mg/dL
// * referenceRange[+].high = 1.3 $ucum#mg/dL
// * interpretation = $v3-ObservationInterpretation#H "High"
// Instance: Observation-84697879-1f0c-4c55-8db9-fa4f5b803ba8
// InstanceOf: MedicalTestResultEuCore
// Title: "Medical Test Result: Calcium [Mass/volume] in Blood"
// Description: "Example medical test result for Calcium [Mass/volume] in Blood [Petra Schwartz]"
// Usage: #example
// * id = "84697879-1f0c-4c55-8db9-fa4f5b803ba8"
// * status = #final
// * performer[+].display = "The Central European Lab"
// * category[+].coding = $observation-category#laboratory
// * code.coding[+] = $loinc#49765-1 "Calcium [Mass/volume] in Blood"
// * code.text = "Calcium [Mass/volume] in Blood"
// * subject = Reference(Patient-f0b2dcfe-e837-464b-ae8a-3b9da1807dd3)
// * effectiveDateTime = "2024-07-15"
// * valueQuantity.value = 8.7
// * valueQuantity.unit = "mg/dL"
// * valueQuantity.code = #mg/dL
// * valueQuantity.system = $ucum
// * referenceRange[+].low = 8.5 $ucum#mg/dL
// * referenceRange[+].high = 10.3 $ucum#mg/dL
// Instance: Observation-bd30411c-6f97-4478-9f7e-4e052620a7ac
// InstanceOf: MedicalTestResultEuCore
// Title: "Medical Test Result: Sodium [Moles/volume] in Blood"
// Description: "Example medical test result for Sodium [Moles/volume] in Blood [Petra Schwartz]"
// Usage: #example
// * id = "bd30411c-6f97-4478-9f7e-4e052620a7ac"
// * status = #final
// * performer[+].display = "The Central European Lab"
// * category[+].coding = $observation-category#laboratory
// * code.coding[+] = $loinc#2947-0 "Sodium [Moles/volume] in Blood"
// * code.text = "Sodium [Moles/volume] in Blood"
// * subject = Reference(Patient-f0b2dcfe-e837-464b-ae8a-3b9da1807dd3)
// * effectiveDateTime = "2024-07-15"
// * valueQuantity.value = 136.4
// * valueQuantity.unit = "mmol/L"
// * valueQuantity.code = #mmol/L
// * valueQuantity.system = $ucum
// * referenceRange[+].low = 135 $ucum#mmol/L
// * referenceRange[+].high = 145 $ucum#mmol/L
// Instance: Observation-df3247be-2ef0-47b2-aeb8-ae1bbb103ca1
// InstanceOf: MedicalTestResultEuCore
// Title: "Medical Test Result: Potassium [Moles/volume] in Blood"
// Description: "Example medical test result for Potassium [Moles/volume] in Blood [Petra Schwartz]"
// Usage: #example
// * id = "df3247be-2ef0-47b2-aeb8-ae1bbb103ca1"
// * status = #final
// * performer[+].display = "The Central European Lab"
// * category[+].coding = $observation-category#laboratory
// * code.coding[+] = $loinc#6298-4 "Potassium [Moles/volume] in Blood"
// * code.text = "Potassium [Moles/volume] in Blood"
// * subject = Reference(Patient-f0b2dcfe-e837-464b-ae8a-3b9da1807dd3)
// * effectiveDateTime = "2024-07-15"
// * valueQuantity.value = 4.4
// * valueQuantity.unit = "mmol/L"
// * valueQuantity.code = #mmol/L
// * valueQuantity.system = $ucum
// * referenceRange[+].low = 3.5 $ucum#mmol/L
// * referenceRange[+].high = 5.1 $ucum#mmol/L
// Instance: Observation-5797bf3c-d743-4bcb-b47d-b15c655c810b
// InstanceOf: MedicalTestResultEuCore
// Title: "Medical Test Result: Chloride [Moles/volume] in Blood"
// Description: "Example medical test result for Chloride [Moles/volume] in Blood [Petra Schwartz]"
// Usage: #example
// * id = "5797bf3c-d743-4bcb-b47d-b15c655c810b"
// * status = #final
// * performer[+].display = "The Central European Lab"
// * category[+].coding = $observation-category#laboratory
// * code.coding[+] = $loinc#2069-3 "Chloride [Moles/volume] in Blood"
// * code.text = "Chloride [Moles/volume] in Blood"
// * subject = Reference(Patient-f0b2dcfe-e837-464b-ae8a-3b9da1807dd3)
// * effectiveDateTime = "2024-07-15"
// * valueQuantity.value = 101.2
// * valueQuantity.unit = "mmol/L"
// * valueQuantity.code = #mmol/L
// * valueQuantity.system = $ucum
// * referenceRange[+].low = 98 $ucum#mmol/L
// * referenceRange[+].high = 108 $ucum#mmol/L
// Instance: Observation-7e1ad9d8-10ea-45dc-8a28-78d0023ea4f8
// InstanceOf: MedicalTestResultEuCore
// Title: "Medical Test Result: Carbon dioxide, total [Moles/volume] in Blood"
// Description: "Example medical test result for Carbon dioxide, total [Moles/volume] in Blood [Petra Schwartz]"
// Usage: #example
// * id = "7e1ad9d8-10ea-45dc-8a28-78d0023ea4f8"
// * status = #final
// * performer[+].display = "The Central European Lab"
// * category[+].coding = $observation-category#laboratory
// * code.coding[+] = $loinc#20565-8 "Carbon dioxide, total [Moles/volume] in Blood"
// * code.text = "Carbon dioxide, total [Moles/volume] in Blood"
// * subject = Reference(Patient-f0b2dcfe-e837-464b-ae8a-3b9da1807dd3)
// * effectiveDateTime = "2024-07-15"
// * valueQuantity.value = 28.5
// * valueQuantity.unit = "mmol/L"
// * valueQuantity.code = #mmol/L
// * valueQuantity.system = $ucum
// * referenceRange[+].low = 22 $ucum#mmol/L
// * referenceRange[+].high = 32 $ucum#mmol/L
// Instance: Observation-8b3f26da-a1a9-400a-8e66-5db66b9d6eb5
// InstanceOf: MedicalTestResultEuCore
// Title: "Medical Test Result: Protein [Mass/volume] in Serum or Plasma"
// Description: "Example medical test result for Protein [Mass/volume] in Serum or Plasma [Petra Schwartz]"
// Usage: #example
// * id = "8b3f26da-a1a9-400a-8e66-5db66b9d6eb5"
// * status = #final
// * performer[+].display = "The Central European Lab"
// * category[+].coding = $observation-category#laboratory
// * code.coding[+] = $loinc#2885-2 "Protein [Mass/volume] in Serum or Plasma"
// * code.text = "Protein [Mass/volume] in Serum or Plasma"
// * subject = Reference(Patient-f0b2dcfe-e837-464b-ae8a-3b9da1807dd3)
// * effectiveDateTime = "2024-07-15"
// * valueQuantity.value = 6.9
// * valueQuantity.unit = "g/dL"
// * valueQuantity.code = #g/dL
// * valueQuantity.system = $ucum
// * referenceRange[+].low = 6 $ucum#g/dL
// * referenceRange[+].high = 8.3 $ucum#g/dL
// Instance: Observation-344687d1-d729-4898-919a-b0442f111ad2
// InstanceOf: MedicalTestResultEuCore
// Title: "Medical Test Result: Albumin [Mass/volume] in Serum or Plasma"
// Description: "Example medical test result for Albumin [Mass/volume] in Serum or Plasma [Petra Schwartz]"
// Usage: #example
// * id = "344687d1-d729-4898-919a-b0442f111ad2"
// * status = #final
// * performer[+].display = "The Central European Lab"
// * category[+].coding = $observation-category#laboratory
// * code.coding[+] = $loinc#1751-7 "Albumin [Mass/volume] in Serum or Plasma"
// * code.text = "Albumin [Mass/volume] in Serum or Plasma"
// * subject = Reference(Patient-f0b2dcfe-e837-464b-ae8a-3b9da1807dd3)
// * effectiveDateTime = "2024-07-15"
// * valueQuantity.value = 4.0
// * valueQuantity.unit = "g/dL"
// * valueQuantity.code = #g/dL
// * valueQuantity.system = $ucum
// * referenceRange[+].low = 3.5 $ucum#g/dL
// * referenceRange[+].high = 5 $ucum#g/dL
// Instance: Observation-797acbf9-5823-46c2-854c-e0eaa3a99a5a
// InstanceOf: MedicalTestResultEuCore
// Title: "Medical Test Result: Globulin [Mass/volume] in Serum by calculation"
// Description: "Example medical test result for Globulin [Mass/volume] in Serum by calculation [Petra Schwartz]"
// Usage: #example
// * id = "797acbf9-5823-46c2-854c-e0eaa3a99a5a"
// * status = #final
// * performer[+].display = "The Central European Lab"
// * category[+].coding = $observation-category#laboratory
// * code.coding[+] = $loinc#10834-0 "Globulin [Mass/volume] in Serum by calculation"
// * code.text = "Globulin [Mass/volume] in Serum by calculation"
// * subject = Reference(Patient-f0b2dcfe-e837-464b-ae8a-3b9da1807dd3)
// * effectiveDateTime = "2024-07-15"
// * valueQuantity.value = 2.9
// * valueQuantity.unit = "g/L"
// * valueQuantity.code = #g/L
// * valueQuantity.system = $ucum
// * referenceRange[+].low = 2 $ucum#g/L
// * referenceRange[+].high = 3.5 $ucum#g/L
// Instance: Observation-5a32bc0f-befc-4f6c-9dd9-1cc95afd8738
// InstanceOf: MedicalTestResultEuCore
// Title: "Medical Test Result: Bilirubin.total [Mass/volume] in Serum or Plasma"
// Description: "Example medical test result for Bilirubin.total [Mass/volume] in Serum or Plasma [Petra Schwartz]"
// Usage: #example
// * id = "5a32bc0f-befc-4f6c-9dd9-1cc95afd8738"
// * status = #final
// * performer[+].display = "The Central European Lab"
// * category[+].coding = $observation-category#laboratory
// * code.coding[+] = $loinc#1975-2 "Bilirubin.total [Mass/volume] in Serum or Plasma"
// * code.text = "Bilirubin.total [Mass/volume] in Serum or Plasma"
// * subject = Reference(Patient-f0b2dcfe-e837-464b-ae8a-3b9da1807dd3)
// * effectiveDateTime = "2024-07-15"
// * valueQuantity.value = 0.8
// * valueQuantity.unit = "mg/dL"
// * valueQuantity.code = #mg/dL
// * valueQuantity.system = $ucum
// * referenceRange[+].low = 0.3 $ucum#mg/dL
// * referenceRange[+].high = 1.2 $ucum#mg/dL
// Instance: Observation-9946b09c-5bf8-4de4-ae39-d7b3e07f20f6
// InstanceOf: MedicalTestResultEuCore
// Title: "Medical Test Result: Alkaline phosphatase [Enzymatic activity/volume] in Serum or Plasma"
// Description: "Example medical test result for Alkaline phosphatase [Enzymatic activity/volume] in Serum or Plasma [Petra Schwartz]"
// Usage: #example
// * id = "9946b09c-5bf8-4de4-ae39-d7b3e07f20f6"
// * status = #final
// * performer[+].display = "The Central European Lab"
// * category[+].coding = $observation-category#laboratory
// * code.coding[+] = $loinc#6768-6 "Alkaline phosphatase [Enzymatic activity/volume] in Serum or Plasma"
// * code.text = "Alkaline phosphatase [Enzymatic activity/volume] in Serum or Plasma"
// * subject = Reference(Patient-f0b2dcfe-e837-464b-ae8a-3b9da1807dd3)
// * effectiveDateTime = "2024-07-15"
// * valueQuantity.value = 87.0
// * valueQuantity.unit = "U/L"
// * valueQuantity.code = #U/L
// * valueQuantity.system = $ucum
// * referenceRange[+].low = 35 $ucum#U/L
// * referenceRange[+].high = 117 $ucum#U/L
// Instance: Observation-21ff8c18-8000-419e-9de6-eb23e76d6fc7
// InstanceOf: MedicalTestResultEuCore
// Title: "Medical Test Result: Alanine aminotransferase [Enzymatic activity/volume] in Serum or Plasma"
// Description: "Example medical test result for Alanine aminotransferase [Enzymatic activity/volume] in Serum or Plasma [Petra Schwartz]"
// Usage: #example
// * id = "21ff8c18-8000-419e-9de6-eb23e76d6fc7"
// * status = #final
// * performer[+].display = "The Central European Lab"
// * category[+].coding = $observation-category#laboratory
// * code.coding[+] = $loinc#1742-6 "Alanine aminotransferase [Enzymatic activity/volume] in Serum or Plasma"
// * code.text = "Alanine aminotransferase [Enzymatic activity/volume] in Serum or Plasma"
// * subject = Reference(Patient-f0b2dcfe-e837-464b-ae8a-3b9da1807dd3)
// * effectiveDateTime = "2024-07-15"
// * valueQuantity.value = 45.0
// * valueQuantity.unit = "U/L"
// * valueQuantity.code = #U/L
// * valueQuantity.system = $ucum
// * referenceRange[+].low = 7 $ucum#U/L
// * referenceRange[+].high = 46 $ucum#U/L
// Instance: Observation-5e47200a-c24a-4e88-a09e-f24a420fcf20
// InstanceOf: MedicalTestResultEuCore
// Title: "Medical Test Result: Aspartate aminotransferase [Enzymatic activity/volume] in Serum or Plasma"
// Description: "Example medical test result for Aspartate aminotransferase [Enzymatic activity/volume] in Serum or Plasma [Petra Schwartz]"
// Usage: #example
// * id = "5e47200a-c24a-4e88-a09e-f24a420fcf20"
// * status = #final
// * performer[+].display = "The Central European Lab"
// * category[+].coding = $observation-category#laboratory
// * code.coding[+] = $loinc#1920-8 "Aspartate aminotransferase [Enzymatic activity/volume] in Serum or Plasma"
// * code.text = "Aspartate aminotransferase [Enzymatic activity/volume] in Serum or Plasma"
// * subject = Reference(Patient-f0b2dcfe-e837-464b-ae8a-3b9da1807dd3)
// * effectiveDateTime = "2024-07-15"
// * valueQuantity.value = 8.7
// * valueQuantity.unit = "U/L"
// * valueQuantity.code = #U/L
// * valueQuantity.system = $ucum
// * referenceRange[+].low = 10 $ucum#U/L
// * referenceRange[+].high = 40 $ucum#U/L
// * interpretation = $v3-ObservationInterpretation#L "Low"
// Instance: Observation-75fd3715-b9b6-4ba4-802f-2dc726fe1ec2
// InstanceOf: MedicalTestResultEuCore
// Title: "Medical Test Result: Cholesterol [Mass/volume] in Serum or Plasma"
// Description: "Example medical test result for Cholesterol [Mass/volume] in Serum or Plasma [Petra Schwartz]"
// Usage: #example
// * id = "75fd3715-b9b6-4ba4-802f-2dc726fe1ec2"
// * status = #final
// * performer[+].display = "The Central European Lab"
// * category[+].coding = $observation-category#laboratory
// * code.coding[+] = $loinc#2093-3 "Cholesterol [Mass/volume] in Serum or Plasma"
// * code.text = "Cholesterol [Mass/volume] in Serum or Plasma"
// * subject = Reference(Patient-f0b2dcfe-e837-464b-ae8a-3b9da1807dd3)
// * effectiveDateTime = "2024-07-15"
// * valueQuantity.value = 193.2
// * valueQuantity.unit = "mg/dL"
// * valueQuantity.code = #mg/dL
// * valueQuantity.system = $ucum
// * referenceRange[+].low = 125 $ucum#mg/dL
// * referenceRange[+].high = 200 $ucum#mg/dL
// Instance: Observation-3c2be9a6-69b9-40db-92b2-b51e8fb6727a
// InstanceOf: MedicalTestResultEuCore
// Title: "Medical Test Result: Triglyceride [Mass/volume] in Serum or Plasma"
// Description: "Example medical test result for Triglyceride [Mass/volume] in Serum or Plasma [Petra Schwartz]"
// Usage: #example
// * id = "3c2be9a6-69b9-40db-92b2-b51e8fb6727a"
// * status = #final
// * performer[+].display = "The Central European Lab"
// * category[+].coding = $observation-category#laboratory
// * code.coding[+] = $loinc#2571-8 "Triglyceride [Mass/volume] in Serum or Plasma"
// * code.text = "Triglyceride [Mass/volume] in Serum or Plasma"
// * subject = Reference(Patient-f0b2dcfe-e837-464b-ae8a-3b9da1807dd3)
// * effectiveDateTime = "2024-07-15"
// * valueQuantity.value = 149.3
// * valueQuantity.unit = "mg/dL"
// * valueQuantity.code = #mg/dL
// * valueQuantity.system = $ucum
// * referenceRange[+].low = 0 $ucum#mg/dL
// * referenceRange[+].high = 199 $ucum#mg/dL
// Instance: Observation-510c446c-1530-488e-a71b-5a59198689a1
// InstanceOf: MedicalTestResultEuCore
// Title: "Medical Test Result: Cholesterol in LDL [Mass/volume] in Serum or Plasma by Direct assay"
// Description: "Example medical test result for Cholesterol in LDL [Mass/volume] in Serum or Plasma by Direct assay [Petra Schwartz]"
// Usage: #example
// * id = "510c446c-1530-488e-a71b-5a59198689a1"
// * status = #final
// * performer[+].display = "The Central European Lab"
// * category[+].coding = $observation-category#laboratory
// * code.coding[+] = $loinc#18262-6 "Cholesterol in LDL [Mass/volume] in Serum or Plasma by Direct assay"
// * code.text = "Cholesterol in LDL [Mass/volume] in Serum or Plasma by Direct assay"
// * subject = Reference(Patient-f0b2dcfe-e837-464b-ae8a-3b9da1807dd3)
// * effectiveDateTime = "2024-07-15"
// * valueQuantity.value = 129.5
// * valueQuantity.unit = "mg/dL"
// * valueQuantity.code = #mg/dL
// * valueQuantity.system = $ucum
// * referenceRange[+].low = 0 $ucum#mg/dL
// * referenceRange[+].high = 159 $ucum#mg/dL
// Instance: Observation-3cc4eaaf-b813-4178-8732-e8351e3cf591
// InstanceOf: MedicalTestResultEuCore
// Title: "Medical Test Result: Cholesterol in HDL [Mass/volume] in Serum or Plasma"
// Description: "Example medical test result for Cholesterol in HDL [Mass/volume] in Serum or Plasma [Petra Schwartz]"
// Usage: #example
// * id = "3cc4eaaf-b813-4178-8732-e8351e3cf591"
// * status = #final
// * performer[+].display = "The Central European Lab"
// * category[+].coding = $observation-category#laboratory
// * code.coding[+] = $loinc#2085-9 "Cholesterol in HDL [Mass/volume] in Serum or Plasma"
// * code.text = "Cholesterol in HDL [Mass/volume] in Serum or Plasma"
// * subject = Reference(Patient-f0b2dcfe-e837-464b-ae8a-3b9da1807dd3)
// * effectiveDateTime = "2024-07-15"
// * valueQuantity.value = 62.7
// * valueQuantity.unit = "mg/dL"
// * valueQuantity.code = #mg/dL
// * valueQuantity.system = $ucum
// * referenceRange[+].low = 50 $ucum#mg/dL
// * referenceRange[+].high = 100 $ucum#mg/dL



Instance: Device-0b89dcab-1d0c-44fa-a958-3131452d8cca
InstanceOf: DeviceEuEps
Title: "Device Example: Home nebulizer (physical object)"
Description: "Example device for the HL7 Europe Patient Summary (EPS)."
Usage: #example
* id = "0b89dcab-1d0c-44fa-a958-3131452d8cca"
* status = #active
* udiCarrier[0].id = "(01)16823880124549(11)210531(17)460615(10)48877640253395325(21)109490485862"
* type = $sct#170615005 "Home nebulizer (physical object)"
* patient = Reference(Patient-f0b2dcfe-e837-464b-ae8a-3b9da1807dd3) "Petra Schwartz"



Instance: DeviceUse-9ee7b991-3240-42e3-9bcf-a1de0507754f
InstanceOf: DeviceUseStatementEuEps
Title: "Device Use Statement Example: Home nebulizer"
Description: "Example device use statement for the HL7 Europe Patient Summary (EPS)."
Usage: #example
* id = "9ee7b991-3240-42e3-9bcf-a1de0507754f"
* status = #active
* subject = Reference(Patient-f0b2dcfe-e837-464b-ae8a-3b9da1807dd3) "Petra Schwartz"
* timingPeriod.start = "2021-06-21"
* device = Reference(Device-0b89dcab-1d0c-44fa-a958-3131452d8cca) "Home nebulizer (physical object)"
* text.status = #generated
* text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
<table class="hl7__ips"><tr><td>Home nebulizer (physical object)</td><td><span class='nb'>2021-06-21</span></td></tr></table>
</div>
"""



// Instance: Device-ad67f1c6-38c3-4a8b-b87a-6fced47d766b
// InstanceOf: DeviceEuEps
// Title: "Device Example: Blood glucose meter"
// Description: "Example device for the HL7 Europe Patient Summary (EPS)."
// Usage: #example
// * id = "ad67f1c6-38c3-4a8b-b87a-6fced47d766b"
// * status = #active
// * udiCarrier[0].id = "(01)70551104053281(11)910128(17)160212(10)34976447(21)50912"
// * type = $sct#337414009 "Blood glucose meter (physical object)"
// * patient = Reference(Patient-f0b2dcfe-e837-464b-ae8a-3b9da1807dd3) "Petra Schwartz"



// Instance: DeviceUse-7a3c591c-8b21-4e9f-b853-7ffb1da6318c
// InstanceOf: DeviceUseStatementEuEps
// Title: "Device Use Statement Example: Blood glucose meter (physical object)"
// Description: "Example device use statement for the HL7 Europe Patient Summary (EPS)."
// Usage: #example
// * id = "7a3c591c-8b21-4e9f-b853-7ffb1da6318c"
// * status = #active
// * subject = Reference(Patient-f0b2dcfe-e837-464b-ae8a-3b9da1807dd3) "Petra Schwartz"
// * timingPeriod.start = "1991-02-18"
// * device = Reference(urn:uuid:ad67f1c6-38c3-4a8b-b87a-6fced47d766b) "Blood glucose meter (physical object)"
// * text.status = #generated
// * text.div = """
// <div xmlns="http://www.w3.org/1999/xhtml">
// <table class="hl7__ips"><tr><td>Blood glucose meter (physical object)</td><td><span class='nb'>1991-02-18</span></td></tr></table>
// </div>
// """


Instance: Patient-f0b2dcfe-e837-464b-ae8a-3b9da1807dd3
InstanceOf: PatientEuEps
Title: "Patient: Petra Schwartz"
Description: "Example patient for the HL7 Europe Patient Summary (EPS)."
Usage: #example
* id = "f0b2dcfe-e837-464b-ae8a-3b9da1807dd3"
* identifier[+].type = $v2-0203#JHN
* identifier[=].system = "http://example.org/identifier-1"
* identifier[=].value = "5042-537688-1"
* identifier[+].type = $v2-0203#MR
* identifier[=].system = "http://example.org/identifier-2"
* identifier[=].value = "c35742b1-1f53-48c7-8309-016e3589854a"
* name[+].family = "Schwartz"
* name[=].given[+] = "Petra"
* name[=].text = "Petra Schwartz"
* gender = #female
* birthDate = "1950-04-19"
* address[+].use = #home
* address[=].type = #physical
* address[=].line[+] = "Hoheluftchaussee 46"
* address[=].city = "Dommitzsch"
* address[=].postalCode = "04878"
* address[=].country = "Germany"
* telecom[+].system = #phone
* telecom[=].value = "+49 034223 68 59"
* text.status = #generated
* text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
<table class="hl7__ips"><tr><td>Petra Schwartz</td><td>1950-04-19</td></tr></table>
</div>
"""





Instance: PractitionerRole-01d682e6-bb2d-4b31-9d3c-51cdc6dfb39b
InstanceOf: PractitionerRoleEu
Title: "PractitionerRole"
Description: "PractitionerRole"
Usage: #example
* id = "01d682e6-bb2d-4b31-9d3c-51cdc6dfb39b"
* practitioner = Reference(Practitioner-3752dacc-a6e8-4cdd-b82f-92e1647de816)
* organization = Reference(Organization-ce815734-508a-4c1d-8b63-01e1d02a5614)



Instance: Organization-ce815734-508a-4c1d-8b63-01e1d02a5614
InstanceOf: OrganizationEu
Title: "Organization: BfA-Klinik"
Description: "Example organization for the HL7 Europe Patient Summary (EPS)."
Usage: #example
* id = "ce815734-508a-4c1d-8b63-01e1d02a5614"
* identifier.system = "urn:ietf:rfc:9562"
* identifier.value = "6cc3db61-fdae-4ee0-84bf-fa3bee63b2a8"
* identifier.assigner.display = "HL7 Europe"
* name = "BfA-Klinik"
* address.city = "Bad Schmiedeberg"
* address.postalCode = "06905"
* address.country = "Germany"



Instance: Practitioner-3752dacc-a6e8-4cdd-b82f-92e1647de816
InstanceOf: PractitionerEu
Title: "Practitioner: Dr. Hel Ping"
Description: "Example practitioner for the HL7 Europe Patient Summary (EPS)."
Usage: #example
* id = "3752dacc-a6e8-4cdd-b82f-92e1647de816"
* name.prefix = "Dr."
* name.given[+] = "Hel"
* name.family = "Ping"


