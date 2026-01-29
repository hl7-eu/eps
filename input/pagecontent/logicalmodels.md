### EHDS Logical Data Models

Logical data models (or information models) for the **European Health Data Space (EHDS)** are **currently being developed** by the [**Xt-EHR Joint Action**](https://www.xt-ehr.eu/). These models will form the **basis of the Joint Action's proposal** for the future EHDS Implementing Act.

They represent **evolving, refined interpretations** of the data sets described in the [**eHealth Network (eHN) Guidelines**](https://health.ec.europa.eu/ehealth-digital-health-and-care/digital-health-and-care/eu-cooperation/ehealth-network_en#ehealth-network-guidelines), and are expected to be further updated during the Joint Action process.

This Implementation Guide (IG) aims to **align with the emerging EHDS logical models** and to **provide HL7 FHIR profiles** that **realise the requirements identified in these models**.

The EHDS logical models currently supported in this version of the guide are listed below.
For the most recent and in-progress versions, please refer to the [**Xt-EHR EHDS Logical Information Models**](https://build.fhir.org/ig/Xt-EHR/xt-ehr-common) Implementation Guide.


<div class="model-map-block">
      <div class="callout-wrapper">
      <div class="callout-box">
        <strong>Ongoing alignment:</strong>
            The Xt-EHR logical models are under active revision and continuous refinement.
            Updates from Xt-EHR will be progressively incorporated into this Implementation
            Guide to maintain alignment with the evolving EHDS specifications.
      </div>
      </div>
</div>

---

### Xt-EHR Logical Models

#### Patient Summary

| **Model**     | **Description**       |
| ------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------ |
| [EHDSPatientSummary](https://www.xt-ehr.eu/fhir/models/StructureDefinition-EHDSPatientSummary.html)  | EHDS refined base model for Patient Summary       |

---

#### Common Models used by the Patient Summary

| **Model** | **Description** |
| --- | --- |
| [EHDSPatient](https://www.xt-ehr.eu/fhir/models/StructureDefinition-EHDSPatient.html) | EHDS refined base model for Patient (subject of care) |
| [EHDSHealthProfessional](https://www.xt-ehr.eu/fhir/models/StructureDefinition-EHDSHealthProfessional.html) | EHDS refined base model for Health Professional |
| [EHDSOrganisation](https://www.xt-ehr.eu/fhir/models/StructureDefinition-EHDSOrganisation.html) | EHDS refined base model for healthcare organisations and providers |
| [EHDSAttachment](https://www.xt-ehr.eu/fhir/models/StructureDefinition-EHDSAttachment.html) | EHDS refined base model for containing or referencing attachments. |
| [EHDSDevice](https://www.xt-ehr.eu/fhir/models/StructureDefinition-EHDSDevice.html) | EHDS refined base model for Device information |
| [EHDSAllergyIntolerance](https://www.xt-ehr.eu/fhir/models/StructureDefinition-EHDSAllergyIntolerance.html) | EHDS refined base model for allergy or intolerance information |
| [EHDSAlert](https://www.xt-ehr.eu/fhir/models/StructureDefinition-EHDSAlert.html) | EHDS refined base model for clinical alerts |
| [EHDSCondition](https://www.xt-ehr.eu/fhir/models/StructureDefinition-EHDSCondition.html) | EHDS refined base model for a clinical condition, problem, diagnosis, or other event, situation, issue, or clinical concept that has risen to a level of concern |
| [EHDSMedicationStatement](https://www.xt-ehr.eu/fhir/models/StructureDefinition-EHDSMedicationStatement.html) | Statement about a single medication as part of a medication summary |
| [EHDSProcedure](https://www.xt-ehr.eu/fhir/models/StructureDefinition-EHDSProcedure.html) | EHDS refined base model for an action that is or was performed on or for a patient |
| [EHDSImmunisation](https://www.xt-ehr.eu/fhir/models/StructureDefinition-EHDSImmunisation.html) | EHDS refined base model for immunisation |
| [EHDSDeviceUse](https://www.xt-ehr.eu/fhir/models/StructureDefinition-EHDSDeviceUse.html) | EHDS refined base model for device use information |
| [EHDSFunctionalStatus](https://www.xt-ehr.eu/fhir/models/StructureDefinition-EHDSFunctionalStatus.html) | EHDS refined base model for Functional status |
| [EHDSSocialHistory](https://www.xt-ehr.eu/fhir/models/StructureDefinition-EHDSSocialHistory.html) | EHDS model for social history observations |
| [EHDSCurrentPregnancy](https://www.xt-ehr.eu/fhir/models/StructureDefinition-EHDSCurrentPregnancy.html) | EHDS model for current pregnancy status |
| [EHDSPregnancyHistory](https://www.xt-ehr.eu/fhir/models/StructureDefinition-EHDSPregnancyHistory.html) | EHDS model for Pregnancy history for one pregnancy |
| [EHDSTravelHistory](https://www.xt-ehr.eu/fhir/models/StructureDefinition-EHDSTravelHistory.html) | EHDS model for Relevant information about the patient's recent travel history, for one visit |
| [EHDSAdvanceDirective](https://www.xt-ehr.eu/fhir/models/StructureDefinition-EHDSAdvanceDirective.html) | EHDS model for Healthcare directives concerning life or after life wishes of the patient |
| [EHDSObservation](https://www.xt-ehr.eu/fhir/models/StructureDefinition-EHDSObservation.html) | EHDS refined base model for medical test results and other clinical observations |
| [EHDSCarePlan](https://www.xt-ehr.eu/fhir/models/StructureDefinition-EHDSCarePlan.html) | EHDS simplified model for care plan. The model includes very minimal information and is not designed to cover the full functionality of care plans. |
| [EHDSLaboratoryObservation](https://www.xt-ehr.eu/fhir/models/StructureDefinition-EHDSLaboratoryObservation.html) | EHDS refined base model for Observation performed by laboratory |

---



