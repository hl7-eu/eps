# International Patient Summary Sections - Logical Model - International Patient Summary Implementation Guide v2.0.0

## Logical Model: International Patient Summary Sections - Logical Model 

 
International Patient Summary Sections - Logical Model 

**IPS FHIR Mappings to ISO 27269**
 The ISO 27269 2.0 release was not finalized at the time of this IPS FHIR Implementation Guide 2.0 release. Due to timing and intellectual property constraints, this model only represents a limited part of the ISO specification. The mappings between IPS and ISO 27269 are planned for future work and the content of this page should be considered preliminary. 

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.uv.ips|current/StructureDefinition/IPSSectionsLM)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-IPSSectionsLM.csv), [Excel](../StructureDefinition-IPSSectionsLM.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "IPSSectionsLM",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-be-target"
    },
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
  "url" : "http://hl7.org/fhir/uv/ips/StructureDefinition/IPSSectionsLM",
  "version" : "2.0.0",
  "name" : "IPSSectionsLM",
  "title" : "International Patient Summary Sections - Logical Model",
  "status" : "active",
  "date" : "2025-10-29T13:12:18+00:00",
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
  "description" : "International Patient Summary Sections - Logical Model",
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
      "identity" : "IpsSectionsToIso27269",
      "uri" : "ISO-27269_International_Patient_Summary",
      "name" : "IPS Sections To ISO 27269"
    }
  ],
  "kind" : "logical",
  "abstract" : false,
  "type" : "http://hl7.org/fhir/uv/ips/StructureDefinition/IPSSectionsLM",
  "baseDefinition" : "http://hl7.org/fhir/uv/ips/StructureDefinition/Document",
  "derivation" : "specialization",
  "differential" : {
    "element" : [
      {
        "id" : "IPSSectionsLM",
        "path" : "IPSSectionsLM",
        "short" : "International Patient Summary Sections - Logical Model",
        "definition" : "International Patient Summary Sections - Logical Model"
      },
      {
        "id" : "IPSSectionsLM.sectionProblems",
        "path" : "IPSSectionsLM.sectionProblems",
        "short" : "IPS Problems Section",
        "definition" : "IPS Problems Section",
        "comment" : "ISO 27269: Mandatory (Exceptions not allowed)",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "http://hl7.org/fhir/uv/ips/StructureDefinition/DocumentSection"
          }
        ],
        "mapping" : [
          {
            "identity" : "IpsSectionsToIso27269",
            "map" : "Problems [21]"
          }
        ]
      },
      {
        "id" : "IPSSectionsLM.sectionAllergies",
        "path" : "IPSSectionsLM.sectionAllergies",
        "short" : "IPS Allergies and Intolerances Section",
        "definition" : "IPS Allergies and Intolerances Section",
        "comment" : "ISO 27269: Mandatory (Exceptions not allowed)",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "http://hl7.org/fhir/uv/ips/StructureDefinition/DocumentSection"
          }
        ],
        "mapping" : [
          {
            "identity" : "IpsSectionsToIso27269",
            "map" : "Allergies and Intolerances [12]"
          }
        ]
      },
      {
        "id" : "IPSSectionsLM.sectionMedications",
        "path" : "IPSSectionsLM.sectionMedications",
        "short" : "IPS Medication Summary Section",
        "definition" : "IPS Medication Summary Section",
        "comment" : "ISO 27269: Mandatory (Exceptions not allowed)",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "http://hl7.org/fhir/uv/ips/StructureDefinition/DocumentSection"
          }
        ],
        "mapping" : [
          {
            "identity" : "IpsSectionsToIso27269",
            "map" : "Medication Summary [19]"
          }
        ]
      },
      {
        "id" : "IPSSectionsLM.sectionImmunizations",
        "path" : "IPSSectionsLM.sectionImmunizations",
        "short" : "IPS Immunizations Section",
        "definition" : "IPS Immunizations Section",
        "comment" : "ISO 27269: Required if known",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "http://hl7.org/fhir/uv/ips/StructureDefinition/DocumentSection"
          }
        ],
        "mapping" : [
          {
            "identity" : "IpsSectionsToIso27269",
            "map" : "Immunizations [17]"
          }
        ]
      },
      {
        "id" : "IPSSectionsLM.sectionResults",
        "path" : "IPSSectionsLM.sectionResults",
        "short" : "IPS Results Section",
        "definition" : "IPS Results Section",
        "comment" : "ISO 27269: Required if known",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "http://hl7.org/fhir/uv/ips/StructureDefinition/DocumentSection"
          }
        ],
        "mapping" : [
          {
            "identity" : "IpsSectionsToIso27269",
            "map" : "Results [22]"
          }
        ]
      },
      {
        "id" : "IPSSectionsLM.sectionProceduresHx",
        "path" : "IPSSectionsLM.sectionProceduresHx",
        "short" : "IPS History of Procedures Section",
        "definition" : "IPS History of Procedures Section",
        "comment" : "ISO 27269: Required if known",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "http://hl7.org/fhir/uv/ips/StructureDefinition/DocumentSection"
          }
        ],
        "mapping" : [
          {
            "identity" : "IpsSectionsToIso27269",
            "map" : "History of Procedures [16]"
          }
        ]
      },
      {
        "id" : "IPSSectionsLM.sectionMedicalDevices",
        "path" : "IPSSectionsLM.sectionMedicalDevices",
        "short" : "IPS Medical Devices Section",
        "definition" : "IPS Medical Devices Section",
        "comment" : "ISO 27269: Required if known",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "http://hl7.org/fhir/uv/ips/StructureDefinition/DocumentSection"
          }
        ],
        "mapping" : [
          {
            "identity" : "IpsSectionsToIso27269",
            "map" : "Medical Devices [18]"
          }
        ]
      },
      {
        "id" : "IPSSectionsLM.sectionAdvanceDirectives",
        "path" : "IPSSectionsLM.sectionAdvanceDirectives",
        "short" : "IPS Advance Directives Section",
        "definition" : "IPS Advance Directives Section",
        "comment" : "ISO 27269: Optional",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "http://hl7.org/fhir/uv/ips/StructureDefinition/DocumentSection"
          }
        ],
        "mapping" : [
          {
            "identity" : "IpsSectionsToIso27269",
            "map" : "Advance Directive [11]"
          }
        ]
      },
      {
        "id" : "IPSSectionsLM.sectionAlerts",
        "path" : "IPSSectionsLM.sectionAlerts",
        "short" : "IPS Alerts Section",
        "definition" : "IPS Alerts Section",
        "comment" : "ISO 27269: Required if known",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "http://hl7.org/fhir/uv/ips/StructureDefinition/DocumentSection"
          }
        ],
        "mapping" : [
          {
            "identity" : "IpsSectionsToIso27269",
            "map" : "Alerts [26]"
          }
        ]
      },
      {
        "id" : "IPSSectionsLM.sectionFunctionalStatus",
        "path" : "IPSSectionsLM.sectionFunctionalStatus",
        "short" : "IPS Functional Status",
        "definition" : "IPS Functional Status",
        "comment" : "ISO 27269: Optional",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "http://hl7.org/fhir/uv/ips/StructureDefinition/DocumentSection"
          }
        ],
        "mapping" : [
          {
            "identity" : "IpsSectionsToIso27269",
            "map" : "Functional Status [13]"
          }
        ]
      },
      {
        "id" : "IPSSectionsLM.sectionPastProblems",
        "path" : "IPSSectionsLM.sectionPastProblems",
        "short" : "IPS History of Past Problems Section",
        "definition" : "IPS History of Past Problems Section",
        "comment" : "ISO 27269: Optional",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "http://hl7.org/fhir/uv/ips/StructureDefinition/DocumentSection"
          }
        ],
        "mapping" : [
          {
            "identity" : "IpsSectionsToIso27269",
            "map" : "History of Past Problems [14]"
          }
        ]
      },
      {
        "id" : "IPSSectionsLM.sectionPregnancyHx",
        "path" : "IPSSectionsLM.sectionPregnancyHx",
        "short" : "History of Pregnancy",
        "definition" : "History of Pregnancy",
        "comment" : "ISO 27269: Optional",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "http://hl7.org/fhir/uv/ips/StructureDefinition/DocumentSection"
          }
        ],
        "mapping" : [
          {
            "identity" : "IpsSectionsToIso27269",
            "map" : "History of Pregnancy [15]"
          }
        ]
      },
      {
        "id" : "IPSSectionsLM.sectionPatientStory",
        "path" : "IPSSectionsLM.sectionPatientStory",
        "short" : "IPS Patient Story Section",
        "definition" : "IPS Patient Story Section",
        "comment" : "ISO 27269: Optional",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "http://hl7.org/fhir/uv/ips/StructureDefinition/DocumentSection"
          }
        ],
        "mapping" : [
          {
            "identity" : "IpsSectionsToIso27269",
            "map" : "Patient Story [27]"
          }
        ]
      },
      {
        "id" : "IPSSectionsLM.sectionPlanOfCare",
        "path" : "IPSSectionsLM.sectionPlanOfCare",
        "short" : "IPS Plan of Care Section",
        "definition" : "IPS Plan of Care Section",
        "comment" : "ISO 27269: Optional",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "http://hl7.org/fhir/uv/ips/StructureDefinition/DocumentSection"
          }
        ],
        "mapping" : [
          {
            "identity" : "IpsSectionsToIso27269",
            "map" : "Care Plan [20]"
          }
        ]
      },
      {
        "id" : "IPSSectionsLM.sectionSocialHistory",
        "path" : "IPSSectionsLM.sectionSocialHistory",
        "short" : "IPS Social History Section",
        "definition" : "IPS Social History Section",
        "comment" : "ISO 27269: Optional",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "http://hl7.org/fhir/uv/ips/StructureDefinition/DocumentSection"
          }
        ],
        "mapping" : [
          {
            "identity" : "IpsSectionsToIso27269",
            "map" : "Social History [23]"
          }
        ]
      },
      {
        "id" : "IPSSectionsLM.sectionVitalSigns",
        "path" : "IPSSectionsLM.sectionVitalSigns",
        "short" : "IPS Vital Signs Section",
        "definition" : "IPS Vital Signs Section",
        "comment" : "ISO 27269: Optional",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "http://hl7.org/fhir/uv/ips/StructureDefinition/DocumentSection"
          }
        ],
        "mapping" : [
          {
            "identity" : "IpsSectionsToIso27269",
            "map" : "Vital Sign [24]"
          }
        ]
      }
    ]
  }
}

```
