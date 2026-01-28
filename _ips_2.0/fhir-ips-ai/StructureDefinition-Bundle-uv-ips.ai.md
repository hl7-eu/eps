# Bundle (IPS) - International Patient Summary Implementation Guide v2.0.0

## Resource Profile: Bundle (IPS) 

 
This profile represents the constraints applied to the Bundle resource by the International Patient Summary (IPS) FHIR Implementation Guide. 

 While this Bundle profile lists many resources which may be included in an IPS document, specific requirements, expectations and obligations are described in the [IPS Composition](StructureDefinition-Composition-uv-ips.md) profile. Therefore, the only entry obligation shown below is on the IPS Composition, which must be the first entry as explained in the [FHIR Documents.](http://hl7.org/fhir/R4/documents.html) 

**Usages:**

* Examples for this Profile: [Bundle/IPS-examples-Bundle-01](Bundle-IPS-examples-Bundle-01.md), [Bundle/IPS-examples-Bundle-with-immunization](Bundle-IPS-examples-Bundle-with-immunization.md), [Bundle/bundle-ips-all-sections](Bundle-bundle-ips-all-sections.md), [Bundle/bundle-minimal](Bundle-bundle-minimal.md) and [Bundle/bundle-no-info-required-sections](Bundle-bundle-no-info-required-sections.md)
* CapabilityStatements using this Profile: [IPS Server Capability Statement](CapabilityStatement-ips-server.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.uv.ips|current/StructureDefinition/Bundle-uv-ips)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-Bundle-uv-ips.csv), [Excel](../StructureDefinition-Bundle-uv-ips.xlsx), [Schematron](../StructureDefinition-Bundle-uv-ips.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "Bundle-uv-ips",
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
  "url" : "http://hl7.org/fhir/uv/ips/StructureDefinition/Bundle-uv-ips",
  "version" : "2.0.0",
  "name" : "BundleUvIps",
  "title" : "Bundle (IPS)",
  "status" : "active",
  "date" : "2024-06-19T10:50:07-05:00",
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
  "description" : "This profile represents the constraints applied to the Bundle resource by the International Patient Summary (IPS) FHIR Implementation Guide.",
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
  "purpose" : "An IPS bundle is an electronic health record extract containing essential healthcare information about a subject of care, comprising at least the required elements of the IPS dataset. The IPS dataset is minimal and non-exhaustive; specialty-agnostic and condition-independent; but still clinically relevant. As specified in ISO 27269, it is designed for supporting the use case scenario for ‘unplanned, cross border care’, but it is not limited to it. It is intended to be international, i.e., to provide generic solutions for global application beyond a particular region or country.",
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "cda",
      "uri" : "http://hl7.org/v3/cda",
      "name" : "CDA (R2)"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Bundle",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Bundle",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Bundle",
        "path" : "Bundle",
        "short" : "International Patient Summary Bundle",
        "definition" : "International Patient Summary Bundle. \r\nA container for a collection of resources in the patient summary document.",
        "constraint" : [
          {
            "key" : "bdl-ips-1",
            "severity" : "error",
            "human" : "An IPS document must have no additional Composition (including Composition subclass) resources besides the first.",
            "expression" : "entry.tail().where(resource is Composition).empty()",
            "source" : "http://hl7.org/fhir/uv/ips/StructureDefinition/Bundle-uv-ips"
          }
        ]
      },
      {
        "id" : "Bundle.identifier",
        "extension" : [
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:populate"
              },
              {
                "url" : "actor",
                "valueCanonical" : "http://hl7.org/fhir/uv/ips/ActorDefinition/Creator"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          },
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:handle"
              },
              {
                "url" : "actor",
                "valueCanonical" : "http://hl7.org/fhir/uv/ips/ActorDefinition/Consumer"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          }
        ],
        "path" : "Bundle.identifier",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Bundle.type",
        "path" : "Bundle.type",
        "fixedCode" : "document"
      },
      {
        "id" : "Bundle.timestamp",
        "extension" : [
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:populate"
              },
              {
                "url" : "actor",
                "valueCanonical" : "http://hl7.org/fhir/uv/ips/ActorDefinition/Creator"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          },
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:handle"
              },
              {
                "url" : "actor",
                "valueCanonical" : "http://hl7.org/fhir/uv/ips/ActorDefinition/Consumer"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          }
        ],
        "path" : "Bundle.timestamp",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry",
        "path" : "Bundle.entry",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "type",
              "path" : "resource"
            },
            {
              "type" : "profile",
              "path" : "resource"
            }
          ],
          "rules" : "open"
        },
        "short" : "Entry resource in the patient summary bundle",
        "definition" : "An entry resource included in the patient summary document bundle resource.",
        "comment" : "Must contain the IPS Composition as the first entry (only a single Composition resource instance may be included) and a Patient resource.  Additional constraints are specified in the IPS Composition profile.",
        "min" : 2
      },
      {
        "id" : "Bundle.entry.fullUrl",
        "path" : "Bundle.entry.fullUrl",
        "min" : 1
      },
      {
        "id" : "Bundle.entry.search",
        "path" : "Bundle.entry.search",
        "max" : "0"
      },
      {
        "id" : "Bundle.entry.request",
        "path" : "Bundle.entry.request",
        "max" : "0"
      },
      {
        "id" : "Bundle.entry.response",
        "path" : "Bundle.entry.response",
        "max" : "0"
      },
      {
        "id" : "Bundle.entry:composition",
        "extension" : [
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:populate"
              },
              {
                "url" : "actor",
                "valueCanonical" : "http://hl7.org/fhir/uv/ips/ActorDefinition/Creator"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          },
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:handle"
              },
              {
                "url" : "actor",
                "valueCanonical" : "http://hl7.org/fhir/uv/ips/ActorDefinition/Consumer"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          },
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHOULD:display"
              },
              {
                "url" : "actor",
                "valueCanonical" : "http://hl7.org/fhir/uv/ips/ActorDefinition/Consumer"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          }
        ],
        "path" : "Bundle.entry",
        "sliceName" : "composition",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:composition.resource",
        "path" : "Bundle.entry.resource",
        "min" : 1,
        "type" : [
          {
            "code" : "Composition",
            "profile" : [
              "http://hl7.org/fhir/uv/ips/StructureDefinition/Composition-uv-ips"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:patient",
        "path" : "Bundle.entry",
        "sliceName" : "patient",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:patient.resource",
        "path" : "Bundle.entry.resource",
        "min" : 1,
        "type" : [
          {
            "code" : "Patient",
            "profile" : [
              "http://hl7.org/fhir/uv/ips/StructureDefinition/Patient-uv-ips"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:allergyintolerance",
        "path" : "Bundle.entry",
        "sliceName" : "allergyintolerance",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:allergyintolerance.resource",
        "path" : "Bundle.entry.resource",
        "min" : 1,
        "type" : [
          {
            "code" : "AllergyIntolerance",
            "profile" : [
              "http://hl7.org/fhir/uv/ips/StructureDefinition/AllergyIntolerance-uv-ips"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:careplan",
        "path" : "Bundle.entry",
        "sliceName" : "careplan",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:careplan.resource",
        "path" : "Bundle.entry.resource",
        "min" : 1,
        "type" : [
          {
            "code" : "CarePlan"
          }
        ]
      },
      {
        "id" : "Bundle.entry:clinicalimpression",
        "path" : "Bundle.entry",
        "sliceName" : "clinicalimpression",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:clinicalimpression.resource",
        "path" : "Bundle.entry.resource",
        "min" : 1,
        "type" : [
          {
            "code" : "ClinicalImpression"
          }
        ]
      },
      {
        "id" : "Bundle.entry:condition",
        "path" : "Bundle.entry",
        "sliceName" : "condition",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:condition.resource",
        "path" : "Bundle.entry.resource",
        "min" : 1,
        "type" : [
          {
            "code" : "Condition",
            "profile" : [
              "http://hl7.org/fhir/uv/ips/StructureDefinition/Condition-uv-ips"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:consent",
        "path" : "Bundle.entry",
        "sliceName" : "consent",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:consent.resource",
        "path" : "Bundle.entry.resource",
        "min" : 1,
        "type" : [
          {
            "code" : "Consent"
          }
        ]
      },
      {
        "id" : "Bundle.entry:device",
        "path" : "Bundle.entry",
        "sliceName" : "device",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:device.resource",
        "path" : "Bundle.entry.resource",
        "min" : 1,
        "type" : [
          {
            "code" : "Device"
          }
        ]
      },
      {
        "id" : "Bundle.entry:deviceusestatement",
        "path" : "Bundle.entry",
        "sliceName" : "deviceusestatement",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:deviceusestatement.resource",
        "path" : "Bundle.entry.resource",
        "min" : 1,
        "type" : [
          {
            "code" : "DeviceUseStatement",
            "profile" : [
              "http://hl7.org/fhir/uv/ips/StructureDefinition/DeviceUseStatement-uv-ips"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:diagnosticreport",
        "path" : "Bundle.entry",
        "sliceName" : "diagnosticreport",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:diagnosticreport.resource",
        "path" : "Bundle.entry.resource",
        "min" : 1,
        "type" : [
          {
            "code" : "DiagnosticReport",
            "profile" : [
              "http://hl7.org/fhir/uv/ips/StructureDefinition/DiagnosticReport-uv-ips"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:documentreference",
        "path" : "Bundle.entry",
        "sliceName" : "documentreference",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:documentreference.resource",
        "path" : "Bundle.entry.resource",
        "min" : 1,
        "type" : [
          {
            "code" : "DocumentReference"
          }
        ]
      },
      {
        "id" : "Bundle.entry:flag",
        "path" : "Bundle.entry",
        "sliceName" : "flag",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:flag.resource",
        "path" : "Bundle.entry.resource",
        "min" : 1,
        "type" : [
          {
            "code" : "Flag",
            "profile" : [
              "http://hl7.org/fhir/uv/ips/StructureDefinition/Flag-alert-uv-ips"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:imagingstudy",
        "path" : "Bundle.entry",
        "sliceName" : "imagingstudy",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:imagingstudy.resource",
        "path" : "Bundle.entry.resource",
        "min" : 1,
        "type" : [
          {
            "code" : "ImagingStudy",
            "profile" : [
              "http://hl7.org/fhir/uv/ips/StructureDefinition/ImagingStudy-uv-ips"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:immunization",
        "path" : "Bundle.entry",
        "sliceName" : "immunization",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:immunization.resource",
        "path" : "Bundle.entry.resource",
        "min" : 1,
        "type" : [
          {
            "code" : "Immunization",
            "profile" : [
              "http://hl7.org/fhir/uv/ips/StructureDefinition/Immunization-uv-ips"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:immunizationrecommendation",
        "path" : "Bundle.entry",
        "sliceName" : "immunizationrecommendation",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:immunizationrecommendation.resource",
        "path" : "Bundle.entry.resource",
        "min" : 1,
        "type" : [
          {
            "code" : "ImmunizationRecommendation"
          }
        ]
      },
      {
        "id" : "Bundle.entry:medication",
        "path" : "Bundle.entry",
        "sliceName" : "medication",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:medication.resource",
        "path" : "Bundle.entry.resource",
        "min" : 1,
        "type" : [
          {
            "code" : "Medication",
            "profile" : [
              "http://hl7.org/fhir/uv/ips/StructureDefinition/Medication-uv-ips"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:medicationrequest",
        "path" : "Bundle.entry",
        "sliceName" : "medicationrequest",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:medicationrequest.resource",
        "path" : "Bundle.entry.resource",
        "min" : 1,
        "type" : [
          {
            "code" : "MedicationRequest",
            "profile" : [
              "http://hl7.org/fhir/uv/ips/StructureDefinition/MedicationRequest-uv-ips"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:medicationstatement",
        "path" : "Bundle.entry",
        "sliceName" : "medicationstatement",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:medicationstatement.resource",
        "path" : "Bundle.entry.resource",
        "min" : 1,
        "type" : [
          {
            "code" : "MedicationStatement",
            "profile" : [
              "http://hl7.org/fhir/uv/ips/StructureDefinition/MedicationStatement-uv-ips"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:practitioner",
        "path" : "Bundle.entry",
        "sliceName" : "practitioner",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:practitioner.resource",
        "path" : "Bundle.entry.resource",
        "min" : 1,
        "type" : [
          {
            "code" : "Practitioner",
            "profile" : [
              "http://hl7.org/fhir/uv/ips/StructureDefinition/Practitioner-uv-ips"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:practitionerrole",
        "path" : "Bundle.entry",
        "sliceName" : "practitionerrole",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:practitionerrole.resource",
        "path" : "Bundle.entry.resource",
        "min" : 1,
        "type" : [
          {
            "code" : "PractitionerRole",
            "profile" : [
              "http://hl7.org/fhir/uv/ips/StructureDefinition/PractitionerRole-uv-ips"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:procedure",
        "path" : "Bundle.entry",
        "sliceName" : "procedure",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:procedure.resource",
        "path" : "Bundle.entry.resource",
        "min" : 1,
        "type" : [
          {
            "code" : "Procedure",
            "profile" : [
              "http://hl7.org/fhir/uv/ips/StructureDefinition/Procedure-uv-ips"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:observation-pregnancy-edd",
        "path" : "Bundle.entry",
        "sliceName" : "observation-pregnancy-edd",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:observation-pregnancy-edd.resource",
        "path" : "Bundle.entry.resource",
        "min" : 1,
        "type" : [
          {
            "code" : "Observation",
            "profile" : [
              "http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-pregnancy-edd-uv-ips"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:observation-pregnancy-outcome",
        "path" : "Bundle.entry",
        "sliceName" : "observation-pregnancy-outcome",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:observation-pregnancy-outcome.resource",
        "path" : "Bundle.entry.resource",
        "min" : 1,
        "type" : [
          {
            "code" : "Observation",
            "profile" : [
              "http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-pregnancy-outcome-uv-ips"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:observation-pregnancy-status",
        "path" : "Bundle.entry",
        "sliceName" : "observation-pregnancy-status",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:observation-pregnancy-status.resource",
        "path" : "Bundle.entry.resource",
        "min" : 1,
        "type" : [
          {
            "code" : "Observation",
            "profile" : [
              "http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-pregnancy-status-uv-ips"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:observation-alcohol-use",
        "path" : "Bundle.entry",
        "sliceName" : "observation-alcohol-use",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:observation-alcohol-use.resource",
        "path" : "Bundle.entry.resource",
        "min" : 1,
        "type" : [
          {
            "code" : "Observation",
            "profile" : [
              "http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-alcoholuse-uv-ips"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:observation-tobacco-use",
        "path" : "Bundle.entry",
        "sliceName" : "observation-tobacco-use",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:observation-tobacco-use.resource",
        "path" : "Bundle.entry.resource",
        "min" : 1,
        "type" : [
          {
            "code" : "Observation",
            "profile" : [
              "http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-tobaccouse-uv-ips"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:observation-results-laboratory-pathology",
        "path" : "Bundle.entry",
        "sliceName" : "observation-results-laboratory-pathology",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:observation-results-laboratory-pathology.resource",
        "path" : "Bundle.entry.resource",
        "min" : 1,
        "type" : [
          {
            "code" : "Observation",
            "profile" : [
              "http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-results-laboratory-pathology-uv-ips"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:observation-results-radiology",
        "path" : "Bundle.entry",
        "sliceName" : "observation-results-radiology",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:observation-results-radiology.resource",
        "path" : "Bundle.entry.resource",
        "min" : 1,
        "type" : [
          {
            "code" : "Observation",
            "profile" : [
              "http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-results-radiology-uv-ips"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:observation-vital-signs",
        "path" : "Bundle.entry",
        "sliceName" : "observation-vital-signs",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:observation-vital-signs.resource",
        "path" : "Bundle.entry.resource",
        "min" : 1,
        "type" : [
          {
            "code" : "Observation",
            "profile" : ["http://hl7.org/fhir/StructureDefinition/vitalsigns"]
          }
        ]
      },
      {
        "id" : "Bundle.entry:organization",
        "path" : "Bundle.entry",
        "sliceName" : "organization",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:organization.resource",
        "path" : "Bundle.entry.resource",
        "min" : 1,
        "type" : [
          {
            "code" : "Organization",
            "profile" : [
              "http://hl7.org/fhir/uv/ips/StructureDefinition/Organization-uv-ips"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:specimen",
        "path" : "Bundle.entry",
        "sliceName" : "specimen",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:specimen.resource",
        "path" : "Bundle.entry.resource",
        "min" : 1,
        "type" : [
          {
            "code" : "Specimen",
            "profile" : [
              "http://hl7.org/fhir/uv/ips/StructureDefinition/Specimen-uv-ips"
            ]
          }
        ]
      }
    ]
  }
}

```
