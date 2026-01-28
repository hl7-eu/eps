# Medicine EDQM Doseform - IPS - International Patient Summary Implementation Guide v2.0.0

## ValueSet: Medicine EDQM Doseform - IPS 

 
While SNOMED remains a preferred binding for medicine doseform, EDQM (European Directorate for the Quality of Medicines and Healthcare) doseform codes are allowed as additional binding. 
This Value Set includes all the EDQM Standard Terms having:
[Concept Status] = ‘C’ AND
[Concept Class] IN (‘PDF’, ‘CMT’, ‘CDF’, ‘PFT') AND
[Domain] = 'H+V' 
C = 'Current'; PDF = 'Pharmaceutical dose form'; CMT = 'Combined terms'; CDF = 'Combined pharmaceutical dose form'; PFT = 'Patient Friendly'; H+V = 'Human and Veterinary' 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

### Logical Definition (CLD)

Profile: [Shareable ValueSet](http://hl7.org/fhir/R4/shareablevalueset.html)

This value set includes codes based on the following rules:

* Include codes from[`http://standardterms.edqm.eu`](http://tx.fhir.org/r4)version ⏿5 February 2025 where status = C, class = PDF and domain = H+V
* Include codes from[`http://standardterms.edqm.eu`](http://tx.fhir.org/r4)version ⏿5 February 2025 where status = C, class = CMT and domain = H+V
* Include codes from[`http://standardterms.edqm.eu`](http://tx.fhir.org/r4)version ⏿5 February 2025 where status = C, class = CDF and domain = H+V
* Include codes from[`http://standardterms.edqm.eu`](http://tx.fhir.org/r4)version ⏿5 February 2025 where status = C, class = PFT and domain = H+V

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "medicine-doseform",
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
  "url" : "http://hl7.org/fhir/uv/ips/ValueSet/medicine-doseform",
  "identifier" : [
    {
      "use" : "official",
      "system" : "http://art-decor.org/ns/oids/vs",
      "value" : "2.16.840.1.113883.11.22.25"
    }
  ],
  "version" : "2.0.0",
  "name" : "MedicineDoseFormUvIps",
  "title" : "Medicine EDQM Doseform - IPS",
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
  "description" : "While SNOMED remains a preferred binding for medicine doseform, EDQM (European Directorate for the Quality of Medicines and Healthcare) doseform codes are allowed as additional binding. \n\nThis Value Set includes all the EDQM Standard Terms having:  \n[Concept Status] = ‘C’ AND  \n[Concept Class] IN (‘PDF’, ‘CMT’, ‘CDF’, ‘PFT') AND  \n[Domain] = 'H+V'  \n\nC = 'Current'; PDF = 'Pharmaceutical dose form'; CMT = 'Combined terms'; CDF = 'Combined pharmaceutical dose form'; PFT = 'Patient Friendly'; H+V = 'Human and Veterinary'",
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
  "copyright" : "This artifact includes content from EDQM Standard Terms. EDQM Standard Terms are copyright European Directorate for the Quality of Medicines. Terms & Conditions in https://www.edqm.eu/en/standard-terms-database",
  "compose" : {
    "include" : [
      {
        "system" : "http://standardterms.edqm.eu",
        "filter" : [
          {
            "property" : "status",
            "op" : "=",
            "value" : "C"
          },
          {
            "property" : "class",
            "op" : "=",
            "value" : "PDF"
          },
          {
            "property" : "domain",
            "op" : "=",
            "value" : "H+V"
          }
        ]
      },
      {
        "system" : "http://standardterms.edqm.eu",
        "filter" : [
          {
            "property" : "status",
            "op" : "=",
            "value" : "C"
          },
          {
            "property" : "class",
            "op" : "=",
            "value" : "CMT"
          },
          {
            "property" : "domain",
            "op" : "=",
            "value" : "H+V"
          }
        ]
      },
      {
        "system" : "http://standardterms.edqm.eu",
        "filter" : [
          {
            "property" : "status",
            "op" : "=",
            "value" : "C"
          },
          {
            "property" : "class",
            "op" : "=",
            "value" : "CDF"
          },
          {
            "property" : "domain",
            "op" : "=",
            "value" : "H+V"
          }
        ]
      },
      {
        "system" : "http://standardterms.edqm.eu",
        "filter" : [
          {
            "property" : "status",
            "op" : "=",
            "value" : "C"
          },
          {
            "property" : "class",
            "op" : "=",
            "value" : "PFT"
          },
          {
            "property" : "domain",
            "op" : "=",
            "value" : "H+V"
          }
        ]
      }
    ]
  }
}

```
