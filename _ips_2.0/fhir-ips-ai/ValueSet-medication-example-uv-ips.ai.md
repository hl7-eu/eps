# Medications - example (IPS) - International Patient Summary Implementation Guide v2.0.0

## ValueSet: Medications - example (IPS) 

 
This value set provides an example of possible medication coded concepts. This value set will be removed in a future release and has been replaced with[medication-uv-ips](./ValueSet-medication-uv-ips.md). 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

### Logical Definition (CLD)

 

### Expansion

Expansion from tx.fhir.org based on:

* SNOMED CT International edition 01-Feb 2025
* codesystem RxNorm version ??

This value set contains 17 concepts

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "medication-example-uv-ips",
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
  "url" : "http://hl7.org/fhir/uv/ips/ValueSet/medication-example-uv-ips",
  "version" : "2.0.0",
  "name" : "MedicationsExampleUvIps",
  "title" : "Medications - example (IPS)",
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
  "description" : "This value set provides an example of possible medication coded concepts. This value set will be removed in a future release and has been replaced with [medication-uv-ips](./ValueSet-medication-uv-ips.html).",
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
  "copyright" : "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement",
  "compose" : {
    "include" : [
      {
        "system" : "http://snomed.info/sct",
        "concept" : [
          {
            "code" : "777067000",
            "display" : "Acetaminophen only product"
          },
          {
            "code" : "774587000",
            "display" : "Amoxicillin and clavulanic acid only product"
          },
          {
            "code" : "776556004",
            "display" : "Lithium citrate only product"
          },
          {
            "code" : "774409003",
            "display" : "Acenocoumarol only product"
          },
          {
            "code" : "780130002",
            "display" : "Acetaminophen only product in rectal dose form"
          },
          {
            "code" : "778315007",
            "display" : "Amoxicillin and clavulanic acid only product in oral dose form"
          },
          {
            "code" : "779725005",
            "display" : "Lithium citrate only product in oral dose form"
          },
          {
            "code" : "778207007",
            "display" : "Acenocoumarol only product in oral dose form"
          },
          {
            "code" : "322257001",
            "display" : "Paracetamol 250 mg rectal suppository"
          },
          {
            "code" : "392259005",
            "display" : "Amoxicillin 875 mg and clavulanic acid (as clavulanate potassium) 125 mg oral tablet"
          },
          {
            "code" : "766489003",
            "display" : "Lithium citrate 104 mg/mL oral solution"
          },
          {
            "code" : "319740004",
            "display" : "Acenocoumarol 1 mg oral tablet"
          }
        ]
      },
      {
        "system" : "http://www.nlm.nih.gov/research/umls/rxnorm",
        "concept" : [
          {
            "code" : "331055",
            "display" : "Amoxicillin 1000 MG"
          },
          {
            "code" : "437158",
            "display" : "Acetaminophen 100 MG"
          },
          {
            "code" : "332122",
            "display" : "lithium citrate 60 MG/ML"
          }
        ]
      },
      {
        "system" : "http://hl7.org/fhir/sid/ndc",
        "concept" : [
          {
            "code" : "0781-1852",
            "display" : "Amoxicillin and Clavulanate Potassium  (product)"
          },
          {
            "code" : "0781-1852-20",
            "display" : "Amoxicillin and Clavulanate Potassium, 20 TABLET, FILM COATED in 1 BOTTLE (0781-1852-20) (package)"
          }
        ]
      }
    ]
  }
}

```
