# Healthcare Professional Roles - IPS - International Patient Summary Implementation Guide v2.0.0

## ValueSet: Healthcare Professional Roles - IPS 

 
IPS Healthcare Professional Roles 

 **References** 

* [PractitionerRole (IPS)](StructureDefinition-PractitionerRole-uv-ips.md)

### Logical Definition (CLD)

Profile: [Shareable ValueSet](http://hl7.org/fhir/R4/shareablevalueset.html)

This value set includes codes based on the following rules:

* Include codes from[`urn:oid:2.16.840.1.113883.2.9.6.2.7`](http://tx.fhir.org/r4)version ⏿ISCO-08 where concept descends from [22](http://tx.fhir.org/r4/ValueSet/isco#isco-22)
* Include codes from[`urn:oid:2.16.840.1.113883.2.9.6.2.7`](http://tx.fhir.org/r4)version ⏿ISCO-08 where concept descends from [32](http://tx.fhir.org/r4/ValueSet/isco#isco-32)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "healthcare-professional-roles-uv-ips",
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
  "url" : "http://hl7.org/fhir/uv/ips/ValueSet/healthcare-professional-roles-uv-ips",
  "identifier" : [
    {
      "use" : "official",
      "system" : "http://art-decor.org/ns/oids/vs",
      "value" : "2.16.840.1.113883.11.22.53"
    }
  ],
  "version" : "2.0.0",
  "name" : "HealthcareProfessionalRolesUvIps",
  "title" : "Healthcare Professional Roles - IPS",
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
  "description" : "IPS Healthcare Professional Roles",
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
  "copyright" : "This artifact includes content from International Standard Classification of Occupations (ISCO). ISCO is copyright International Labour Organization (ILO). Terms & Conditions in http://www.ilo.org/global/copyright/lang--en/index.htm",
  "compose" : {
    "include" : [
      {
        "system" : "urn:oid:2.16.840.1.113883.2.9.6.2.7",
        "filter" : [
          {
            "property" : "concept",
            "op" : "descendent-of",
            "value" : "22"
          }
        ]
      },
      {
        "system" : "urn:oid:2.16.840.1.113883.2.9.6.2.7",
        "filter" : [
          {
            "property" : "concept",
            "op" : "descendent-of",
            "value" : "32"
          }
        ]
      }
    ]
  }
}

```
