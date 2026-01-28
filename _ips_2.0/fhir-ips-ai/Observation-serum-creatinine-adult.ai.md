# Observation: serum creatinine example - International Patient Summary Implementation Guide v2.0.0

## Example Observation: Observation: serum creatinine example

Language: en

Profile: [Observation Results - Laboratory/Pathology (IPS)](StructureDefinition-Observation-results-laboratory-pathology-uv-ips.md)

**status**: Final

**category**: Laboratory

**code**: Creatinine [Mass/volume] in Serum or Plasma

**subject**: [Alexander Heig Male, DoB: 1957 ( http://trilliumbridge.eu/fhir/demos/eumfh/inject#39-07)](Patient-eumfh-39-07.md)

**effective**: 2018-02-16 09:17:00+0100

**performer**: [Organization Someplace General Hospital](Organization-TII-Organization1.md)

**value**: 2.46 mg/dL(Details: UCUM codemg/dL = 'mg/dL')

**interpretation**: High

> **referenceRange****low**: 0.76 mg/dL(Details: UCUM codemg/dL = 'mg/dL')**high**: 1.27 mg/dL(Details: UCUM codemg/dL = 'mg/dL')**type**:Normal Range**appliesTo**:Male**age**: 15-? yrs

> **referenceRange****low**: 0.57 mg/dL(Details: UCUM codemg/dL = 'mg/dL')**high**: 1 mg/dL(Details: UCUM codemg/dL = 'mg/dL')**type**:Normal Range**appliesTo**:Female**age**: 15-? yrs



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "serum-creatinine-adult",
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
        "code" : "2160-0",
        "display" : "Creatinine [Mass/volume] in Serum or Plasma"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/eumfh-39-07"
  },
  "effectiveDateTime" : "2018-02-16T09:17:00+01:00",
  "performer" : [
    {
      "reference" : "Organization/TII-Organization1"
    }
  ],
  "valueQuantity" : {
    "value" : 2.46,
    "unit" : "mg/dL",
    "system" : "http://unitsofmeasure.org",
    "code" : "mg/dL"
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
      "low" : {
        "value" : 0.76,
        "unit" : "mg/dL",
        "system" : "http://unitsofmeasure.org",
        "code" : "mg/dL"
      },
      "high" : {
        "value" : 1.27,
        "unit" : "mg/dL",
        "system" : "http://unitsofmeasure.org",
        "code" : "mg/dL"
      },
      "type" : {
        "coding" : [
          {
            "system" : "http://terminology.hl7.org/CodeSystem/referencerange-meaning",
            "code" : "normal",
            "display" : "Normal Range"
          }
        ]
      },
      "appliesTo" : [
        {
          "coding" : [
            {
              "system" : "http://snomed.info/sct",
              "code" : "248153007",
              "display" : "Male"
            }
          ]
        }
      ],
      "age" : {
        "low" : {
          "value" : 15,
          "unit" : "yrs",
          "system" : "http://unitsofmeasure.org",
          "code" : "a"
        }
      }
    },
    {
      "low" : {
        "value" : 0.57,
        "unit" : "mg/dL",
        "system" : "http://unitsofmeasure.org",
        "code" : "mg/dL"
      },
      "high" : {
        "value" : 1,
        "unit" : "mg/dL",
        "system" : "http://unitsofmeasure.org",
        "code" : "mg/dL"
      },
      "type" : {
        "coding" : [
          {
            "system" : "http://terminology.hl7.org/CodeSystem/referencerange-meaning",
            "code" : "normal",
            "display" : "Normal Range"
          }
        ]
      },
      "appliesTo" : [
        {
          "coding" : [
            {
              "system" : "http://snomed.info/sct",
              "code" : "248152002",
              "display" : "Female"
            }
          ]
        }
      ],
      "age" : {
        "low" : {
          "value" : 15,
          "unit" : "yrs",
          "system" : "http://unitsofmeasure.org",
          "code" : "a"
        }
      }
    }
  ]
}

```
