Instance: 72ab101d-47f7-4916-8cdb-0c0c41eae057
InstanceOf: Composition
Usage: #inline
* meta.security[0] = $v3-ActReason#HTEST
* meta.security[+] = $v3-ActReason#TRAIN
* meta.profile = "http://hl7.eu/fhir/eps/StructureDefinition/composition-eu-eps"
* identifier.assigner.display = "HL7 Europe"
* identifier.system = "urn:oid:2.16.840.1.113883.2.51.999"
* identifier.value = "1947fb08-195b-4b3e-89b5-951ab7d7a5b9"
* type = $loinc#60591-5 "Patient summary Document"
* type.text = "Patient summary Document"
* author = Reference(urn:uuid:d0a1f960-01a3-4f0c-8548-406734bd1c39)
* section[0].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><table class=\"hl7__ips\"><tr><th>Condition</th><th>Onset Date</th><th>Status</th></tr><tr><td>Prediabetes</td><td><span class=\"nb\">23-Nov-1995</span></td><td>active</td></tr><tr><td>Anemia</td><td><span class=\"nb\">23-Nov-1995</span></td><td>active</td></tr></table></div>"
* section[=].entry = Reference(urn:uuid:5de96365-78d2-43e6-916e-2ca657befce8)
* section[=].code = $loinc#11450-4 "Problem list - Reported"
* section[=].title = "Problem list"
* section[+].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><table class=\"hl7__ips\"><tr><td>No known medications</td></tr></table></div>"
* section[=].entry = Reference(urn:uuid:3c8dd7a1-3ba1-403e-ac41-47c1111f6ab9)
* section[=].code = $loinc#10160-0 "History of Medication use Narrative"
* section[=].title = "Medication list"
* section[+].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><table class=\"hl7__ips\"><tr><th>Vaccine</th><th>Date</th></tr><tr><td>Influenza virus antigen only vaccine product</td><td><span class=\"nb\">09-Oct-2024</span></td></tr><tr><td>Clostridium tetani toxoid antigen adsorbed only vaccine product</td><td><span class=\"nb\">22-Sep-2021</span></td></tr><tr><td>Live attenuated Human alphaherpesvirus 3 only vaccine product</td><td><span class=\"nb\">22-Sep-2021</span></td></tr><tr><td>COVID-19 non-replicating viral vector vaccine</td><td><span class=\"nb\">08-Sep-2021</span></td></tr></table></div>"
* section[=].entry = Reference(urn:uuid:326c9449-470d-47bb-90ca-cae118aa359a)
* section[=].code = $loinc#11369-6 "History of Immunization note"
* section[=].title = "Immunizations list"
* section[+].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><table class=\"hl7__ips\"><tr><th>Allergy/Intolerance</th><th>Onset Date</th><th>Status</th><th>Type</th><th>Reaction</th></tr><tr><td>Vaccine product containing recombinant viral vector encoding SARS-CoV-2 spike protein</td><td>?</td><td>active</td><td>?</td><td></td></tr></table></div>"
* section[=].entry = Reference(urn:uuid:20bbdf26-adbe-4123-87f7-d12eccd2a955)
* section[=].code = $loinc#48765-2 "Allergies and adverse reactions Document"
* section[=].title = "Allergies and Intolerances"
* section[+].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><table class=\"hl7__ips\"><tr><th>Active Planned Care / Goals</th><th>Start Date</th><th>Reason</th></tr><tr><td>Diabetes self management plan</td><td><span class=\"nb\">23-Nov-1995</span></td><td>Prediabetes</td></tr><tr><td><ul><li>Patient will implement and maintain a diabetes self-management plan including dietary changes, increased physical activity, and regular blood glucose monitoring to reduce risk of progression to diabetes.</li></ul></td><td></td><td></td></tr></table></div>"
* section[=].title = "Care Plan"
* section[=].code = $loinc#18776-5 "Plan of care note"
* section[+].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><table class=\"hl7__ips\"><tr><th>Vital Signs</th><th>2024-10-09</th><th>2023-10-04</th></tr><tr><td>Body Height</td><td>168.4 cm</td><td>168.4 cm</td></tr><tr><td>Pain severity - 0-10 verbal numeric rating [Score] - Reported</td><td>2 {score}</td><td>1 {score}</td></tr><tr><td>Body Weight</td><td>85.6 kg</td><td>85.4 kg</td></tr><tr><td>Body mass index (BMI) [Ratio]</td><td>30.2 kg/m2</td><td>30.1 kg/m2</td></tr><tr><td>Diastolic Blood Pressure</td><td>83 mm[Hg]</td><td>82 mm[Hg]</td></tr><tr><td>Systolic Blood Pressure</td><td>93 mm[Hg]</td><td>87 mm[Hg]</td></tr><tr><td>Heart rate</td><td>91 /min</td><td>81 /min</td></tr><tr><td>Respiratory rate</td><td>12 /min</td><td>13 /min</td></tr></table></div>"
* section[=].entry = Reference(urn:uuid:81f617b8-979a-4b41-ba34-19cb5eadc55c)
* section[=].code = $loinc#8716-3 "Vital signs note"
* section[=].title = "Vital Signs"
* section[+].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><table class=\"hl7__ips\"><table class=\"hl7__ips\"><thead><tr><th>Recent Lab Observations</th><th>10-OCT-2024</th><th>Reference&#xA0;Range</th><th>Unit</th></tr></thead><tbody><tr><td>Hemoglobin A1c/Hemoglobin.total in Blood</td><td>6.2</td><td>4.3 - 6.4</td><td>%</td></tr><tr><td>Glucose [Mass/volume] in Blood</td><td>88.0</td><td>70 - 140</td><td>mg/dL</td></tr><tr><td>Urea nitrogen [Mass/volume] in Blood</td><td>7.0</td><td>7 - 20</td><td>mg/dL</td></tr><tr><td>Creatinine [Mass/volume] in Blood</td><td>1.3</td><td>0.6 - 1.3</td><td>mg/dL</td></tr><tr><td>Calcium [Mass/volume] in Blood</td><td>8.8</td><td>8.5 - 10.5</td><td>mg/dL</td></tr><tr><td>Sodium [Moles/volume] in Blood</td><td>143.3</td><td>135 - 145</td><td>mmol/L</td></tr><tr><td>Potassium [Moles/volume] in Blood</td><td>4.7</td><td>3.5 - 5.3</td><td>mmol/L</td></tr><tr><td>Chloride [Moles/volume] in Blood</td><td>101.1</td><td>98 - 110</td><td>mmol/L</td></tr><tr><td>Carbon dioxide, total [Moles/volume] in Blood</td><td><strong>21.4 L</strong></td><td>22 - 29</td><td>mmol/L</td></tr></tbody></table></table></div>"
* section[=].title = "Relevant diagnostic tests/laboratory data"
* section[=].code = $loinc#30954-2 "Relevant diagnostic tests/laboratory data note"
* section[+].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><table class=\"hl7__ips\"><tr><th>Device</th><th>Date (since)</th></tr><tr><td>Blood glucose meter (physical object)</td><td><span class=\"nb\">22-Nov-1995</span></td></tr></table></div>"
* section[=].entry = Reference(urn:uuid:f9da12c0-60f0-49c1-adc8-819b5be89e88)
* section[=].code = $loinc#46264-8 "History of medical device use"
* section[=].title = "Device Use"
* title = "European Patient Summary"
* status = #final
* subject = Reference(urn:uuid:8499029f-70ec-4919-88a9-938d8ad56397) "Sebastian Schmidl"
* custodian = Reference(urn:uuid:6fc2c28f-9884-4c40-a20f-f6196767533a)
* date = "2024-10-10"
* confidentiality = #N