# Results Laboratory/Pathology Observation - IPS - International Patient Summary Implementation Guide v2.0.0

## ValueSet: Results Laboratory/Pathology Observation - IPS 

 
Value Set Definition: LOINC {STATUS in {ACTIVE}, CLASSTYPE in {Laboratory class (1)}, CLASS exclude {LP62148-9 (NR STATS), LP175679-2 (H&P.HX.LAB), LP7785-1 (CHALSKIN), LP94892-4 (LABORDERS)}} 

 **References** 

* [Observation Results - Laboratory/Pathology (IPS)](StructureDefinition-Observation-results-laboratory-pathology-uv-ips.md)

### Logical Definition (CLD)

Profile: [Shareable ValueSet](http://hl7.org/fhir/R4/shareablevalueset.html)

This value set includes codes based on the following rules:

* Include codes from[`http://loinc.org`](http://loinc.org)version Not Stated (use latest from terminology server) where STATUS = ACTIVE and CLASSTYPE = 1

This value set excludes codes based on the following rules:

* Exclude codes from[`http://loinc.org`](http://loinc.org)version Not Stated (use latest from terminology server) where CLASS = LP62148-9 (NR STATS)
* Exclude codes from[`http://loinc.org`](http://loinc.org)version Not Stated (use latest from terminology server) where CLASS = LP175679-2 (H&P.HX.LAB)
* Exclude codes from[`http://loinc.org`](http://loinc.org)version Not Stated (use latest from terminology server) where CLASS = LP7785-1 (CHALSKIN)
* Exclude codes from[`http://loinc.org`](http://loinc.org)version Not Stated (use latest from terminology server) where CLASS = LP94892-4 (LABORDERS)

 

### Expansion

Expansion from tx.fhir.org based on Loinc v2.81

This value set expansion contains 998 concepts.

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "results-laboratory-pathology-observations-uv-ips",
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
  "url" : "http://hl7.org/fhir/uv/ips/ValueSet/results-laboratory-pathology-observations-uv-ips",
  "identifier" : [
    {
      "use" : "official",
      "system" : "http://art-decor.org/ns/oids/vs",
      "value" : "2.16.840.1.113883.11.22.39"
    }
  ],
  "version" : "2.0.0",
  "name" : "ResultsLaboratoryPathologyObservationUvIps",
  "title" : "Results Laboratory/Pathology Observation - IPS",
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
  "description" : "Value Set Definition: LOINC {STATUS in {ACTIVE}, CLASSTYPE in {Laboratory class (1)}, CLASS exclude {LP62148-9 (NR STATS), LP175679-2 (H&P.HX.LAB), LP7785-1 (CHALSKIN), LP94892-4 (LABORDERS)}}",
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
  "copyright" : "This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc",
  "compose" : {
    "include" : [
      {
        "system" : "http://loinc.org",
        "filter" : [
          {
            "property" : "STATUS",
            "op" : "=",
            "value" : "ACTIVE"
          },
          {
            "property" : "CLASSTYPE",
            "op" : "=",
            "value" : "1"
          }
        ]
      }
    ],
    "exclude" : [
      {
        "system" : "http://loinc.org",
        "filter" : [
          {
            "property" : "CLASS",
            "op" : "=",
            "value" : "LP62148-9"
          }
        ]
      },
      {
        "system" : "http://loinc.org",
        "filter" : [
          {
            "property" : "CLASS",
            "op" : "=",
            "value" : "LP175679-2"
          }
        ]
      },
      {
        "system" : "http://loinc.org",
        "filter" : [
          {
            "property" : "CLASS",
            "op" : "=",
            "value" : "LP7785-1"
          }
        ]
      },
      {
        "system" : "http://loinc.org",
        "filter" : [
          {
            "property" : "CLASS",
            "op" : "=",
            "value" : "LP94892-4"
          }
        ]
      }
    ]
  }
}

```
