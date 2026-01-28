# Body Site - IPS - International Patient Summary Implementation Guide v2.0.0

## ValueSet: Body Site - IPS 

 
IPS body site value set. This value set includes a set of codes from SNOMED CT that may be used to represent body sites (e.g., for laboratory specimen collection). This value set includes codes from SNOMED CT®: all descendants of 442083009 |Anatomical or acquired body structure (body structure)| 
SNOMED CT® ECL definition:
< 442083009 |Anatomical or acquired body structure (body structure)| 

 **References** 

* [Specimen (IPS)](StructureDefinition-Specimen-uv-ips.md)

### Logical Definition (CLD)

Profile: [Shareable ValueSet](http://hl7.org/fhir/R4/shareablevalueset.html)

* Include codes from[`http://snomed.info/sct`](http://www.snomed.org/)version Not Stated (use latest from terminology server) where concept descends from 442083009 (Anatomical or acquired body structure (body structure))

 

### Expansion

Expansion from tx.fhir.org based on SNOMED CT International edition 01-Feb 2025

This value set has >1000 codes in it. In order to keep the publication size manageable, only a selection (1000 codes) of the whole set of codes is shown

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "body-site-uv-ips",
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
  "url" : "http://hl7.org/fhir/uv/ips/ValueSet/body-site-uv-ips",
  "version" : "2.0.0",
  "name" : "BodySiteUvIps",
  "title" : "Body Site - IPS",
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
  "description" : "IPS body site value set. This value set includes a set of codes from SNOMED CT that may be used to represent body sites (e.g., for laboratory specimen collection). This value set includes codes from SNOMED CT®: all descendants of 442083009 \\|Anatomical or acquired body structure (body structure)\\|\n\nSNOMED CT® ECL definition:\\\n< 442083009 \\|Anatomical or acquired body structure (body structure)\\|",
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
        "filter" : [
          {
            "property" : "concept",
            "op" : "descendent-of",
            "value" : "442083009"
          }
        ]
      }
    ]
  }
}

```
