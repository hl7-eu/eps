# Results Microorganism - IPS - International Patient Summary Implementation Guide v2.0.0

## ValueSet: Results Microorganism - IPS 

 
IPS Results Microorganism value set. This value set includes codes from SNOMED CT®: all descendants of 409822003 |Domain Bacteria (organism)|; all descendants of 441649000 |Class Cestoda and/or Class Trematoda and/or Phylum Nemata (organism)|; all descendants of 414561005 |Kingdom Fungi (organism)|; all descendants of 84676004 |Prion (organism)|; all descendants of 49872002 |Virus (organism)|; all descendants of 417396000 |Kingdom Protozoa (organism)|; all descendants of 419036000 |Domain Archaea (organism)|; all descendants of 426785004 |Kingdom Chromista (organism)|; all descendants of 370570004 |Kingdom Protoctista (organism)|; all descendants of 417377004 |Kingdom Viridiplantae (organism)|; all descendants of 243565002 |Slime mold (organism)| 
SNOMED CT® ECL definition:
< 409822003 |Domain Bacteria (organism)| OR < 441649000 |Class Cestoda and/or Class Trematoda and/or Phylum Nemata (organism)| OR < 414561005 |Kingdom Fungi (organism)| OR < 84676004 |Prion (organism)| OR < 49872002 |Virus (organism)| OR < 417396000 |Kingdom Protozoa (organism)| OR < 419036000 |Domain Archaea (organism)| OR < 426785004 |Kingdom Chromista (organism)| OR < 370570004 |Kingdom Protoctista (organism)| OR < 417377004 |Kingdom Viridiplantae (organism)| OR < 243565002 |Slime mold (organism)| 

 **References** 

* Included into [ResultsCodedValuesLaboratoryPathologyUvIps](ValueSet-results-coded-values-laboratory-pathology-uv-ips.md)

### Logical Definition (CLD)

