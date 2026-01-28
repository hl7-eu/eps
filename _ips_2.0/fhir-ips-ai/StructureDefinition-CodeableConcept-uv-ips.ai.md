# Codeable Concept (IPS) - International Patient Summary Implementation Guide v2.0.0

## Data Type Profile: Codeable Concept (IPS) 

 
This profile represents the constraint applied to the CodeableConcept data type by the International Patient Summary (IPS) FHIR Implementation Guide to use the Coding-uv-ips data type profile. 

**Usages:**

* Use this DataType Profile: [AllergyIntolerance (IPS)](StructureDefinition-AllergyIntolerance-uv-ips.md), [Composition (IPS)](StructureDefinition-Composition-uv-ips.md), [Condition (IPS)](StructureDefinition-Condition-uv-ips.md), [Device (IPS)](StructureDefinition-Device-uv-ips.md)...Show 16 more,[DiagnosticReport (IPS)](StructureDefinition-DiagnosticReport-uv-ips.md),[Flag - Alert (IPS)](StructureDefinition-Flag-alert-uv-ips.md),[ImagingStudy (IPS)](StructureDefinition-ImagingStudy-uv-ips.md),[Immunization (IPS)](StructureDefinition-Immunization-uv-ips.md),[Medication (IPS)](StructureDefinition-Medication-uv-ips.md),[MedicationRequest (IPS)](StructureDefinition-MedicationRequest-uv-ips.md),[MedicationStatement (IPS)](StructureDefinition-MedicationStatement-uv-ips.md),[Observation Social History - Alcohol Use (IPS)](StructureDefinition-Observation-alcoholuse-uv-ips.md),[Observation Pregnancy - Expected Delivery Date (IPS)](StructureDefinition-Observation-pregnancy-edd-uv-ips.md),[Observation Pregnancy - Outcome (IPS)](StructureDefinition-Observation-pregnancy-outcome-uv-ips.md),[Observation Pregnancy - Status (IPS)](StructureDefinition-Observation-pregnancy-status-uv-ips.md),[Observation Results - Laboratory/Pathology (IPS)](StructureDefinition-Observation-results-laboratory-pathology-uv-ips.md),[Observation Results - Radiology (IPS)](StructureDefinition-Observation-results-radiology-uv-ips.md),[Observation Social History - Tobacco Use (IPS)](StructureDefinition-Observation-tobaccouse-uv-ips.md),[Procedure (IPS)](StructureDefinition-Procedure-uv-ips.md)and[Specimen (IPS)](StructureDefinition-Specimen-uv-ips.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.uv.ips|current/StructureDefinition/CodeableConcept-uv-ips)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-CodeableConcept-uv-ips.csv), [Excel](../StructureDefinition-CodeableConcept-uv-ips.xlsx), [Schematron](../StructureDefinition-CodeableConcept-uv-ips.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "CodeableConcept-uv-ips",
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
  "url" : "http://hl7.org/fhir/uv/ips/StructureDefinition/CodeableConcept-uv-ips",
  "version" : "2.0.0",
  "name" : "CodeableConceptIPS",
  "title" : "Codeable Concept (IPS)",
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
  "description" : "This profile represents the constraint applied to the CodeableConcept data type by the International Patient Summary (IPS) FHIR Implementation Guide to use the Coding-uv-ips data type profile.",
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
      "identity" : "orim",
      "uri" : "http://hl7.org/orim",
      "name" : "Ontological RIM Mapping"
    }
  ],
  "kind" : "complex-type",
  "abstract" : false,
  "type" : "CodeableConcept",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/CodeableConcept",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "CodeableConcept.coding",
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
          }
        ],
        "path" : "CodeableConcept.coding",
        "type" : [
          {
            "code" : "Coding",
            "profile" : [
              "http://hl7.org/fhir/uv/ips/StructureDefinition/Coding-uv-ips"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "CodeableConcept.text",
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-translatable",
            "valueBoolean" : true
          },
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
        "path" : "CodeableConcept.text",
        "mustSupport" : true
      },
      {
        "id" : "CodeableConcept.text.extension",
        "path" : "CodeableConcept.text.extension",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "url"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        }
      },
      {
        "id" : "CodeableConcept.text.extension:translation",
        "path" : "CodeableConcept.text.extension",
        "sliceName" : "translation",
        "short" : "Language Translation (Localization)",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hl7.org/fhir/StructureDefinition/translation|5.3.0-ballot-tc1"
            ]
          }
        ]
      }
    ]
  }
}

```
