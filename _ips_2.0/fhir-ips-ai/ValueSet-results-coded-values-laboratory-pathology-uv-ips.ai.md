# Results Coded Values Laboratory/Pathology - IPS - International Patient Summary Implementation Guide v2.0.0

## ValueSet: Results Coded Values Laboratory/Pathology - IPS 

 
IPS Results Coded Values Laboratory/Pathology value set. This value set includes the codes from the[Results Blood Group - IPS](ValueSet-results-blood-group-uv-ips.md),[Results Presence/Absence - IPS](ValueSet-results-presence-absence-uv-ips.md),[Results Microorganism - IPS](ValueSet-results-microorganism-uv-ips.md)and[Results Pathology - IPS](ValueSet-results-pathology-uv-ips.md)value sets. 
SNOMED CT® ECL definition:
< 365636006 |Finding of blood group (finding)| OR < 260411009 |Presence findings (qualifier value)| OR < 272519000 |Absence findings (qualifier value)| OR < 409822003 |Domain Bacteria (organism)| OR < 441649000 |Class Cestoda and/or Class Trematoda and/or Phylum Nemata (organism)| OR < 414561005 |Kingdom Fungi (organism)| OR < 84676004 |Prion (organism)| OR < 49872002 |Virus (organism)| OR < 417396000 |Kingdom Protozoa (organism)| OR < 419036000 |Domain Archaea (organism)| OR < 426785004 |Kingdom Chromista (organism)| OR < 370570004 |Kingdom Protoctista (organism)| OR < 417377004 |Kingdom Viridiplantae (organism)| OR < 243565002 |Slime mold (organism)| OR < 106253005 |Histologic grading differentiation AND/OR behavior (qualifier value)| OR < 373369003 |Finding of histologic grading differentiation AND/OR behavior (finding)| OR < 399981008 |Neoplasm and/or hamartoma (disorder)| 

 **References** 

* [Observation Results - Laboratory/Pathology (IPS)](StructureDefinition-Observation-results-laboratory-pathology-uv-ips.md)

### Logical Definition (CLD)

Profile: [Shareable ValueSet](http://hl7.org/fhir/R4/shareablevalueset.html)

This value set includes codes based on the following rules:

* Import all the codes that are contained in [Results Blood Group - IPS](ValueSet-results-blood-group-uv-ips.md)
* Import all the codes that are contained in [Results Presence/Absence - IPS](ValueSet-results-presence-absence-uv-ips.md)
* Import all the codes that are contained in [Results Microorganism - IPS](ValueSet-results-microorganism-uv-ips.md)
* Import all the codes that are contained in [Results Pathology - IPS](ValueSet-results-pathology-uv-ips.md)

 

### Expansion

Expansion from tx.fhir.org based on:

* SNOMED CT International edition 01-Feb 2025
* [valueset Results Blood Group - IPS v2.0.0 (ValueSet)](ValueSet-results-blood-group-uv-ips.md)
* [valueset Results Microorganism - IPS v2.0.0 (ValueSet)](ValueSet-results-microorganism-uv-ips.md)
* [valueset Results Pathology - IPS v2.0.0 (ValueSet)](ValueSet-results-pathology-uv-ips.md)
* [valueset Results Presence/Absence - IPS v2.0.0 (ValueSet)](ValueSet-results-presence-absence-uv-ips.md)

This value set has >1000 codes in it. In order to keep the publication size manageable, only a selection (1000 codes) of the whole set of codes is shown

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "results-coded-values-laboratory-pathology-uv-ips",
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
  "url" : "http://hl7.org/fhir/uv/ips/ValueSet/results-coded-values-laboratory-pathology-uv-ips",
  "version" : "2.0.0",
  "name" : "ResultsCodedValuesLaboratoryPathologyUvIps",
  "title" : "Results Coded Values Laboratory/Pathology - IPS",
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
  "description" : "IPS Results Coded Values Laboratory/Pathology value set.  This value set includes the codes from the [Results Blood Group - IPS](ValueSet-results-blood-group-uv-ips.html), [Results Presence/Absence - IPS](ValueSet-results-presence-absence-uv-ips.html), [Results Microorganism - IPS](ValueSet-results-microorganism-uv-ips.html) and [Results Pathology - IPS](ValueSet-results-pathology-uv-ips.html) value sets.\n\nSNOMED CT® ECL definition:\\\n< 365636006 \\|Finding of blood group (finding)\\| OR < 260411009 \\|Presence findings (qualifier value)\\| OR < 272519000 \\|Absence findings (qualifier value)\\| OR < 409822003 \\|Domain Bacteria (organism)\\| OR < 441649000 \\|Class Cestoda and/or Class Trematoda and/or Phylum Nemata (organism)\\| OR < 414561005 \\|Kingdom Fungi (organism)\\| OR < 84676004 \\|Prion (organism)\\| OR < 49872002 \\|Virus (organism)\\| OR < 417396000 \\|Kingdom Protozoa (organism)\\| OR < 419036000 \\|Domain Archaea (organism)\\| OR < 426785004 \\|Kingdom Chromista (organism)\\| OR < 370570004 \\|Kingdom Protoctista (organism)\\| OR < 417377004 \\|Kingdom Viridiplantae (organism)\\| OR < 243565002 \\|Slime mold (organism)\\| OR < 106253005 \\|Histologic grading differentiation AND/OR behavior (qualifier value)\\| OR < 373369003 \\|Finding of histologic grading differentiation AND/OR behavior (finding)\\| OR < 399981008 \\|Neoplasm and/or hamartoma (disorder)\\|",
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
        "valueSet" : [
          "http://hl7.org/fhir/uv/ips/ValueSet/results-blood-group-uv-ips"
        ]
      },
      {
        "valueSet" : [
          "http://hl7.org/fhir/uv/ips/ValueSet/results-presence-absence-uv-ips"
        ]
      },
      {
        "valueSet" : [
          "http://hl7.org/fhir/uv/ips/ValueSet/results-microorganism-uv-ips"
        ]
      },
      {
        "valueSet" : [
          "http://hl7.org/fhir/uv/ips/ValueSet/results-pathology-uv-ips"
        ]
      }
    ]
  }
}

```
