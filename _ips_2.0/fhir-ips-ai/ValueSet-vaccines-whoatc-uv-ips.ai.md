# Vaccines WHO ATC - IPS - International Patient Summary Implementation Guide v2.0.0

## ValueSet: Vaccines WHO ATC - IPS 

 
IPS Vaccine codes value set. This value set includes codes from the World Health Organization Anatomical Therapeutic Chemical (ATC) classification system: all descendants of J07 "VACCINES" 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

### Logical Definition (CLD)

Profile: [Shareable ValueSet](http://hl7.org/fhir/R4/shareablevalueset.html)

* Include codes from[`http://www.whocc.no/atc`](http://www.whocc.no/atc)version Not Stated (use latest from terminology server) where concept descends from J07 (VACCINES)

 

### Expansion

Expansion from tx.fhir.org based on codesystem WHO ATC version 2025

This value set contains 131 concepts

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "vaccines-whoatc-uv-ips",
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
  "url" : "http://hl7.org/fhir/uv/ips/ValueSet/vaccines-whoatc-uv-ips",
  "version" : "2.0.0",
  "name" : "VaccinesWhoAtcUvIps",
  "title" : "Vaccines WHO ATC - IPS",
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
  "description" : "IPS Vaccine codes value set.  This value set includes codes from the World Health Organization Anatomical Therapeutic Chemical (ATC) classification system: all descendants of J07 \"VACCINES\"",
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
  "copyright" : "This artifact includes content from Anatomical Therapeutic Chemical (ATC) classification system. ATC codes are copyright World Health Organization (WHO) Collaborating Centre for Drug Statistics Methodology. Terms & Conditions in https://www.whocc.no/use_of_atc_ddd/",
  "compose" : {
    "include" : [
      {
        "system" : "http://www.whocc.no/atc",
        "filter" : [
          {
            "property" : "concept",
            "op" : "descendent-of",
            "value" : "J07"
          }
        ]
      }
    ]
  }
}

```
