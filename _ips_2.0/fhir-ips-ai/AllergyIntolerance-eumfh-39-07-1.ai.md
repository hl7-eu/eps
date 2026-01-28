# AllergyIntolerance - No Known Allergies - International Patient Summary Implementation Guide v2.0.0

## Example AllergyIntolerance: AllergyIntolerance - No Known Allergies

Language: en

Profile: [AllergyIntolerance (IPS)](StructureDefinition-AllergyIntolerance-uv-ips.md)

**clinicalStatus**: Active

**verificationStatus**: Confirmed

**code**: No known allergy (situation)

**patient**: [Alexander Heig (inject 39-07)](Patient-eumfh-39-07.md)

**onset**: Absent because : unknown



## Resource Content

```json
{
  "resourceType" : "AllergyIntolerance",
  "id" : "eumfh-39-07-1",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/uv/ips/StructureDefinition/AllergyIntolerance-uv-ips"
    ]
  },
  "language" : "en",
  "clinicalStatus" : {
    "coding" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical",
        "code" : "active"
      }
    ]
  },
  "verificationStatus" : {
    "coding" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/allergyintolerance-verification",
        "code" : "confirmed"
      }
    ]
  },
  "code" : {
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "code" : "716186003",
        "display" : "No known allergy (situation)"
      }
    ]
  },
  "patient" : {
    "reference" : "Patient/eumfh-39-07",
    "display" : "Alexander Heig (inject 39-07)"
  },
  "_onsetDateTime" : {
    "extension" : [
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/data-absent-reason",
        "valueCode" : "unknown"
      }
    ]
  }
}

```
