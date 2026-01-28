# Results Radiology Component - IPS - International Patient Summary Implementation Guide v2.0.0

## ValueSet: Results Radiology Component - IPS 

 
Value set including SNOMED CT, LOINC and DICOM concepts for textual reports, measurements, and other radiology components 

 **References** 

* [Observation Results - Radiology (IPS)](StructureDefinition-Observation-results-radiology-uv-ips.md)

### Logical Definition (CLD)

 

### Expansion

Expansion from tx.fhir.org based on:

* [codesystem DICOM Controlled Terminology Definitions v01 (CodeSystem)](http://hl7.org/fhir/R4/codesystem-dicom-dcim.html)
* Loinc v2.81
* SNOMED CT International edition 01-Feb 2025
* [valueset Results Radiology Observation - IPS v2.0.0 (ValueSet)](ValueSet-results-radiology-observations-uv-ips.md)

This value set has 1,037 codes in it. In order to keep the publication size manageable, only a selection (1,000 codes) of the whole set of codes is shown.

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "results-radiology-component-uv-ips",
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
  "url" : "http://hl7.org/fhir/uv/ips/ValueSet/results-radiology-component-uv-ips",
  "version" : "2.0.0",
  "name" : "ResultsRadiologyComponentUvIps",
  "title" : "Results Radiology Component - IPS",
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
  "description" : "Value set including SNOMED CT, LOINC and DICOM concepts for textual reports, measurements, and other radiology components",
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
  "copyright" : "\n- This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement.\n- This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc",
  "compose" : {
    "include" : [
      {
        "valueSet" : [
          "http://hl7.org/fhir/uv/ips/ValueSet/results-radiology-observations-uv-ips"
        ]
      },
      {
        "system" : "http://dicom.nema.org/resources/ontology/DCM",
        "concept" : [
          {
            "code" : "121065",
            "display" : "Procedure Description"
          },
          {
            "code" : "121069",
            "display" : "Previous Finding"
          },
          {
            "code" : "121071",
            "display" : "Finding"
          },
          {
            "code" : "121073",
            "display" : "Impression"
          },
          {
            "code" : "121075",
            "display" : "Recommendation"
          },
          {
            "code" : "121077",
            "display" : "Conclusion"
          },
          {
            "code" : "121110",
            "display" : "Patient Presentation"
          },
          {
            "code" : "121111",
            "display" : "Summary"
          },
          {
            "code" : "121207",
            "display" : "Height"
          },
          {
            "code" : "121211",
            "display" : "Path length"
          },
          {
            "code" : "121206",
            "display" : "Distance"
          },
          {
            "code" : "121216",
            "display" : "Volume estimated from single 2D region"
          },
          {
            "code" : "121218",
            "display" : "Volume estimated from two non-coplanar 2D regions"
          },
          {
            "code" : "121217",
            "display" : "Volume estimated from three or more non-coplanar 2D regions"
          },
          {
            "code" : "121222",
            "display" : "Volume of sphere"
          },
          {
            "code" : "121221",
            "display" : "Volume of ellipsoid"
          },
          {
            "code" : "121220",
            "display" : "Volume of circumscribed sphere"
          },
          {
            "code" : "121219",
            "display" : "Volume of bounding three dimensional region"
          }
        ]
      },
      {
        "system" : "http://loinc.org",
        "concept" : [
          {
            "code" : "11329-0",
            "display" : "History"
          },
          {
            "code" : "55115-0",
            "display" : "Request"
          }
        ]
      },
      {
        "system" : "http://snomed.info/sct",
        "concept" : [
          {
            "code" : "116224001",
            "display" : "Complication of Procedure"
          },
          {
            "code" : "410668003",
            "display" : "Length"
          },
          {
            "code" : "103355008",
            "display" : "Width"
          },
          {
            "code" : "131197000",
            "display" : "Depth"
          },
          {
            "code" : "81827009",
            "display" : "Diameter"
          },
          {
            "code" : "103339001",
            "display" : "Long Axis"
          },
          {
            "code" : "103340004",
            "display" : "Short Axis"
          },
          {
            "code" : "131187009",
            "display" : "Major Axis"
          },
          {
            "code" : "131188004",
            "display" : "Minor Axis"
          },
          {
            "code" : "131189007",
            "display" : "Perpendicular Axis"
          },
          {
            "code" : "131190003",
            "display" : "Radius"
          },
          {
            "code" : "131191004",
            "display" : "Perimeter"
          },
          {
            "code" : "74551000",
            "display" : "Circumference"
          },
          {
            "code" : "131192006",
            "display" : "Diameter of circumscribed circle"
          },
          {
            "code" : "42798000",
            "display" : "Area"
          },
          {
            "code" : "131184002",
            "display" : "Area of defined region"
          },
          {
            "code" : "118565006",
            "display" : "Volume"
          }
        ]
      }
    ]
  }
}

```
