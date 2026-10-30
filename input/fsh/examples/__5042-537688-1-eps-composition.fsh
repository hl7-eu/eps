Instance: Composition-24c0f4df-ed5c-4a81-b34f-6d7cfffe310b
InstanceOf: CompositionEuEps
Title: "Composition: Complete EPS, standalone Composition"
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
Title: "Medication: Simvastatin 10 mg oral tablet, standalone Composition"
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
Title: "MedicationStatement: Simvastatin 10 mg oral tablet, standalone Composition"
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



Instance: Immunization-2c268a6d-fd6e-4580-acae-3b5f52d43c26
InstanceOf: ImmunizationEuCore
Title: "Immunization: Influenza vaccine, 2025-07-14, standalone Composition"
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



Instance: Observation-62e65dfb-d837-4556-8e75-2ca7a6fe6e40
InstanceOf: http://hl7.org/fhir/StructureDefinition/vitalsigns
Title: "Vital Signs: Body height, 2025-07-14, standalone Composition"
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



Instance: Device-0b89dcab-1d0c-44fa-a958-3131452d8cca
InstanceOf: DeviceEuEps
Title: "Device Example: Home nebulizer (physical object)"
Description: "Example device for the HL7 Europe Patient Summary (EPS)."
Usage: #example
* id = "0b89dcab-1d0c-44fa-a958-3131452d8cca"
* status = #active
* udiCarrier[0].deviceIdentifier = "16823880124549"
* udiCarrier[0].issuer = "http://example.org/fhir/NamingSystem/gs1-di"
* udiCarrier[0].carrierHRF = "(01)16823880124549(11)210531(17)460615(10)48877640253395325(21)109490485862"
* type = $sct#170615005 "Home nebulizer (physical object)"
* patient = Reference(Patient-f0b2dcfe-e837-464b-ae8a-3b9da1807dd3) "Petra Schwartz"



Instance: DeviceUse-9ee7b991-3240-42e3-9bcf-a1de0507754f
InstanceOf: DeviceUseStatementEuEps
Title: "Device Use Statement Example: Home nebulizer, standalone Composition"
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



Instance: Patient-f0b2dcfe-e837-464b-ae8a-3b9da1807dd3
InstanceOf: PatientEuEps
Title: "Patient: Petra Schwartz, standalone Composition"
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


