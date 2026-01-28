# Procedure: Surgical procedure - International Patient Summary Implementation Guide v2.0.0

## Example Procedure: Procedure: Surgical procedure

Language: en

Profile: [Procedure (IPS)](StructureDefinition-Procedure-uv-ips.md)

**status**: Completed

**category**: Surgical procedure

**code**: Previous balloon angioplasty on mid-LAD stenosis with STENT Implantation

**subject**: [Alexander Heig (inject 39-07)](Patient-eumfh-39-07.md)

**performed**: Absent because : unknown



## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "eumfh-39-07-1",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/uv/ips/StructureDefinition/Procedure-uv-ips"
    ]
  },
  "language" : "en",
  "status" : "completed",
  "category" : {
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "code" : "387713003",
        "display" : "Surgical procedure"
      }
    ]
  },
  "code" : {
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "code" : "36969009",
        "display" : "Placement of stent in coronary artery"
      },
      {
        "system" : "http://snomed.info/sct",
        "code" : "233258006",
        "display" : "Arterial angioplasty"
      }
    ],
    "text" : "Previous balloon angioplasty on mid-LAD stenosis with STENT Implantation"
  },
  "subject" : {
    "reference" : "Patient/eumfh-39-07",
    "display" : "Alexander Heig (inject 39-07)"
  },
  "_performedDateTime" : {
    "extension" : [
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/data-absent-reason",
        "valueCode" : "unknown"
      }
    ]
  }
}

```
