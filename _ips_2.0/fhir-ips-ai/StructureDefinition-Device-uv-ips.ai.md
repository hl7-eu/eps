# Device (IPS) - International Patient Summary Implementation Guide v2.0.0

## Resource Profile: Device (IPS) 

 
This profile represents the constraints applied to the Device resource by the International Patient Summary (IPS) FHIR Implementation Guide, based on FHIR R4. A device used by or implanted on the patient is described in the patient summary as an instance of a Device resource constrained by this profile. 

 This profile follows the [HL7 Cross Paradigm Implementation Guide: UDI Pattern](https://www.hl7.org/implement/standards/product_brief.cfm?product_id=487) guidelines for exchanging information about the use and implantation of medical devices in patients. While a unique device identifier (UDI) is not required in this profile, it consists of a unique numeric or alphanumeric code, which may be machine-readable. The UDI generally consists of a mandatory Device Identifier (DI) and a conditional Production identifier (PI) that identifies one or more of the five UDI-PI elements. The UDI and its components may be mapped using the guidance in [FHIR UDI Mapping](https://hl7.org/fhir/R4/device-mappings.html#udi) 

**Usages:**

* Refer to this Profile: [DeviceUseStatement (IPS)](StructureDefinition-DeviceUseStatement-uv-ips.md)
* Examples for this Profile: [Device/eumfh-70-275-1](Device-eumfh-70-275-1.md) and [Device/ips-example-imaging-1](Device-ips-example-imaging-1.md)
* CapabilityStatements using this Profile: [IPS Server Capability Statement](CapabilityStatement-ips-server.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.uv.ips|current/StructureDefinition/Device-uv-ips)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-Device-uv-ips.csv), [Excel](../StructureDefinition-Device-uv-ips.xlsx), [Schematron](../StructureDefinition-Device-uv-ips.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "Device-uv-ips",
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
  "url" : "http://hl7.org/fhir/uv/ips/StructureDefinition/Device-uv-ips",
  "version" : "2.0.0",
  "name" : "DeviceUvIps",
  "title" : "Device (IPS)",
  "status" : "active",
  "experimental" : false,
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
  "description" : "This profile represents the constraints applied to the Device resource by the International Patient Summary (IPS) FHIR Implementation Guide, based on FHIR R4. A device used by or implanted on the patient is described in the patient summary as an instance of a Device resource constrained by this profile.",
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
  "purpose" : "This profile constrains the representation of a medical device used by or implanted on the patient, in the context of the international patient summary as specified by the IPS project of HL7 International.",
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    },
    {
      "identity" : "udi",
      "uri" : "http://fda.gov/UDI",
      "name" : "UDI Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Device",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Device",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Device",
        "path" : "Device",
        "comment" : "This profile applies the rules defined by HL7 International for representing the UDI in the FHIR standard, by the document \"Medical Devices and Unique Device Identification (UDI) Pattern, Release 1\""
      },
      {
        "id" : "Device.udiCarrier",
        "path" : "Device.udiCarrier",
        "short" : "Unique Device Identifier (UDI) carrier. See IPS Device profile description for more detail and mapping link."
      },
      {
        "id" : "Device.type",
        "extension" : [
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:populate-if-known"
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
        "path" : "Device.type",
        "short" : "Type of device.",
        "type" : [
          {
            "code" : "CodeableConcept",
            "profile" : [
              "http://hl7.org/fhir/uv/ips/StructureDefinition/CodeableConcept-uv-ips"
            ]
          }
        ],
        "mustSupport" : true,
        "binding" : {
          "strength" : "preferred",
          "description" : "The type of device or a code for absent/unknown device",
          "valueSet" : "http://hl7.org/fhir/uv/ips/ValueSet/medical-devices-uv-ips"
        }
      }
    ]
  }
}

```
