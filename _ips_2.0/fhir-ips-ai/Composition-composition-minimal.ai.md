# Composition - Minimal Sections - International Patient Summary Implementation Guide v2.0.0

## Example Composition: Composition - Minimal Sections

Language: en

Profile: [Composition (IPS)](StructureDefinition-Composition-uv-ips.md)

**status**: Final

**type**: Patient summary Document

**date**: 2020-12-11 14:30:00+0100

**author**: [Practitioner Mark Antonio](Practitioner-eumfh-39-07.md)

**title**: Patient Summary as of December 11, 2020 14:30

**confidentiality**: normal

> **attester****mode**: Legal**time**: 2020-12-11 14:30:00+0100**party**:[Practitioner Mark Antonio](Practitioner-eumfh-39-07.md)

> **attester****mode**: Legal**time**: 2020-12-11 14:30:00+0100**party**:[Organization Best Diagnostic Department](Organization-simple-org.md)

**custodian**: [Organization Best Diagnostic Department](Organization-simple-org.md)

### RelatesTos

| | | |
| :--- | :--- | :--- |
| - | **Code** | **Target[x]** |
| * | Appends | `urn:oid:2.16.724.4.8.10.200.10`/20e12ce3-857f-49c0-b888-cb670597f191 |

### Events

| | | |
| :--- | :--- | :--- |
| - | **Code** | **Period** |
| * | care provision | ?? --> 2020-12-11 14:30:00+0100 |



## Resource Content

```json
{
  "resourceType" : "Composition",
  "id" : "composition-minimal",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/uv/ips/StructureDefinition/Composition-uv-ips"
    ]
  },
  "language" : "en",
  "status" : "final",
  "type" : {
    "coding" : [
      {
        "system" : "http://loinc.org",
        "code" : "60591-5",
        "display" : "Patient summary Document"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/eumfh-39-07"
  },
  "date" : "2020-12-11T14:30:00+01:00",
  "author" : [
    {
      "reference" : "Practitioner/eumfh-39-07"
    }
  ],
  "title" : "Patient Summary as of December 11, 2020 14:30",
  "confidentiality" : "N",
  "attester" : [
    {
      "mode" : "legal",
      "time" : "2020-12-11T14:30:00+01:00",
      "party" : {
        "reference" : "Practitioner/eumfh-39-07"
      }
    },
    {
      "mode" : "legal",
      "time" : "2020-12-11T14:30:00+01:00",
      "party" : {
        "reference" : "Organization/simple-org"
      }
    }
  ],
  "custodian" : {
    "reference" : "Organization/simple-org"
  },
  "relatesTo" : [
    {
      "code" : "appends",
      "targetIdentifier" : {
        "system" : "urn:oid:2.16.724.4.8.10.200.10",
        "value" : "20e12ce3-857f-49c0-b888-cb670597f191"
      }
    }
  ],
  "event" : [
    {
      "code" : [
        {
          "coding" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/v3-ActClass",
              "code" : "PCPR"
            }
          ]
        }
      ],
      "period" : {
        "end" : "2020-12-11T14:30:00+01:00"
      }
    }
  ],
  "section" : [
    {
      "title" : "Active Problems",
      "code" : {
        "coding" : [
          {
            "system" : "http://loinc.org",
            "code" : "11450-4",
            "display" : "Problem list - Reported"
          }
        ]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><ul><li><div><b>Condition Name</b>: Acute myocardial infarction of anterior wall</div><div><b>Code</b>: <span>54329005</span></div><div><b>Status</b>: <span>Active</span></div></li></ul></div>"
      },
      "entry" : [
        {
          "reference" : "Condition/eumfh-39-07-1"
        }
      ]
    },
    {
      "title" : "Allergies and Intolerances",
      "code" : {
        "coding" : [
          {
            "system" : "http://loinc.org",
            "code" : "48765-2",
            "display" : "Allergies and adverse reactions Document"
          }
        ]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><ul><li><div><b>Allergy Name</b>: No known allergies</div><div><b>Verification Status</b>: Confirmed</div><div><b>Reaction</b>: <span>no information</span></div></li></ul></div>"
      },
      "entry" : [
        {
          "reference" : "AllergyIntolerance/eumfh-39-07-1"
        }
      ]
    },
    {
      "title" : "Medication",
      "code" : {
        "coding" : [
          {
            "system" : "http://loinc.org",
            "code" : "10160-0",
            "display" : "History of Medication use Narrative"
          }
        ]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><ul><li><div><b>Medication Name</b>: Simvastatin 40 MG Disintegrating Oral Tablet</div><div><b>Code</b>: <span>C10AA01</span></div><div><b>Status</b>: <span>Active, started 2014</span></div><div>Instructions: Take 40 mg/day</div></li></ul></div>"
      },
      "entry" : [
        {
          "reference" : "MedicationStatement/eumfh-39-07-1"
        }
      ]
    }
  ]
}

```
