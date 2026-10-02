{% include variables.html %}
### EHDS Logical Data Models

The [**Xt-EHR Joint Action**](https://www.xt-ehr.eu/) has developed a set of Logical data models (or information models)  - see [**Xt-EHR EHDS Logical Information Models**](https://www.xt-ehr.eu/fhir/models) Implementation Guide - that have been used as **basis** for the future **European Health Data Space (EHDS)** Implementing Act.

They represent **evolving, refined interpretations** of the data sets described in the [**eHealth Network (eHN) Guidelines**](https://health.ec.europa.eu/ehealth-digital-health-and-care/digital-health-and-care/eu-cooperation/ehealth-network_en#ehealth-network-guidelines), and are subject to further refinement.

This Implementation Guide (IG) aims to **align with the emerging EHDS logical models** and to **provide HL7 FHIR profiles** that **realise the requirements identified in these models**.

The EHDS logical models currently supported in this version of the guide are listed below.


<div class="model-map-block">
      <div class="callout-wrapper">
      <div class="callout-box">
        <strong>Ongoing alignment:</strong>
            The models are expected to continue evolving, with updates incorporated into this Implementation Guide to maintain alignment with the EHDS Implementing Acts.
      </div>
      </div>
</div>

---

### Xt-EHR Logical Models

#### Patient Summary

| **Model**     | **Description**       |
| ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------ |
| [EHDSPatientSummary]({{ xtehr_models }}StructureDefinition-EHDSPatientSummary.html)  | EHDS refined base model for Patient Summary       |

---

#### Common Models used by the Patient Summary

| **Model** | **Description** |
| --- | --- |
| [EHDSPatient]({{ xtehr_models }}StructureDefinition-EHDSPatient.html) | EHDS refined base model for Patient (subject of care) |
| [EHDSHealthProfessional]({{ xtehr_models }}StructureDefinition-EHDSHealthProfessional.html) | EHDS refined base model for Health Professional |
| [EHDSOrganisation]({{ xtehr_models }}StructureDefinition-EHDSOrganisation.html) | EHDS refined base model for healthcare organisations and providers |
| [EHDSAttachment]({{ xtehr_models }}StructureDefinition-EHDSAttachment.html) | EHDS refined base model for containing or referencing attachments. |
| [EHDSDevice]({{ xtehr_models }}StructureDefinition-EHDSDevice.html) | EHDS refined base model for Device information |
| [EHDSAllergyIntolerance]({{ xtehr_models }}StructureDefinition-EHDSAllergyIntolerance.html) | EHDS refined base model for allergy or intolerance information |
| [EHDSAlert]({{ xtehr_models }}StructureDefinition-EHDSAlert.html) | EHDS refined base model for clinical alerts |
| [EHDSCondition]({{ xtehr_models }}StructureDefinition-EHDSCondition.html) | EHDS refined base model for a clinical condition, problem, diagnosis, or other event, situation, issue, or clinical concept that has risen to a level of concern |
| [EHDSMedicationUse]({{ xtehr_models }}StructureDefinition-EHDSMedicationUse.html) | Statement about a single medication as part of a medication summary |
| [EHDSProcedure]({{ xtehr_models }}StructureDefinition-EHDSProcedure.html) | EHDS refined base model for an action that is or was performed on or for a patient |
| [EHDSImmunisation]({{ xtehr_models }}StructureDefinition-EHDSImmunisation.html) | EHDS refined base model for immunisation |
| [EHDSDeviceUse]({{ xtehr_models }}StructureDefinition-EHDSDeviceUse.html) | EHDS refined base model for device use information |
| [EHDSCurrentPregnancy]({{ xtehr_models }}StructureDefinition-EHDSCurrentPregnancy.html) | EHDS model for current pregnancy status |
| [EHDSPregnancyHistory]({{ xtehr_models }}StructureDefinition-EHDSPregnancyHistory.html) | EHDS model for Pregnancy history for one pregnancy |
| [EHDSTravelHistory]({{ xtehr_models }}StructureDefinition-EHDSTravelHistory.html) | EHDS model for Relevant information about the patient's recent travel history, for one visit |
| [EHDSAdvanceDirective]({{ xtehr_models }}StructureDefinition-EHDSAdvanceDirective.html) | EHDS model for Healthcare directives concerning life or after life wishes of the patient |
| [EHDSObservation]({{ xtehr_models }}StructureDefinition-EHDSObservation.html) | EHDS refined base model for medical test results and other clinical observations |
| [EHDSCarePlan]({{ xtehr_models }}StructureDefinition-EHDSCarePlan.html) | EHDS simplified model for care plan. The model includes very minimal information and is not designed to cover the full functionality of care plans. |
| [EHDSLaboratoryObservation]({{ xtehr_models }}StructureDefinition-EHDSLaboratoryObservation.html) | EHDS refined base model for Observation performed by laboratory |

---



