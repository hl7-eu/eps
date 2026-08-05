### Discharge Report Sections

This page summarises the proposed section titles, short descriptions, and definitions for the discharge report sections.

### Sections at a glance

| No. | Section | Slice name | Card. | LOINC |
| --- | --- | --- | --- | --- |
| 1 | Alert | sectionAlert | 0..1 (..1) | 104605-1 |
| 2 | Admission Evaluation | sectionAdmissionEvaluation | 0..1 (..1) | 67851-6 |
| 3 | Vital Signs | sectionVitalSigns | 0..1 | 8716-3 |
| 4 | Physical Findings | sectionPhysicalFindings | 0..1 (..1) | 29545-1 |
| 5 | Functional Status | sectionFunctionalStatus | 0..1 | 47420-5 |
| 6 | Hospital Course | sectionHospitalCourse | 1..1 | 8648-8 |
| 7 | Diagnostic Summary | sectionDiagnosticSummary | 0..1 | 11535-2 |
| 8 | Significant Procedures | sectionSignificantProcedures | 0..1 | 10185-7 |
| 9 | Medical Devices | sectionMedicalDevices | 0..1 | 46264-8 |
| 10 | History of Procedures | sectionProceduresHx | 0..1 | 47519-4 |
| 11 | Pharmacotherapy | sectionPharmacotherapy | 0..1 | 87232-5 |
| 12 | Implanted Devices | sectionImplantedDevices | 0..1 | 57080-4 |
| 13 | Significant Results | sectionSignificantResults | 0..1 | 30954-2 |
| 14 | Synthesis | sectionSynthesis | 0..1 | 67781-5 |
| 15 | Plan of Care | sectionPlanOfCare | 0..1 (..1) | 18776-5 |
| 16 | Discharge Medications | sectionDischargeMedications | 0..1 (..1) | 75311-1 |
| 17 | Allergies | sectionAllergies | 0..1 (..1) | 48765-2 |
| 18 | Patient History | sectionPatientHx | 0..1 (..1) | 11329-0 |
| 19 | Problems | sectionProblems | 0..1 (..1) | 11450-4 |
| 20 | Immunizations | sectionImmunizations | 0..1 (..1) | 11369-6 |
| 21 | Discharge Details | sectionDischargeDetails | 0..1 (FSH block comment says "1 .. 1 R") | 8650-4 |
| 22 | Attachments | sectionAttachments | 0..1 | 77599-9 |

### 1. Section Alert

| Field | Value |
| --- | --- |
| Slice name | sectionAlert |
| Cardinality | 0..1 (..1) |
| LOINC | 104605-1 |
| Title - proposed | Alerts |
| Short - current (^short) | Alert Section |
| Short - proposed | Substantial alerts and warnings |
| Description - current (^definition) | Information about substantial alerts or warnings (including allergies) that health professionals should be aware of. |
| Description - proposed | Information about substantial alerts or warnings that health professionals should be aware of, other than allergies and intolerances, which are documented in the Allergies and intolerances section. Alerts cover any clinical information that is imperative to know so that the life or health of the patient does not come under threat, for example a rare disease requiring special treatment, a difficult airway or intubation, malignant hyperthermia, porphyria, bleeding disorders, treatment with anticoagulants or immunosuppressants, transplanted organs, or participation in a clinical trial. Alerts may be coded where a suitable code exists, but given their dynamic nature they are frequently recorded as free text. |

### 2. Section Admission Evaluation

| Field | Value |
| --- | --- |
| Slice name | sectionAdmissionEvaluation |
| Cardinality | 0..1 (..1) |
| LOINC | 67851-6 |
| Title - proposed | Hospital admission evaluation |
| Short - current (^short) | Hospital Admission evaluation |
| Short - proposed | Patient evaluation at hospital admission |
| Description - current (^definition) | Hospital Admission evaluation (FSH ^comment: "Admission evaluation should be reported only exceptionally, if it is relevant to ensure continuity of care.") |
| Description - proposed | Evaluation of the patient at hospital admission, comprising objective findings such as anthropometric observations, vital signs and physical examination, and where relevant the functional status at admission. The admission evaluation is reported only exceptionally, when it is relevant to ensure continuity of care after discharge. |

