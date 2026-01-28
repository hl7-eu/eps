# Practitioner (IPS) - International Patient Summary Implementation Guide v2.0.0

## Resource Profile: Practitioner (IPS) 

 
This profile constrains the practitioner resource to represent a practitioner acting as observer for these imaging results. 

**Usages:**

* Use this Profile: [Bundle (IPS)](StructureDefinition-Bundle-uv-ips.md)
* Refer to this Profile: [DiagnosticReport (IPS)](StructureDefinition-DiagnosticReport-uv-ips.md), [Observation Results - Laboratory/Pathology (IPS)](StructureDefinition-Observation-results-laboratory-pathology-uv-ips.md), [Observation Results - Radiology (IPS)](StructureDefinition-Observation-results-radiology-uv-ips.md), [PractitionerRole (IPS)](StructureDefinition-PractitionerRole-uv-ips.md) and [Procedure (IPS)](StructureDefinition-Procedure-uv-ips.md)
* Examples for this Profile: [Practitioner/eumfh-39-07](Practitioner-eumfh-39-07.md)
* CapabilityStatements using this Profile: [IPS Server Capability Statement](CapabilityStatement-ips-server.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.uv.ips|current/StructureDefinition/Practitioner-uv-ips)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-Practitioner-uv-ips.csv), [Excel](../StructureDefinition-Practitioner-uv-ips.xlsx), [Schematron](../StructureDefinition-Practitioner-uv-ips.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "Practitioner-uv-ips",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg",
      "valueCode" : "pc"
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
      "valueInteger" : 3,
      "_valueInteger" : {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-conformance-derivedFrom",
            "valueCanonical" : "http://hl7.org/fhir/uv/ips/ImplementationGuide/hl7.fhir.uv.ips"
          }
        ]
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status",
      "valueCode" : "trial-use",
      "_valueCode" : {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-conformance-derivedFrom",
            "valueCanonical" : "http://hl7.org/fhir/uv/ips/ImplementationGuide/hl7.fhir.uv.ips"
          }
        ]
      }
    }
  ],
  "url" : "http://hl7.org/fhir/uv/ips/StructureDefinition/Practitioner-uv-ips",
  "version" : "2.0.0",
  "name" : "PractitionerUvIps",
  "title" : "Practitioner (IPS)",
  "status" : "active",
  "date" : "2024-06-19T10:50:07-05:00",
  "publisher" : "HL7 International / Patient Care",
  "contact" : [
    {
      "name" : "HL7 International / Patient Care",
      "telecom" : [
        {
          "system" : "url",
          "value" : "http://www.hl7.org/Special/committees/patientcare"
        }
      ]
    }
  ],
  "description" : "This profile constrains the practitioner resource to represent a practitioner acting as observer for these imaging results.",
  "jurisdiction" : [
    {
      "coding" : [
        {
          "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
          "code" : "001",
          "display" : "World"
        }
      ]
    }
  ],
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "servd",
      "uri" : "http://www.omg.org/spec/ServD/1.0/",
      "name" : "ServD"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Practitioner",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Practitioner",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Practitioner.name",
        "extension" : [
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:populate-if-known"
              },
              {
                "url" : "actor",
                "valueCanonical" : "http://hl7.org/fhir/uv/ips/ActorDefinition/Creator"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          },
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:handle"
              },
              {
                "url" : "actor",
                "valueCanonical" : "http://hl7.org/fhir/uv/ips/ActorDefinition/Consumer"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          },
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHOULD:display"
              },
              {
                "url" : "actor",
                "valueCanonical" : "http://hl7.org/fhir/uv/ips/ActorDefinition/Consumer"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          }
        ],
        "path" : "Practitioner.name",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Practitioner.name.family",
        "extension" : [
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:populate-if-known"
              },
              {
                "url" : "actor",
                "valueCanonical" : "http://hl7.org/fhir/uv/ips/ActorDefinition/Creator"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          },
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:handle"
              },
              {
                "url" : "actor",
                "valueCanonical" : "http://hl7.org/fhir/uv/ips/ActorDefinition/Consumer"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          },
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHOULD:display"
              },
              {
                "url" : "actor",
                "valueCanonical" : "http://hl7.org/fhir/uv/ips/ActorDefinition/Consumer"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          }
        ],
        "path" : "Practitioner.name.family",
        "mustSupport" : true
      },
      {
        "id" : "Practitioner.name.given",
        "extension" : [
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:populate-if-known"
              },
              {
                "url" : "actor",
                "valueCanonical" : "http://hl7.org/fhir/uv/ips/ActorDefinition/Creator"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          },
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:handle"
              },
              {
                "url" : "actor",
                "valueCanonical" : "http://hl7.org/fhir/uv/ips/ActorDefinition/Consumer"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          },
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHOULD:display"
              },
              {
                "url" : "actor",
                "valueCanonical" : "http://hl7.org/fhir/uv/ips/ActorDefinition/Consumer"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          }
        ],
        "path" : "Practitioner.name.given",
        "mustSupport" : true
      },
      {
        "id" : "Practitioner.telecom",
        "extension" : [
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:populate-if-known"
              },
              {
                "url" : "actor",
                "valueCanonical" : "http://hl7.org/fhir/uv/ips/ActorDefinition/Creator"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          },
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:handle"
              },
              {
                "url" : "actor",
                "valueCanonical" : "http://hl7.org/fhir/uv/ips/ActorDefinition/Consumer"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          },
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHOULD:display"
              },
              {
                "url" : "actor",
                "valueCanonical" : "http://hl7.org/fhir/uv/ips/ActorDefinition/Consumer"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          }
        ],
        "path" : "Practitioner.telecom",
        "mustSupport" : true
      },
      {
        "id" : "Practitioner.address",
        "extension" : [
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:populate-if-known"
              },
              {
                "url" : "actor",
                "valueCanonical" : "http://hl7.org/fhir/uv/ips/ActorDefinition/Creator"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          },
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:handle"
              },
              {
                "url" : "actor",
                "valueCanonical" : "http://hl7.org/fhir/uv/ips/ActorDefinition/Consumer"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          },
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHOULD:display"
              },
              {
                "url" : "actor",
                "valueCanonical" : "http://hl7.org/fhir/uv/ips/ActorDefinition/Consumer"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          }
        ],
        "path" : "Practitioner.address",
        "mustSupport" : true
      }
    ]
  }
}

```
