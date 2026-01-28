# Problems - IPS - International Patient Summary Implementation Guide v2.0.0

## ValueSet: Problems - IPS 

 
IPS Problem (Condition) codes value set. This value set includes codes from SNOMED CT®: all descendants of 404684003 |Clinical finding (finding)|; all descendants of 243796009 |Situation with explicit context (situation)|; all descendants of 272379006 |Event (event)|; all descendants or self of 160245001 |No current problems or disability (situation)|. The descendants of 71388002 |Procedure (procedure)| (which were included in the CORE problem list) are not included, as they are expected to be represented separately in the History of Procedures Section. 
SNOMED CT® ECL definition:
< 404684003 |Clinical finding (finding)| OR < 243796009 |Situation with explicit context (situation)| OR < 272379006 |Event (event)| OR << 160245001 |No current problems or disability (situation)| 

 **References** 

* [Condition (IPS)](StructureDefinition-Condition-uv-ips.md)

### Logical Definition (CLD)

Profile: [Shareable ValueSet](http://hl7.org/fhir/R4/shareablevalueset.html)

This value set includes codes based on the following rules:

* Include codes from[`http://snomed.info/sct`](http://www.snomed.org/)version Not Stated (use latest from terminology server) where concept descends from 404684003 (Clinical finding (finding))
* Include codes from[`http://snomed.info/sct`](http://www.snomed.org/)version Not Stated (use latest from terminology server) where concept descends from 243796009 (Context-dependent categories)
* Include codes from[`http://snomed.info/sct`](http://www.snomed.org/)version Not Stated (use latest from terminology server) where concept descends from 272379006 (Events)
* Include codes from[`http://snomed.info/sct`](http://www.snomed.org/)version Not Stated (use latest from terminology server) where concept is-a 160245001 (No current problems or disability)

 

### Expansion

Expansion from tx.fhir.org based on SNOMED CT International edition 01-Feb 2025

This value set has >1000 codes in it. In order to keep the publication size manageable, only a selection (1000 codes) of the whole set of codes is shown

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "problems-uv-ips",
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
  "url" : "http://hl7.org/fhir/uv/ips/ValueSet/problems-uv-ips",
  "version" : "2.0.0",
  "name" : "ProblemsUvIps",
  "title" : "Problems - IPS",
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
  "description" : "IPS Problem (Condition) codes value set.  This value set includes codes from SNOMED CT®: all descendants of 404684003 \\|Clinical finding (finding)\\|; all descendants of 243796009 \\|Situation with explicit context (situation)\\|; all descendants of 272379006 \\|Event (event)\\|; all descendants or self of 160245001 \\|No current problems or disability (situation)\\|.  The descendants of 71388002 \\|Procedure (procedure)\\| (which were included in the CORE problem list) are not included, as they are expected to be represented separately in the History of Procedures Section.\n\nSNOMED CT® ECL definition:\\\n< 404684003 \\|Clinical finding (finding)\\| OR < 243796009 \\|Situation with explicit context (situation)\\| OR < 272379006 \\|Event (event)\\| OR \\<\\< 160245001 \\|No current problems or disability (situation)\\|",
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
            "value" : "404684003"
          }
        ]
      },
      {
        "system" : "http://snomed.info/sct",
        "filter" : [
          {
            "property" : "concept",
            "op" : "descendent-of",
            "value" : "243796009"
          }
        ]
      },
      {
        "system" : "http://snomed.info/sct",
        "filter" : [
          {
            "property" : "concept",
            "op" : "descendent-of",
            "value" : "272379006"
          }
        ]
      },
      {
        "system" : "http://snomed.info/sct",
        "filter" : [
          {
            "property" : "concept",
            "op" : "is-a",
            "value" : "160245001"
          }
        ]
      }
    ]
  }
}

```
