# AllergyIntolerance - Resolved Allergy - International Patient Summary Implementation Guide v2.0.0

## Example AllergyIntolerance: AllergyIntolerance - Resolved Allergy

Language: en

Profile: [AllergyIntolerance (IPS)](StructureDefinition-AllergyIntolerance-uv-ips.md)

**Abatement**: 2010

**clinicalStatus**: Resolved

**verificationStatus**: Confirmed

**code**: Ragweed pollen

**patient**: [Marie Lux-Brennard Female, DoB: 1998-04-17 ( urn:oid:1.3.182.4.4#1998041799999)](Patient-66033.md)

**onset**: Absent because : unknown



## Resource Content

```json
{
  "resourceType" : "AllergyIntolerance",
  "id" : "allergyintolerance-with-abatement",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/uv/ips/StructureDefinition/AllergyIntolerance-uv-ips"
    ]
  },
  "language" : "en",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/allergyintolerance-abatement",
      "valueDateTime" : "2010"
    }
  ],
  "clinicalStatus" : {
    "coding" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical",
        "code" : "resolved"
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
        "code" : "256303006",
        "display" : "Ragweed pollen"
      }
    ]
  },
  "patient" : {
    "reference" : "Patient/66033"
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
