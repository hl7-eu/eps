# Observation: hemoglobin example - International Patient Summary Implementation Guide v2.0.0

## Example Observation: Observation: hemoglobin example

Language: en

Profile: [Observation Results - Laboratory/Pathology (IPS)](StructureDefinition-Observation-results-laboratory-pathology-uv-ips.md)

**status**: Final

**category**: Laboratory

**code**: Hemoglobin A1c/Hemoglobin.total in Blood by HPLC

**subject**: [Alexander Heig Male, DoB: 1957 ( http://trilliumbridge.eu/fhir/demos/eumfh/inject#39-07)](Patient-eumfh-39-07.md)

**effective**: 2017-11-10 08:20:00+0100

**performer**: [Organization Someplace General Hospital](Organization-TII-Organization1.md)

**value**: 7.5 %(Details: UCUM code% = '%')

**note**: 

> 

Above stated goal of 7.0 %




## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "hemoglobin",
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
        "code" : "17856-6",
        "display" : "Hemoglobin A1c/Hemoglobin.total in Blood by HPLC"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/eumfh-39-07"
  },
  "effectiveDateTime" : "2017-11-10T08:20:00+01:00",
  "performer" : [
    {
      "reference" : "Organization/TII-Organization1"
    }
  ],
  "valueQuantity" : {
    "value" : 7.5,
    "unit" : "%",
    "system" : "http://unitsofmeasure.org",
    "code" : "%"
  },
  "note" : [
    {
      "text" : "Above stated goal of 7.0 %"
    }
  ]
}

```
