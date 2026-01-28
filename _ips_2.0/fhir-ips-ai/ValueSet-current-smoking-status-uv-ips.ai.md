# Current Smoking Status - IPS - International Patient Summary Implementation Guide v2.0.0

## ValueSet: Current Smoking Status - IPS 

 
HL7 IPS SNOMED value set for smoking status. This value set includes a set of specific SNOMED CT codes (no subtypes included) that may be used to represent smoking status. 
SNOMED CT® ECL definition:
449868002 |Smokes tobacco daily (finding)| OR 428041000124106 |Occasional tobacco smoker (finding)| OR 8517006 |Ex-smoker (finding)| OR 266919005 |Never smoked tobacco (finding)| OR 77176002 |Smoker (finding)| OR 266927001 |Tobacco smoking consumption unknown (finding)| OR 230063004 |Heavy cigarette smoker (finding)| OR 230060001 |Light cigarette smoker (finding)| 

 **References** 

* [Observation Social History - Tobacco Use (IPS)](StructureDefinition-Observation-tobaccouse-uv-ips.md)

### Logical Definition (CLD)

 

### Expansion

Expansion from tx.fhir.org based on SNOMED CT International edition 01-Feb 2025

This value set contains 8 concepts

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "current-smoking-status-uv-ips",
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
  "url" : "http://hl7.org/fhir/uv/ips/ValueSet/current-smoking-status-uv-ips",
  "version" : "2.0.0",
  "name" : "CurrentSmokingStatusUvIps",
  "title" : "Current Smoking Status - IPS",
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
  "description" : "HL7 IPS SNOMED value set for smoking status.  This value set includes a set of specific SNOMED CT codes (no subtypes included) that may be used to represent smoking status.\n\nSNOMED CT® ECL definition:\\\n449868002 |Smokes tobacco daily (finding)| OR 428041000124106 |Occasional tobacco smoker (finding)| OR 8517006 |Ex-smoker (finding)| OR 266919005 |Never smoked tobacco (finding)| OR 77176002 |Smoker (finding)| OR 266927001 |Tobacco smoking consumption unknown (finding)| OR 230063004 |Heavy cigarette smoker (finding)| OR 230060001 |Light cigarette smoker (finding)|",
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
            "code" : "449868002",
            "display" : "Smokes tobacco daily (finding)"
          },
          {
            "code" : "428041000124106",
            "display" : "Occasional tobacco smoker (finding)"
          },
          {
            "code" : "8517006",
            "display" : "Ex-smoker (finding)"
          },
          {
            "code" : "266919005",
            "display" : "Never smoked tobacco (finding)"
          },
          {
            "code" : "77176002",
            "display" : "Smoker (finding)"
          },
          {
            "code" : "266927001",
            "display" : "Tobacco smoking consumption unknown (finding)"
          },
          {
            "code" : "230063004",
            "display" : "Heavy cigarette smoker (finding)"
          },
          {
            "code" : "230060001",
            "display" : "Light cigarette smoker (finding)"
          }
        ]
      }
    ]
  }
}

```
