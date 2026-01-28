# Condition - Acute Myeloid Leukemia - International Patient Summary Implementation Guide v2.0.0

## Example Condition: Condition - Acute Myeloid Leukemia

Language: en

Profile: [Condition (IPS)](StructureDefinition-Condition-uv-ips.md)

**clinicalStatus**: Active

**category**: Problem

**code**: Acute myeloid leukemia

**subject**: [Alexander Heig (inject 39-07)](Patient-eumfh-39-07.md)

**onset**: 2014

**asserter**: [Dr. Mark Antonio](Practitioner-eumfh-39-07.md)



## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "eumfh-39-07-1",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/uv/ips/StructureDefinition/Condition-uv-ips"
    ]
  },
  "language" : "en",
  "clinicalStatus" : {
    "coding" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
        "code" : "active"
      }
    ]
  },
  "category" : [
    {
      "coding" : [
        {
          "system" : "http://loinc.org",
          "code" : "75326-9",
          "display" : "Problem"
        }
      ]
    }
  ],
  "code" : {
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "code" : "91861009",
        "display" : "Acute myeloid leukemia"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/eumfh-39-07",
    "display" : "Alexander Heig (inject 39-07)"
  },
  "onsetDateTime" : "2014",
  "asserter" : {
    "reference" : "Practitioner/eumfh-39-07",
    "display" : "Dr. Mark Antonio"
  }
}

```