### 3. Section Vital Signs

| Field | Value |
| --- | --- |
| Slice name | sectionVitalSigns |
| Cardinality | 0..1 |
| LOINC | 8716-3 |
| Title - proposed | Vital signs |
| Short - current (^short) | Vital signs |
| Short - proposed | Vital signs during the encounter and at discharge |
| Description - current (^definition) | The Vital signs section includes blood pressure, body temperature, heart rate, and respiratory rate. It may also include other clinical findings, such as height, weight, body mass index, head circumference, and pulse oximetry. In particular, notable vital signs or physical findings such as the most recent, maximum and/or minimum, baseline, or relevant trends may be included |
| Description - proposed | Vital signs observed during the encounter and at or before discharge, comprising systolic and diastolic blood pressure including the site of measurement, pulse rate and respiratory rate, and optionally oxygen saturation, body temperature and pain score. Notable values such as the most recent, the maximum or minimum, the baseline, or a relevant trend may be reported. Anthropometric observations such as body weight, height, body mass index and circumferences are reported in the Physical findings section. |

### 4. Section Physical Findings

| Field | Value |
| --- | --- |
| Slice name | sectionPhysicalFindings |
| Cardinality | 0..1 (..1) |
| LOINC | 29545-1 |
| Title - proposed | Physical findings |
| Short - current (^short) | Physical findings |
| Short - proposed | Objective findings from physical examination |
| Description - current (^definition) | Physical findings |
| Description - proposed | Objective findings established by examining the patient, comprising the physical examination performed through observation, palpation, percussion and auscultation, and anthropometric observations such as body weight, height, body mass index and the circumference of head, waist, hip and limbs. The narrative should be structured by organ system, for example head, neck, thorax, abdomen and limbs. |

### 5. Section Functional Status

| Field | Value |
| --- | --- |
| Slice name | sectionFunctionalStatus |
| Cardinality | 0..1 |
| LOINC | 47420-5 |
| Title - proposed | Functional status |
| Short - current (^short) | Functional status |
| Short - proposed | Ability to perform activities of daily living |
| Description - current (^definition) | The functional status section shall contain a narrative description of capability of the patient to perform acts of daily living, including possible needs of the patient to be continuously assessed by third parties. The invalidity status may in fact influence decisions about how to administer treatments. Profiles to express disabilities and functional assessments will be specified by future versions of this guide. |
| Description - proposed | The ability of the patient to perform normal daily activities required to meet basic needs, fulfil usual roles and maintain health and well-being. This covers basic activities of daily living such as bathing, feeding and toileting, instrumental activities of daily living such as cooking, shopping and managing one's own affairs, and any need for the patient to be continuously assessed by third parties. Functional status may influence decisions about how to plan and administer treatments. |

### 6. Section Hospital Course

| Field | Value |
| --- | --- |
| Slice name | sectionHospitalCourse |
| Cardinality | 1..1 |
| LOINC | 8648-8 |
| Title - proposed | Hospital course |
| Short - current (^short) | Hospital course |
| Short - proposed | Significant information about course of hospital stay |
| Description - current (^definition) | Hospital course describes the sequence of events from admission to discharge in a hospital facility. (FSH ^short: "Significant information about course of hospital stay"; ^definition: includes basic information about hospital stay (encounter), diagnostic summary in narrative form, pharmacotherapy, major procedures, medical devices, significant findings during hospital stay and clinical synthesis.) |
| Description - proposed | Significant information about the course of the hospital stay, describing the sequence of events from admission to discharge in a hospital facility. This section groups the diagnostic summary, significant procedures, pharmacotherapy administered during the stay, medical devices and implants, significant medical test results and the clinical synthesis, and may carry a narrative account of the course of the encounter. |

### 7. Section Diagnostic Summary

