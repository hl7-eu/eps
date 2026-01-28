# Imaging Study Status Codes - IPS - International Patient Summary Implementation Guide v2.0.0

## ValueSet: Imaging Study Status Codes - IPS 

 
IPS Imaging Study status codes allowable for results. section This value set includes all imaging study status codes except "entered-in-error" from http://hl7.org/fhir/imagingstudy-status. 

 **References** 

* [ImagingStudy (IPS)](StructureDefinition-ImagingStudy-uv-ips.md)

### Logical Definition (CLD)

Profile: [Shareable ValueSet](http://hl7.org/fhir/R4/shareablevalueset.html)

This value set includes codes based on the following rules:

* Include all codes defined in [`http://hl7.org/fhir/imagingstudy-status`](http://hl7.org/fhir/R4/codesystem-imagingstudy-status.html)version 📦4.0.1

This value set excludes codes based on the following rules:

* Exclude codes from[`http://hl7.org/fhir/imagingstudy-status`](http://hl7.org/fhir/R4/codesystem-imagingstudy-status.html)version 📦4.0.1 where concept is-a [entered-in-error](http://hl7.org/fhir/R4/codesystem-imagingstudy-status.html#imagingstudy-status-entered-in-error)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "imaging-study-status-uv-ips",
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
  "url" : "http://hl7.org/fhir/uv/ips/ValueSet/imaging-study-status-uv-ips",
  "version" : "2.0.0",
  "name" : "ImagingStudyStatusUvIps",
  "title" : "Imaging Study Status Codes - IPS",
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
  "description" : "IPS Imaging Study status codes allowable for results. section  This value set includes all imaging study status codes except \\\"entered-in-error\\\" from http://hl7.org/fhir/imagingstudy-status.",
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
  "copyright" : "Produced by HL7 under the terms of HL7® Governance and Operations Manual relating to Intellectual Property (Section 16), specifically its copyright, trademark and patent provisions.",
  "compose" : {
    "include" : [
      {
        "system" : "http://hl7.org/fhir/imagingstudy-status"
      }
    ],
    "exclude" : [
      {
        "system" : "http://hl7.org/fhir/imagingstudy-status",
        "filter" : [
          {
            "property" : "concept",
            "op" : "is-a",
            "value" : "entered-in-error"
          }
        ]
      }
    ]
  }
}

```
