# AllergyIntolerance - Multiple Codings - International Patient Summary Implementation Guide v2.0.0

## Example AllergyIntolerance: AllergyIntolerance - Multiple Codings

Language: en

Profile: [AllergyIntolerance (IPS)](StructureDefinition-AllergyIntolerance-uv-ips.md)

**clinicalStatus**: Active

**verificationStatus**: Confirmed

**code**: Penicillin

**patient**: [Marie Lux-Brennard Female, DoB: 1998-04-17 ( urn:oid:1.3.182.4.4#1998041799999)](Patient-66033.md)

**onset**: Absent because : unknown



## Resource Content

```json
{
  "resourceType" : "AllergyIntolerance",
  "id" : "allergyintolerance-multiple-codings",
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
        "code" : "764146007",
        "display" : "Penicillin"
      },
      {
        "system" : "http://www.whocc.no/atc",
        "code" : "J01CA",
        "display" : "Penicillins with extended spectrum"
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