| Field | Value |
| --- | --- |
| Slice name | sectionDiagnosticSummary |
| Cardinality | 0..1 |
| LOINC | 11535-2 |
| Title - proposed | Diagnostic summary |
| Short - current (^short) | Problem specification in narrative form (title appears mis-assigned - see notes) |
| Short - proposed | Problems and diagnoses of the hospital stay |
| Description - current (^definition) | All problems/diagnoses that affect care during the inpatient case or are important to be recorded to ensure continuity of care. The diagnostic summary differentiates, in accordance with the international recommendation, between problems treated during hospital stay and other (untreated) problems. Treated problems are problems that were the subject of diagnostics, therapy, nursing, or (continuous) monitoring during the hospitalisation. Furthermore problems could be divided into three categories: problems present on admission (POA), conditions acquired during hospital stay (HAC) and problems that cannot be classified as being of any of the two (N/A). The diagnostic summary contains all conditions as they were recognised at the end of hospitalisation, after all examinations. This section contains concise, well specified, codeable, summary of problems. Problems are ordered by importance (main problems first) during hospital stay. Description of the problem might be completed with additional details in the medical history section and/or in the Synthesis section. |
| Description - proposed | All problems and diagnoses that affect care during the inpatient case or are important to be recorded to ensure continuity of care. The diagnostic summary contains a concise, well specified and codeable summary of problems as they were recognised at the end of hospitalisation, after all examinations, ordered by importance with the main problems first. In accordance with international recommendations it differentiates between problems treated during the hospital stay, meaning problems that were the subject of diagnostics, therapy, nursing or continuous monitoring, and other untreated problems, which are recorded only where they matter for continuity of care. Each problem is further classified as present on admission, acquired during the hospital stay, or not classifiable as either. Additional detail on a problem may be provided in the patient history section or in the synthesis section. |

### 8. Section Significant Procedures

| Field | Value |
| --- | --- |
| Slice name | sectionSignificantProcedures |
| Cardinality | 0..1 |
| LOINC | 10185-7 |
| Title - proposed | Significant procedures |
| Short - current (^short) | Significant procedures |
| Short - proposed | Significant procedures performed during the stay |
| Description - current (^definition) | Significant surgical and non-surgical procedures performed during hospitalisation which are significant for continuity of care, e.g. surgeries and other "instrumental" interventions (endoscopic, intravascular), chemotherapy, radiotherapy, purification methods (dialysis, hemoperfusion), circulation support methods (counterpulsation, etc.), administration of blood derivatives or others. This section does not include purely diagnostic procedures (MRI, CT, etc.). If no significant performance has been performed, this fact must be explicitly stated using the IPS Absent and Unknown Data. |
| Description - proposed | Significant surgical and non-surgical procedures performed during hospitalisation which are significant for continuity of care, for example surgery and other instrumental interventions such as endoscopic or intravascular procedures, chemotherapy, radiotherapy, purification methods such as dialysis or hemoperfusion, circulation support methods such as counterpulsation, and the administration of blood derivatives. Purely diagnostic procedures such as MRI or CT are not reported here. If no significant procedure was performed, this must be stated explicitly using the IPS Absent and Unknown Data code system. |

### 9. Section Medical Devices

| Field | Value |
| --- | --- |
| Slice name | sectionMedicalDevices |
| Cardinality | 0..1 |
| LOINC | 46264-8 |
| Title - proposed | History of medical device use |
| Short - current (^short) | Medical Devices Section |
| Short - proposed | Devices used or implanted before this encounter |
| Description - current (^definition) | The medical devices section contains narrative text and coded entries describing the patient history of medical device use |
| Description - proposed | The patient history of medical device use, describing implanted and external medical devices and equipment on which the health status of the patient depends and of which health professionals need to be aware, for example cardiac pacemakers, implantable defibrillators, prostheses and ferromagnetic bone implants. Devices implanted, explanted or discontinued during the current hospital stay are reported in the Medical devices and implants section. If no information about medical device use is available, or no relevant device use is known, this must be stated explicitly using the IPS Absent and Unknown Data code system. |

### 10. Section History of Procedures

