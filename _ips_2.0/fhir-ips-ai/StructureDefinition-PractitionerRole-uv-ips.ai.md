# PractitionerRole (IPS) - International Patient Summary Implementation Guide v2.0.0

## Resource Profile: PractitionerRole (IPS) 

 
This profile constrains the PractitionerRole resource to represent a practitioner acting as observer for observation results for a specified organization. 

**Usages:**

* Use this Profile: [Bundle (IPS)](StructureDefinition-Bundle-uv-ips.md)
* Refer to this Profile: [DiagnosticReport (IPS)](StructureDefinition-DiagnosticReport-uv-ips.md), [Observation Results - Laboratory/Pathology (IPS)](StructureDefinition-Observation-results-laboratory-pathology-uv-ips.md), [Observation Results - Radiology (IPS)](StructureDefinition-Observation-results-radiology-uv-ips.md) and [Procedure (IPS)](StructureDefinition-Procedure-uv-ips.md)
* Examples for this Profile: [PractitionerRole/simple-pr](PractitionerRole-simple-pr.md)
* CapabilityStatements using this Profile: [IPS Server Capability Statement](CapabilityStatement-ips-server.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.uv.ips|current/StructureDefinition/PractitionerRole-uv-ips)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-PractitionerRole-uv-ips.csv), [Excel](../StructureDefinition-PractitionerRole-uv-ips.xlsx), [Schematron](../StructureDefinition-PractitionerRole-uv-ips.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "PractitionerRole-uv-ips",
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
  "url" : "http://hl7.org/fhir/uv/ips/StructureDefinition/PractitionerRole-uv-ips",
  "version" : "2.0.0",
  "name" : "PractitionerRoleUvIps",
  "title" : "PractitionerRole (IPS)",
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
  "description" : "This profile constrains the PractitionerRole resource to represent a practitioner acting as observer for observation results for a specified organization.",
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
  "type" : "PractitionerRole",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/PractitionerRole",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "PractitionerRole.practitioner",
        "path" : "PractitionerRole.practitioner",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://hl7.org/fhir/uv/ips/StructureDefinition/Practitioner-uv-ips"
            ]
          }
        ]
      },
      {
        "id" : "PractitionerRole.organization",
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
        "path" : "PractitionerRole.organization",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://hl7.org/fhir/uv/ips/StructureDefinition/Organization-uv-ips"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "PractitionerRole.code",
        "path" : "PractitionerRole.code",
        "binding" : {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName",
              "valueString" : "HealthcareProfessionalRoles"
            }
          ],
          "strength" : "preferred",
          "description" : "Healthcare professional role codes from International Standard Classification of Occupations (ISCO).",
          "valueSet" : "http://hl7.org/fhir/uv/ips/ValueSet/healthcare-professional-roles-uv-ips"
        }
      }
    ]
  }
}

```
