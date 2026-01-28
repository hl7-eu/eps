# Observation: estrogen receptor in tissue example - International Patient Summary Implementation Guide v2.0.0

## Example Observation: Observation: estrogen receptor in tissue example

Language: en

Profile: [Observation Results - Laboratory/Pathology (IPS)](StructureDefinition-Observation-results-laboratory-pathology-uv-ips.md)

**status**: Final

**category**: Laboratory

**code**: Estrogen receptor [Interpretation] in Tissue

**subject**: [Alexander Heig Male, DoB: 1957 ( http://trilliumbridge.eu/fhir/demos/eumfh/inject#39-07)](Patient-eumfh-39-07.md)

**effective**: 2020-04-22 19:20:00+0200

**performer**: [Organization Someplace General Hospital](Organization-TII-Organization1.md)

**value**: Estrogen receptor positive tumor

**method**: Microscopy



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "pathology-cancer",
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
        "system" : "http://loinc.org",
        "code" : "16112-5",
        "display" : "Estrogen receptor [Interpretation] in Tissue"
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
  "valueCodeableConcept" : {
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "code" : "416053008",
        "display" : "Estrogen receptor positive tumor"
      }
    ]
  },
  "method" : {
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "code" : "117259009",
        "display" : "Microscopy"
      }
    ]
  }
}

```