| Field | Value |
| --- | --- |
| Slice name | sectionProceduresHx |
| Cardinality | 0..1 |
| LOINC | 47519-4 |
| Title - proposed | History of procedures |
| Short - current (^short) | (no SectionComRules - rules written out explicitly) History of Procedures |
| Short - proposed | Past procedures relevant to this encounter |
| Description - current (^definition) | The History of Procedures Section contains a description of the patient past procedures that are pertinent to the scope of this document. Procedures may refer for example to: 1. Invasive Diagnostic procedure: e.g. Cardiac catheterization (the results of these procedure are documented in the results section); 2. Therapeutic procedure: e.g. dialysis; 3. Surgical procedure: e.g. appendectomy |
| Description - proposed | Historical procedures performed on or for the patient that are relevant to the current encounter, for example invasive diagnostic procedures such as cardiac catheterisation, therapeutic procedures such as dialysis, surgical procedures such as appendectomy, and further biopsies, counselling, physiotherapy or personal support services. Results of diagnostic procedures are documented in the Significant medical test results section. Procedures performed during the current hospital stay are reported in the Significant procedures section. |

### 11. Section Pharmacotherapy

| Field | Value |
| --- | --- |
| Slice name | sectionPharmacotherapy |
| Cardinality | 0..1 |
| LOINC | 87232-5 |
| Title - proposed | Pharmacotherapy |
| Short - current (^short) | Pharmacotherapy |
| Short - proposed | Drug treatment discontinued before discharge |
| Description - current (^definition) | Selected drug treatment during hospitalisation. Medicinal products that were administered during hospitalisation and whose administration has already been discontinued before discharge. Only products which are important for continuity of care (antibiotics other than completely routine, corticosteroids in high doses, etc.) will be listed. Products which administration will continue after discharge will be also recorder in the Medication summary section. Medicinal products, the administration of which was started during hospitalisation but is also recommended after discharge, will be listed in the summary table in the recommendation section. |
| Description - proposed | Selected drug treatment during hospitalisation, namely medicinal products that were administered during the stay and whose administration was already discontinued before discharge. Only products that are important for continuity of care are listed, for example antibiotics other than completely routine ones, or corticosteroids in high doses. Medicinal products whose administration continues after discharge are recorded in the Hospital discharge medications section, and where their administration started during the stay and is also recommended afterwards they are listed there as well. |

### 12. Section Implanted Devices

| Field | Value |
| --- | --- |
| Slice name | sectionImplantedDevices |
| Cardinality | 0..1 |
| LOINC | 57080-4 (FSH comment: "to be changed") |
| Title - proposed | Medical devices and implants |
| Short - current (^short) | Medical devices and implants |
| Short - proposed | Devices and implants during the hospital stay |
| Description - current (^definition) | Implants and used medical devices that affected or may affect the provision of health services (diagnosis and treatment). Also medical devices explanted, or its use was stopped during hospitalisation. If the section is blank, the reason must be explicitly stated using the IPS Absent and Unknown Data coding system. |
| Description - proposed | Implants and medical devices used during the hospital stay that affected or may affect the provision of health services, meaning diagnosis and treatment, including devices that were explanted or whose use was stopped during hospitalisation. The patient history of earlier medical device use is reported in the History of medical device use section. If no relevant device is reported, the reason must be stated explicitly using the IPS Absent and Unknown Data code system. |

### 13. Section Significant Results

| Field | Value |
| --- | --- |
| Slice name | sectionSignificantResults |
| Cardinality | 0..1 |
| LOINC | 30954-2 |
| Title - proposed | Significant medical test results |
| Short - current (^short) | Significant medical test results |
| Short - proposed | Significant medical test results of the stay |
| Description - current (^definition) | Significant medical test results of functional, diagnostic (including laboratory), and imaging examinations performed during encounter. This may include orders for which the results have not yet arrived. |
| Description - proposed | Significant results of functional, diagnostic, including laboratory, and imaging examinations performed during the encounter which are needed to ensure continuity of care. Examinations that were ordered but whose results have not yet been delivered may also be reported, and are presented separately from results already delivered. |

