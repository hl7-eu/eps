# Observation: urine wbc range example - International Patient Summary Implementation Guide v2.0.0

## Example Observation: Observation: urine wbc range example

Language: en

Profile: [Observation Results - Laboratory/Pathology (IPS)](StructureDefinition-Observation-results-laboratory-pathology-uv-ips.md)

**status**: Final

**category**: Laboratory

**code**: Leukocytes [#/area] in Urine sediment by Microscopy high power field

**subject**: [Marie Lux-Brennard Female, DoB: 1998-04-17 ( urn:oid:1.3.182.4.4#1998041799999)](Patient-66033.md)

**effective**: 2018-02-16 09:17:00+0100

**performer**: [Organization Someplace General Hospital](Organization-TII-Organization1.md)

**value**: 10 per HPF(Details: UCUM code/[HPF] = '/[HPF]')

**interpretation**: High

### ReferenceRanges

| | | |
| :--- | :--- | :--- |
| - | **High** | **Type** |
| * | 5 per HPF(Details: UCUM code/[HPF] = '/[HPF]') | Normal Range |



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "urine-wbc-range",
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
        "code" : "5821-4",
        "display" : "Leukocytes [#/area] in Urine sediment by Microscopy high power field"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/66033"
  },
  "effectiveDateTime" : "2018-02-16T09:17:00+01:00",
  "performer" : [
    {
      "reference" : "Organization/TII-Organization1"
    }
  ],
  "valueQuantity" : {
    "value" : 10,
    "unit" : "per HPF",
    "system" : "http://unitsofmeasure.org",
    "code" : "/[HPF]"
  },
  "interpretation" : [
    {
      "coding" : [
        {
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
          "code" : "H"
        }
      ]
    }
  ],
  "referenceRange" : [
    {
      "high" : {
        "value" : 5,
        "unit" : "per HPF",
        "system" : "http://unitsofmeasure.org",
        "code" : "/[HPF]"
      },
      "type" : {
        "coding" : [
          {
            "system" : "http://terminology.hl7.org/CodeSystem/referencerange-meaning",
            "code" : "normal",
            "display" : "Normal Range"
          }
        ]
      }
    }
  ]
}

```
