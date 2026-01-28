# Observation: pathology suppressed example - International Patient Summary Implementation Guide v2.0.0

## Example Observation: Observation: pathology suppressed example

Language: en

Profile: [Observation Results - Laboratory/Pathology (IPS)](StructureDefinition-Observation-results-laboratory-pathology-uv-ips.md)

**status**: Final

**category**: Laboratory

**code**: Masked

**subject**: [Alexander Heig Male, DoB: 1957 ( http://trilliumbridge.eu/fhir/demos/eumfh/inject#39-07)](Patient-eumfh-39-07.md)

**effective**: 2020-04-22 19:20:00+0200

**performer**: [Organization Someplace General Hospital](Organization-TII-Organization1.md)

**dataAbsentReason**: Masked



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "pathology-suppressed-data",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-results-laboratory-pathology-uv-ips"
    ]
  },
  "language" : "en",
  "status" : "final",
  "category" : [
    {
      "coding" : [
        {
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }
      ]
    }
  ],
  "code" : {
    "coding" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/data-absent-reason",
        "code" : "masked"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/eumfh-39-07"
  },
  "effectiveDateTime" : "2020-04-22T19:20:00+02:00",
  "performer" : [
    {
      "reference" : "Organization/TII-Organization1"
    }
  ],
  "dataAbsentReason" : {
    "coding" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/data-absent-reason",
        "code" : "masked"
      }
    ]
  }
}

```