### 14. Section Synthesis

| Field | Value |
| --- | --- |
| Slice name | sectionSynthesis |
| Cardinality | 0..1 |
| LOINC | 67781-5 |
| Title - proposed | Synthesis |
| Short - current (^short) | Synthesis |
| Short - proposed | Clinical synthesis of the hospital stay |
| Description - current (^definition) | This section provides clinical synthesis (e.g. description of reasons and course of hospital stay) clustered by managed conditions. Clinical synthesis may include clinical reasoning (differential diagnostics, explanation of clinical context) in clinically complex conditions. |
| Description - proposed | Clinical synthesis of the hospital stay, describing the reasons for and the course of hospitalisation, clustered by the conditions that were managed. In clinically complex cases the synthesis may conclude with clinical reasoning, such as differential diagnostic considerations or an explanation of the clinical context. |

### 15. Section Plan of Care

| Field | Value |
| --- | --- |
| Slice name | sectionPlanOfCare |
| Cardinality | 0..1 (..1) |
| LOINC | 18776-5 |
| Title - proposed | Plan of care |
| Short - current (^short) | Plan of Care Section |
| Short - proposed | Plan of care and recommendations after discharge |
| Description - current (^definition) | The plan of care section contains a narrative description of the expectations for care including proposals, goals, and order requests for monitoring, tracking, or improving the condition of the patient. |
| Description - proposed | The plan of care after discharge, containing a narrative description of the expectations for care including proposals, goals and order requests for monitoring, tracking or improving the condition of the patient. Several care plans may be reported, each linked to the conditions whose management or mitigation it addresses. Other recommendations and advice given at discharge are also reported here, for example to consider hip replacement, to reduce the number of cigarettes or to stop smoking, or to increase physical exercise. Medication recommended for the period after discharge is reported in the Hospital discharge medications section. |

### 16. Section Discharge Medications

| Field | Value |
| --- | --- |
| Slice name | sectionDischargeMedications |
| Cardinality | 0..1 (..1) |
| LOINC | 75311-1 |
| Title - proposed | Hospital discharge medications |
| Short - current (^short) | Hospital discharge medications |
| Short - proposed | Medication intended after discharge |
| Description - current (^definition) | Hospital discharge medications defines the medications that the patient is intended to take, or stop, after discharge |
| Description - proposed | Summary information on the medication recommended for the period after discharge, defining the medicinal products that the patient is intended to take or to stop and indicating for each whether it is unchanged, changed, newly started or discontinued, together with the reason for a change. Drug treatment that was administered during the stay and already discontinued before discharge is reported in the Pharmacotherapy section. |

### 17. Section Allergies

| Field | Value |
| --- | --- |
| Slice name | sectionAllergies |
| Cardinality | 0..1 (..1) |
| LOINC | 48765-2 |
| Title - proposed | Allergies and intolerances |
| Short - current (^short) | Allergies and Intolerances Section |
| Short - proposed | Relevant allergies and intolerances |
| Description - current (^definition) | This section documents the relevant allergies or intolerances for that patient, describing the kind of reaction - e.g. rash, anaphylaxis, ... - preferably the agents that cause it; and optionally the criticality and the certainty of the allergy. At a minimum, it should list currently active and any relevant historical allergies and adverse reactions. If no information about allergies is available, or if no allergies are known this should be clearly documented in the section. |
| Description - proposed | Relevant allergies and intolerances of the patient, primarily those newly identified during the hospital stay, describing the kind of reaction, for example rash or anaphylaxis, preferably the agent or allergen causing it, and optionally the criticality and the certainty of the allergy. Any historical allergy or adverse reaction that is still active or relevant for continuity of care is also listed. If no information about allergies is available, or no allergy is known, this must be stated clearly in the section. |

### 18. Section Patient History

