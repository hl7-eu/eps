# Medications - IPS - International Patient Summary Implementation Guide v2.0.0

## ValueSet: Medications - IPS 

 
IPS Medication codes value set. This value set includes codes from SNOMED CT®: all descendants of 763158003 |Medicinal product (product)|; excluding the descendants or self of 787859002 |Vaccine product (medicinal product)|; including all descendants or self of 787481004 |No known medications (situation)| 
SNOMED CT® ECL definition:
(< 763158003 |Medicinal product (product)| MINUS << 787859002 |Vaccine product (medicinal product)|) OR << 787481004 |No known medications (situation)| 

 **References** 

* [Medication (IPS)](StructureDefinition-Medication-uv-ips.md)
* [MedicationRequest (IPS)](StructureDefinition-MedicationRequest-uv-ips.md)
* [MedicationStatement (IPS)](StructureDefinition-MedicationStatement-uv-ips.md)

### Logical Definition (CLD)

Profile: [Shareable ValueSet](http://hl7.org/fhir/R4/shareablevalueset.html)

This value set includes codes based on the following rules:

* Include codes from[`http://snomed.info/sct`](http://www.snomed.org/)version Not Stated (use latest from terminology server) where concept descends from 763158003 (Medicinal product (product))
* Include codes from[`http://snomed.info/sct`](http://www.snomed.org/)version Not Stated (use latest from terminology server) where concept is-a 787481004 (No known medications)

This value set excludes codes based on the following rules:

* Exclude codes from[`http://snomed.info/sct`](http://www.snomed.org/)version Not Stated (use latest from terminology server) where concept is-a 787859002 (Vaccine product)

 

### Expansion

Expansion from tx.fhir.org based on SNOMED CT International edition 01-Feb 2025

This value set has >1000 codes in it. In order to keep the publication size manageable, only a selection (1000 codes) of the whole set of codes is shown

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "medication-uv-ips",
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
  "url" : "http://hl7.org/fhir/uv/ips/ValueSet/medication-uv-ips",
  "version" : "2.0.0",
  "name" : "MedicationsUvIps",
  "title" : "Medications - IPS",
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
  "description" : "IPS Medication codes value set.  This value set includes codes from SNOMED CT®: all descendants of 763158003 \\|Medicinal product (product)\\|; excluding the descendants or self of 787859002 \\|Vaccine product (medicinal product)\\|; including all descendants or self of 787481004 \\|No known medications (situation)\\|\n\nSNOMED CT® ECL definition:\\\n(< 763158003 \\|Medicinal product (product)\\| MINUS \\<\\< 787859002 \\|Vaccine product (medicinal product)\\|) OR \\<\\< 787481004 \\|No known medications (situation)\\|",
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
            "value" : "763158003"
          }
        ]
      },
      {
        "system" : "http://snomed.info/sct",
        "filter" : [
          {
            "property" : "concept",
            "op" : "is-a",
            "value" : "787481004"
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
            "value" : "787859002"
          }
        ]
      }
    ]
  }
}

```