Profile: [Shareable ValueSet](http://hl7.org/fhir/R4/shareablevalueset.html)

This value set includes codes based on the following rules:

* Include codes from[`http://snomed.info/sct`](http://www.snomed.org/)version Not Stated (use latest from terminology server) where concept descends from 409822003 (Domain Bacteria (organism))
* Include codes from[`http://snomed.info/sct`](http://www.snomed.org/)version Not Stated (use latest from terminology server) where concept descends from 441649000 (Class Cestoda and/or class Trematoda and/or phylum Nematoda)
* Include codes from[`http://snomed.info/sct`](http://www.snomed.org/)version Not Stated (use latest from terminology server) where concept descends from 414561005 (Kingdom Fungi (organism))
* Include codes from[`http://snomed.info/sct`](http://www.snomed.org/)version Not Stated (use latest from terminology server) where concept descends from 84676004 (Prion)
* Include codes from[`http://snomed.info/sct`](http://www.snomed.org/)version Not Stated (use latest from terminology server) where concept descends from 49872002 (Virus)
* Include codes from[`http://snomed.info/sct`](http://www.snomed.org/)version Not Stated (use latest from terminology server) where concept descends from 417396000 (Kingdom Protozoa (organism))
* Include codes from[`http://snomed.info/sct`](http://www.snomed.org/)version Not Stated (use latest from terminology server) where concept descends from 419036000 (Superkingdom Archaea)
* Include codes from[`http://snomed.info/sct`](http://www.snomed.org/)version Not Stated (use latest from terminology server) where concept descends from 426785004 (Kingdom Chromista (organism))
* Include codes from[`http://snomed.info/sct`](http://www.snomed.org/)version Not Stated (use latest from terminology server) where concept descends from 370570004 (Kingdom Protista)
* Include codes from[`http://snomed.info/sct`](http://www.snomed.org/)version Not Stated (use latest from terminology server) where concept descends from 417377004 (Kingdom Viridiplantae (organism))
* Include codes from[`http://snomed.info/sct`](http://www.snomed.org/)version Not Stated (use latest from terminology server) where concept descends from 243565002 (Slime mold)

 

### Expansion

Expansion from tx.fhir.org based on SNOMED CT International edition 01-Feb 2025

This value set has >1000 codes in it. In order to keep the publication size manageable, only a selection (1000 codes) of the whole set of codes is shown

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "results-microorganism-uv-ips",
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
  "url" : "http://hl7.org/fhir/uv/ips/ValueSet/results-microorganism-uv-ips",
  "version" : "2.0.0",
  "name" : "ResultsMicroorganismUvIps",
  "title" : "Results Microorganism - IPS",
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
  "description" : "IPS Results Microorganism value set.  This value set includes codes from SNOMED CT®: all descendants of 409822003 \\|Domain Bacteria (organism)\\|; all descendants of 441649000 \\|Class Cestoda and/or Class Trematoda and/or Phylum Nemata (organism)\\|; all descendants of 414561005 \\|Kingdom Fungi (organism)\\|; all descendants of 84676004 \\|Prion (organism)\\|; all descendants of 49872002 \\|Virus (organism)\\|; all descendants of 417396000 \\|Kingdom Protozoa (organism)\\|; all descendants of 419036000 \\|Domain Archaea (organism)\\|; all descendants of 426785004 \\|Kingdom Chromista (organism)\\|; all descendants of 370570004 \\|Kingdom Protoctista (organism)\\|; all descendants of 417377004 \\|Kingdom Viridiplantae (organism)\\|; all descendants of 243565002 \\|Slime mold (organism)\\|\n\nSNOMED CT® ECL definition:\\\n< 409822003 \\|Domain Bacteria (organism)\\| OR < 441649000 \\|Class Cestoda and/or Class Trematoda and/or Phylum Nemata (organism)\\| OR < 414561005 \\|Kingdom Fungi (organism)\\| OR < 84676004 \\|Prion (organism)\\| OR < 49872002 \\|Virus (organism)\\| OR < 417396000 \\|Kingdom Protozoa (organism)\\| OR < 419036000 \\|Domain Archaea (organism)\\| OR < 426785004 \\|Kingdom Chromista (organism)\\| OR < 370570004 \\|Kingdom Protoctista (organism)\\| OR < 417377004 \\|Kingdom Viridiplantae (organism)\\| OR < 243565002 \\|Slime mold (organism)\\|",
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
            "value" : "409822003"
          }
        ]
      },
      {
        "system" : "http://snomed.info/sct",
        "filter" : [
          {
            "property" : "concept",
            "op" : "descendent-of",
            "value" : "441649000"
          }
        ]
      },
      {
        "system" : "http://snomed.info/sct",
        "filter" : [
          {
            "property" : "concept",
            "op" : "descendent-of",
            "value" : "414561005"
          }
        ]
      },
      {
        "system" : "http://snomed.info/sct",
        "filter" : [
          {
            "property" : "concept",
            "op" : "descendent-of",
            "value" : "84676004"
          }
        ]
      },
      {
        "system" : "http://snomed.info/sct",
        "filter" : [
          {
            "property" : "concept",
            "op" : "descendent-of",
            "value" : "49872002"
          }
        ]
      },
      {
        "system" : "http://snomed.info/sct",
        "filter" : [
          {
            "property" : "concept",
            "op" : "descendent-of",
            "value" : "417396000"
          }
        ]
      },
      {
        "system" : "http://snomed.info/sct",
        "filter" : [
          {
            "property" : "concept",
            "op" : "descendent-of",
            "value" : "419036000"
          }
        ]
      },
      {
        "system" : "http://snomed.info/sct",
        "filter" : [
          {
            "property" : "concept",
            "op" : "descendent-of",
            "value" : "426785004"
          }
        ]
      },
      {
        "system" : "http://snomed.info/sct",
        "filter" : [
          {
            "property" : "concept",
            "op" : "descendent-of",
            "value" : "370570004"
          }
        ]
      },
      {
        "system" : "http://snomed.info/sct",
        "filter" : [
          {
            "property" : "concept",
            "op" : "descendent-of",
            "value" : "417377004"
          }
        ]
      },
      {
        "system" : "http://snomed.info/sct",
        "filter" : [
          {
            "property" : "concept",
            "op" : "descendent-of",
            "value" : "243565002"
          }
        ]
      }
    ]
  }
}

```
