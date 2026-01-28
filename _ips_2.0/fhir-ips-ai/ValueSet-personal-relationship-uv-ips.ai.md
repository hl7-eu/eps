# Personal Relationship - IPS [Deprecated] - International Patient Summary Implementation Guide v2.0.0

## ValueSet: Personal Relationship - IPS [Deprecated] 

 
The Value Set is used (optionally) to code the type of contact relationship between a person and the patient. This value set will be removed in a future release. It has been replaced with[PersonalRelationshipRoleType](https://terminology.hl7.org/3.1.0/ValueSet-v3-PersonalRelationshipRoleType.html) 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "personal-relationship-uv-ips",
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
  "url" : "http://hl7.org/fhir/uv/ips/ValueSet/personal-relationship-uv-ips",
  "identifier" : [
    {
      "use" : "official",
      "system" : "http://art-decor.org/ns/oids/vs",
      "value" : "2.16.840.1.113883.11.22.54"
    }
  ],
  "version" : "2.0.0",
  "name" : "PersonalRelationshipUvIps",
  "title" : "Personal Relationship - IPS [Deprecated]",
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
  "description" : "The Value Set is used (optionally) to code the type of contact relationship between a person and the patient. This value set will be removed in a future release.  It has been replaced with [PersonalRelationshipRoleType](https://terminology.hl7.org/3.1.0/ValueSet-v3-PersonalRelationshipRoleType.html)",
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
        "system" : "http://terminology.hl7.org/CodeSystem/v3-RoleCode",
        "concept" : [
          {
            "code" : "AUNT",
            "display" : "aunt"
          },
          {
            "code" : "CHILD",
            "display" : "child"
          },
          {
            "code" : "CHLDADOPT",
            "display" : "adopted child"
          },
          {
            "code" : "CHLDFOST",
            "display" : "foster child"
          },
          {
            "code" : "CHLDINLAW",
            "display" : "child in-law"
          },
          {
            "code" : "COUSN",
            "display" : "cousin"
          },
          {
            "code" : "DAU",
            "display" : "natural daughter"
          },
          {
            "code" : "DAUADOPT",
            "display" : "adopted daughter"
          },
          {
            "code" : "DAUC",
            "display" : "daughter"
          },
          {
            "code" : "DAUFOST",
            "display" : "foster daughter"
          },
          {
            "code" : "DAUINLAW",
            "display" : "daughter in-law"
          },
          {
            "code" : "DOMPART",
            "display" : "domestic partner"
          },
          {
            "code" : "FAMMEMB",
            "display" : "family member"
          },
          {
            "code" : "FRND",
            "display" : "unrelated friend"
          },
          {
            "code" : "FTH",
            "display" : "father"
          },
          {
            "code" : "FTHINLAW",
            "display" : "father-in-law"
          },
          {
            "code" : "GGRPRN",
            "display" : "great grandparent"
          },
          {
            "code" : "GRNDCHILD",
            "display" : "grandchild"
          },
          {
            "code" : "GRPRN",
            "display" : "grandparent"
          },
          {
            "code" : "MTH",
            "display" : "mother"
          },
          {
            "code" : "MTHINLAW",
            "display" : "mother-in-law"
          },
          {
            "code" : "NBOR",
            "display" : "neighbor"
          },
          {
            "code" : "NCHILD",
            "display" : "natural child"
          },
          {
            "code" : "NIENEPH",
            "display" : "niece/nephew"
          },
          {
            "code" : "PRN",
            "display" : "parent"
          },
          {
            "code" : "PRNINLAW",
            "display" : "parent in-law"
          },
          {
            "code" : "ROOM",
            "display" : "roomate"
          },
          {
            "code" : "SIB",
            "display" : "sibling"
          },
          {
            "code" : "SIGOTHR",
            "display" : "significant other"
          },
          {
            "code" : "SON",
            "display" : "natural son"
          },
          {
            "code" : "SONADOPT",
            "display" : "adopted son"
          },
          {
            "code" : "SONC",
            "display" : "son"
          },
          {
            "code" : "SONFOST",
            "display" : "foster son"
          },
          {
            "code" : "SONINLAW",
            "display" : "son in-law"
          },
          {
            "code" : "SPS",
            "display" : "spouse"
          },
          {
            "code" : "STPCHLD",
            "display" : "step child"
          },
          {
            "code" : "STPDAU",
            "display" : "stepdaughter"
          },
          {
            "code" : "STPSON",
            "display" : "stepson"
          },
          {
            "code" : "UNCLE",
            "display" : "uncle"
          }
        ]
      }
    ]
  }
}

```
