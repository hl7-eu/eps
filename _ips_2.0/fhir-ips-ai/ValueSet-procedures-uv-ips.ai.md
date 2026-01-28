# Procedures - IPS - International Patient Summary Implementation Guide v2.0.0

## ValueSet: Procedures - IPS 

 
IPS Procedure codes value set. This value set includes codes from SNOMED CT®: all descendants of 71388002 |Procedure (procedure)|; excluding [all descendants or self of 14734007 |Administrative procedure (procedure)|; all descendants or self of 59524001 |Blood bank procedure (procedure)|; all descendants or self of 389067005 |Community health procedure (procedure)|; all descendants or self of 442006003 |Determination of information related to transfusion (procedure)|; all descendants or self of 225288009 |Environmental care procedure (procedure)|; all descendants or self of 308335008 |Patient encounter procedure (procedure)|; all descendants or self of 710135002 |Promotion (procedure)|; all descendants or self of 389084004 |Staff related procedure (procedure)|]; including all descendants or self of 787480003 |No known procedures (situation)| 
SNOMED CT® ECL definition:
(< 71388002 |Procedure (procedure)| MINUS (<< 14734007 |Administrative procedure (procedure)| OR << 59524001 |Blood bank procedure (procedure)| OR << 389067005 |Community health procedure (procedure)| OR << 442006003 |Determination of information related to transfusion (procedure)| OR << 225288009 |Environmental care procedure (procedure)| OR << 308335008 |Patient encounter procedure (procedure)| OR << 710135002 |Promotion (procedure)| OR << 389084004 |Staff related procedure (procedure)|)) OR « 787480003 |No known procedures (situation)| 

 **References** 

* [Procedure (IPS)](StructureDefinition-Procedure-uv-ips.md)

### Logical Definition (CLD)

This value set includes codes based on the following rules:

* Include codes from[`http://snomed.info/sct`](http://www.snomed.org/)version Not Stated (use latest from terminology server) where concept descends from 71388002 (Procedure)
* Include codes from[`http://snomed.info/sct`](http://www.snomed.org/)version Not Stated (use latest from terminology server) where concept is-a 787480003 (No known procedures)

This value set excludes codes based on the following rules:

* Exclude codes from[`http://snomed.info/sct`](http://www.snomed.org/)version Not Stated (use latest from terminology server) where concept is-a 14734007 (Administrative procedure)
* Exclude codes from[`http://snomed.info/sct`](http://www.snomed.org/)version Not Stated (use latest from terminology server) where concept is-a 59524001 (Blood bank procedure)
* Exclude codes from[`http://snomed.info/sct`](http://www.snomed.org/)version Not Stated (use latest from terminology server) where concept is-a 389067005 (Community health procedure (procedure))
* Exclude codes from[`http://snomed.info/sct`](http://www.snomed.org/)version Not Stated (use latest from terminology server) where concept is-a 442006003 (Determination of information related to transfusion)
* Exclude codes from[`http://snomed.info/sct`](http://www.snomed.org/)version Not Stated (use latest from terminology server) where concept is-a 225288009 (Environmental care procedure)
* Exclude codes from[`http://snomed.info/sct`](http://www.snomed.org/)version Not Stated (use latest from terminology server) where concept is-a 308335008 (Patient encounter procedure)
* Exclude codes from[`http://snomed.info/sct`](http://www.snomed.org/)version Not Stated (use latest from terminology server) where concept is-a 710135002 (Promotion (procedure))
* Exclude codes from[`http://snomed.info/sct`](http://www.snomed.org/)version Not Stated (use latest from terminology server) where concept is-a 389084004 (Staff related procedure (procedure))

 

### Expansion

Expansion from tx.fhir.org based on SNOMED CT International edition 01-Feb 2025

This value set expansion contains 983 concepts.

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "procedures-uv-ips",
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
  "url" : "http://hl7.org/fhir/uv/ips/ValueSet/procedures-uv-ips",
  "version" : "2.0.0",
  "name" : "ProceduresUvIps",
  "title" : "Procedures - IPS",
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
  "description" : "IPS Procedure codes value set.  This value set includes codes from SNOMED CT®: all descendants of 71388002 \\|Procedure (procedure)\\|; excluding [all descendants or self of 14734007 \\|Administrative procedure (procedure)\\|; all descendants or self of 59524001 \\|Blood bank procedure (procedure)\\|; all descendants or self of 389067005 \\|Community health procedure (procedure)\\|; all descendants or self of 442006003 \\|Determination of information related to transfusion (procedure)\\|; all descendants or self of 225288009 \\|Environmental care procedure (procedure)\\|; all descendants or self of 308335008 \\|Patient encounter procedure (procedure)\\|; all descendants or self of 710135002 \\|Promotion (procedure)\\|; all descendants or self of 389084004 \\|Staff related procedure (procedure)\\|]; including all descendants or self of 787480003 \\|No known procedures (situation)\\|\n\nSNOMED CT® ECL definition:\\\n(< 71388002 \\|Procedure (procedure)\\| MINUS (\\<\\< 14734007 \\|Administrative procedure (procedure)\\| OR \\<\\< 59524001 \\|Blood bank procedure (procedure)\\| OR \\<\\< 389067005 \\|Community health procedure (procedure)\\| OR \\<\\< 442006003 \\|Determination of information related to transfusion (procedure)\\| OR \\<\\< 225288009 \\|Environmental care procedure (procedure)\\| OR \\<\\< 308335008 \\|Patient encounter procedure (procedure)\\| OR \\<\\< 710135002 \\|Promotion (procedure)\\| OR \\<\\< 389084004 \\|Staff related procedure (procedure)\\|)) OR << 787480003 \\|No known procedures (situation)\\|",
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
            "value" : "71388002"
          }
        ]
      },
      {
        "system" : "http://snomed.info/sct",
        "filter" : [
          {
            "property" : "concept",
            "op" : "is-a",
            "value" : "787480003"
          }
        ]
      }
    ],
    "exclude" : [
      {
        "system" : "http://snomed.info/sct",
        "filter" : [
          {
            "property" : "concept",
            "op" : "is-a",
            "value" : "14734007"
          }
        ]
      },
      {
        "system" : "http://snomed.info/sct",
        "filter" : [
          {
            "property" : "concept",
            "op" : "is-a",
            "value" : "59524001"
          }
        ]
      },
      {
        "system" : "http://snomed.info/sct",
        "filter" : [
          {
            "property" : "concept",
            "op" : "is-a",
            "value" : "389067005"
          }
        ]
      },
      {
        "system" : "http://snomed.info/sct",
        "filter" : [
          {
            "property" : "concept",
            "op" : "is-a",
            "value" : "442006003"
          }
        ]
      },
      {
        "system" : "http://snomed.info/sct",
        "filter" : [
          {
            "property" : "concept",
            "op" : "is-a",
            "value" : "225288009"
          }
        ]
      },
      {
        "system" : "http://snomed.info/sct",
        "filter" : [
          {
            "property" : "concept",
            "op" : "is-a",
            "value" : "308335008"
          }
        ]
      },
      {
        "system" : "http://snomed.info/sct",
        "filter" : [
          {
            "property" : "concept",
            "op" : "is-a",
            "value" : "710135002"
          }
        ]
      },
      {
        "system" : "http://snomed.info/sct",
        "filter" : [
          {
            "property" : "concept",
            "op" : "is-a",
            "value" : "389084004"
          }
        ]
      }
    ]
  }
}

```
