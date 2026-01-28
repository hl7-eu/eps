# Observation: imaging CT Abdomen W contrast IV - International Patient Summary Implementation Guide v2.0.0

## Example Observation: Observation: imaging CT Abdomen W contrast IV

Language: en

Profile: [Observation Results - Radiology (IPS)](StructureDefinition-Observation-results-radiology-uv-ips.md)

**status**: Final

**category**: Imaging

**code**: Upper abdomen with the administration of oral and intravenous contrast (example-4)

**subject**: [Alexander Heig Male, DoB: 1957 ( http://trilliumbridge.eu/fhir/demos/eumfh/inject#39-07)](Patient-eumfh-39-07.md)

**effective**: 1995-06-08

**performer**: 

* [Practitioner Mark Antonio](Practitioner-eumfh-39-07.md)
* [Organization Someplace General Hospital](Organization-TII-Organization1.md)

**value**: 3 cm nodule present in the inferior medial aspect of right liver lobe. Contrast enhancement pattern consistent with the diagnosis of hemangioma.



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "ips-example-imaging-1",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-results-radiology-uv-ips"
    ]
  },
  "language" : "en",
  "status" : "final",
  "category" : [
    {
      "coding" : [
        {
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "imaging",
          "display" : "Imaging"
        }
      ]
    }
  ],
  "code" : {
    "coding" : [
      {
        "system" : "http://loinc.org",
        "code" : "79103-8",
        "display" : "CT Abdomen W contrast IV"
      }
    ],
    "text" : "Upper abdomen with the administration of oral and intravenous contrast (example-4)"
  },
  "subject" : {
    "reference" : "Patient/eumfh-39-07"
  },
  "effectiveDateTime" : "1995-06-08",
  "performer" : [
    {
      "reference" : "Practitioner/eumfh-39-07"
    },
    {
      "reference" : "Organization/TII-Organization1"
    }
  ],
  "valueString" : "3 cm nodule present in the inferior medial aspect of right liver lobe. Contrast enhancement pattern consistent with the diagnosis of hemangioma."
}

```
