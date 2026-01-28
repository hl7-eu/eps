# DiagnosticReport - Hemoglobin - International Patient Summary Implementation Guide v2.0.0

## Example DiagnosticReport: DiagnosticReport - Hemoglobin

Language: en

Profile: [DiagnosticReport (IPS)](StructureDefinition-DiagnosticReport-uv-ips.md)

## Laboratory report (Laboratory ) 

| | |
| :--- | :--- |
| Subject | Alexander Heig Male, DoB: 1957 ( http://trilliumbridge.eu/fhir/demos/eumfh/inject#39-07) |
| When For | 2017-11-10 |
| Reported | 2017-11-10 08:20:00+0100 |
| Performer | [Someplace General Hospital](Organization-TII-Organization1.md) |

**Report Details**

* **Code**: [Hemoglobin A1c/Hemoglobin.total in Blood by HPLC](Observation-hemoglobin.md)
  * **Value**: 7.5 %(Details: UCUM code% = '%')
  * **Flags**: Final
  * **Note**: > Above stated goal of 7.0 %
  * **When For**: 2017-11-10 08:20:00+0100



## Resource Content

```json
{
  "resourceType" : "DiagnosticReport",
  "id" : "hemoglobin",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/uv/ips/StructureDefinition/DiagnosticReport-uv-ips"
    ]
  },
  "language" : "en",
  "status" : "final",
  "category" : [
    {
      "coding" : [
        {
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0074",
          "code" : "LAB",
          "display" : "Laboratory"
        }
      ]
    }
  ],
  "code" : {
    "coding" : [
      {
        "system" : "http://loinc.org",
        "code" : "11502-2",
        "display" : "Laboratory report"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/eumfh-39-07"
  },
  "effectiveDateTime" : "2017-11-10",
  "issued" : "2017-11-10T08:20:00+01:00",
  "performer" : [
    {
      "reference" : "Organization/TII-Organization1",
      "display" : "Someplace General Hospital"
    }
  ],
  "result" : [
    {
      "reference" : "Observation/hemoglobin",
      "display" : "Above stated goal of 7.0 %"
    }
  ]
}

```