| Field | Value |
| --- | --- |
| Slice name | sectionPatientHx |
| Cardinality | 0..1 (..1) |
| LOINC | 11329-0 |
| Title - proposed | Patient health history |
| Short - current (^short) | Hx general Reported Section |
| Short - proposed | Narrative patient health history (anamnesis) |
| Description - current (^definition) | This section may provide both synthetic anamnesis, e.g. description of phases of the pathology as a chronological summary of clustered clinical information, and anecdotal evidence that clinicians can collect from the patient, and can read in a narrative form. |
| Description - proposed | The health history of the patient, or anamnesis, in narrative form. It may provide a synthetic anamnesis, such as a chronological summary of clustered clinical information describing the phases of a pathology, as well as anecdotal evidence that clinicians can collect from the patient. Only history that is important for continuity of care is reported, complementing the diagnostic summary. Structured history is recorded in the dedicated sections for problems, procedures, medical devices and immunizations. |

### 19. Section Problems

| Field | Value |
| --- | --- |
| Slice name | sectionProblems |
| Cardinality | 0..1 (..1) |
| LOINC | 11450-4 |
| Title - proposed | Problem list |
| Short - current (^short) | Problem List Section |
| Short - proposed | Problems currently being monitored |
| Description - current (^definition) | The Problem List Section lists and describes clinical problems or conditions currently being monitored for the patient. |
| Description - proposed | Clinical problems and conditions of the patient that are currently being monitored and remain relevant after discharge, including conditions the patient suffered in the past and still suffers from. Unlike the diagnostic summary, this section may carry a broader description of a condition and its progress, including treatment and the response of the patient to treatment. Only conditions important for continuity of care are listed. If no information about problems is available, or no relevant problem is known, this must be stated explicitly using the IPS Absent and Unknown Data code system. |

### 20. Section Immunizations

| Field | Value |
| --- | --- |
| Slice name | sectionImmunizations |
| Cardinality | 0..1 (..1) |
| LOINC | 11369-6 |
| Title - proposed | Immunizations |
| Short - current (^short) | Immunizations Section |
| Short - proposed | Immunization status and vaccination history |
| Description - current (^definition) | The Immunizations Section defines a patient's current immunization status and pertinent immunization history. The primary use case for the Immunization Section is to enable communication of a patient's immunization status. The section includes the current immunization status, and may contain the entire immunization history that is relevant to the period of time being summarized. |
| Description - proposed | The immunization status and the vaccination history of the patient. The primary purpose of this section is to communicate the current immunization status, and it may contain the entire vaccination history relevant to the period being summarised, including the disease or agent targeted, the vaccine or its components, the dose within a series, the date of administration and any planned next dose. If no information about immunizations is available, or no immunization is known, this must be stated explicitly using the IPS Absent and Unknown Data code system. |

### 21. Section Discharge Details

| Field | Value |
| --- | --- |
| Slice name | sectionDischargeDetails |
| Cardinality | 0..1 (FSH block comment says "1 .. 1 R") |
| LOINC | 8650-4 |
| Title - proposed | Discharge details |
| Short - current (^short) | Discharge details |
| Short - proposed | Discharge status and disposition of the patient |
| Description - current (^definition) | The hospital discharge status or disposition of the patient having a hospitalization. |
| Description - proposed | Details of the discharge of the patient, comprising the discharge status or disposition and the condition of the patient at discharge. Structured information should be provided, and where it is not available at least a discharge summary note should be present. The discharge date, the type of destination such as home, another hospital or a nursing home, discharge against medical advice, and the destination organisation are recorded in the encounter. |

### 22. Section Attachments

| Field | Value |
| --- | --- |
| Slice name | sectionAttachments |
| Cardinality | 0..1 |
| LOINC | 77599-9 |
| Title - proposed | Attachments |
| Short - current (^short) | Library of attachments. |
| Short - proposed | Library of documents attached to this report |
| Description - current (^definition) | List documents related and attachments to this report. (FSH ^short: "Attachments"; ^definition: "This section lists documents and attachments associated to this report") |
| Description - proposed | Documents and attachments associated with this report, listed as a library of source material referenced from the report, for example scanned source documents, images, or reports in PDF form. |
