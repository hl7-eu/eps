# Pregnancy Outcome - IPS - International Patient Summary Implementation Guide v2.0.0

## ValueSet: Pregnancy Outcome - IPS 

 
IPS Pregnancies Summary 

 **References** 

* [Observation Pregnancy - Outcome (IPS)](StructureDefinition-Observation-pregnancy-outcome-uv-ips.md)

### Logical Definition (CLD)

 

### Expansion

Expansion from tx.fhir.org based on Loinc v2.81

This value set contains 9 concepts

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "pregnancies-summary-uv-ips",
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
  "url" : "http://hl7.org/fhir/uv/ips/ValueSet/pregnancies-summary-uv-ips",
  "identifier" : [
    {
      "use" : "official",
      "system" : "http://art-decor.org/ns/oids/vs",
      "value" : "2.16.840.1.113883.11.22.21"
    }
  ],
  "version" : "2.0.0",
  "name" : "PregnanciesSummaryUvIps",
  "title" : "Pregnancy Outcome - IPS",
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
  "description" : "IPS Pregnancies Summary",
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
        "concept" : [
          {
            "code" : "11636-8",
            "display" : "[#] Births.live"
          },
          {
            "code" : "11637-6",
            "display" : "[#] Births.preterm"
          },
          {
            "code" : "11638-4",
            "display" : "[#] Births.still living"
          },
          {
            "code" : "11639-2",
            "display" : "[#] Births.term"
          },
          {
            "code" : "11640-0",
            "display" : "[#] Births total"
          },
          {
            "code" : "11612-9",
            "display" : "[#] Abortions"
          },
          {
            "code" : "11613-7",
            "display" : "[#] Abortions.induced"
          },
          {
            "code" : "11614-5",
            "display" : "[#] Abortions.spontaneous"
          },
          {
            "code" : "33065-4",
            "display" : "[#] Ectopic pregnancy"
          }
        ]
      }
    ]
  }
}

```
