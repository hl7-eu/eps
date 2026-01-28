# Pregnancy Status - IPS - International Patient Summary Implementation Guide v2.0.0

## ValueSet: Pregnancy Status - IPS 

 
IPS pregnancy status codes value set. This value set includes codes from SNOMED CT®: 77386006 |Pregnant|; 60001007 |Not pregnant|; 152231000119106 |Pregnancy not yet confirmed|; 146799005 |Possible pregnancy| 
SNOMED CT® ECL definition:
77386006 |Pregnant| OR 60001007 |Not pregnant| OR 152231000119106 |Pregnancy not yet confirmed| OR 146799005 |Possible pregnancy| 

 **References** 

* [Observation Pregnancy - Status (IPS)](StructureDefinition-Observation-pregnancy-status-uv-ips.md)

### Logical Definition (CLD)

 

### Expansion

Expansion from tx.fhir.org based on SNOMED CT International edition 01-Feb 2025

This value set contains 4 concepts

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "pregnancy-status-uv-ips",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
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
  "url" : "http://hl7.org/fhir/uv/ips/ValueSet/pregnancy-status-uv-ips",
  "version" : "2.0.0",
  "name" : "PregnancyStatusUvIps",
  "title" : "Pregnancy Status - IPS",
  "status" : "active",
  "experimental" : false,
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
  "description" : "IPS pregnancy status codes value set.  This value set includes codes from SNOMED CT®: 77386006 \\|Pregnant\\|; 60001007 \\|Not pregnant\\|; 152231000119106 \\|Pregnancy not yet confirmed\\|; 146799005 \\|Possible pregnancy\\|\n\nSNOMED CT® ECL definition:\\\n77386006 \\|Pregnant\\| OR 60001007 \\|Not pregnant\\| OR 152231000119106 \\|Pregnancy not yet confirmed\\| OR 146799005 \\|Possible pregnancy\\|",
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
  "immutable" : false,
  "copyright" : "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement",
  "compose" : {
    "include" : [
      {
        "system" : "http://snomed.info/sct",
        "concept" : [
          {
            "code" : "77386006",
            "display" : "Pregnant"
          },
          {
            "code" : "60001007",
            "display" : "Not pregnant"
          },
          {
            "code" : "152231000119106",
            "display" : "Pregnancy not yet confirmed"
          },
          {
            "code" : "146799005",
            "display" : "Possible pregnancy"
          }
        ]
      }
    ]
  }
}

```
