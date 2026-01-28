# Resource Server



## Resource Content

```json
{
  "resourceType" : "Basic",
  "id" : "Server",
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
    },
    {
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-ActorDefinition.url",
      "valueUri" : "http://hl7.org/fhir/uv/ips/ActorDefinition/Server"
    },
    {
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-ActorDefinition.version",
      "valueString" : "2.0.0"
    },
    {
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-ActorDefinition.name",
      "valueString" : "Server"
    },
    {
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-ActorDefinition.title",
      "valueString" : "Server (IPS)"
    },
    {
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-ActorDefinition.status",
      "valueCode" : "active"
    },
    {
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-ActorDefinition.date",
      "valueDateTime" : "2025-07-22T14:31:30.239Z"
    },
    {
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-ActorDefinition.publisher",
      "valueString" : "HL7 International / Patient Care"
    },
    {
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-ActorDefinition.contact",
      "valueContactDetail" : {
        "name" : "HL7 International / Patient Care",
        "telecom" : [
          {
            "system" : "url",
            "value" : "http://www.hl7.org/Special/committees/patientcare"
          }
        ]
      }
    },
    {
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-ActorDefinition.description",
      "valueMarkdown" : "An IPS Server is a FHIR server acting as an [IPS Creator](./ActorDefinition-Creator.html) by providing conformant IPS documents in response to FHIR API requests."
    },
    {
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-ActorDefinition.jurisdiction",
      "valueCodeableConcept" : {
        "coding" : [
          {
            "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
            "code" : "001",
            "display" : "World"
          }
        ]
      }
    },
    {
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-ActorDefinition.type",
      "valueCode" : "system"
    },
    {
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-ActorDefinition.documentation",
      "valueMarkdown" : "An IPS Server is a FHIR server acting as an [IPS Creator](./ActorDefinition-Creator.html) by providing conformant IPS documents in response to FHIR API requests. \nThe IPS documents provided by an IPS Server may include stored and/or generated on demand document content, including historical and/or latest available information. \nThe set of capabilities and behaviours for the IPS Server actor is defined in [IPS Server Capability Statement](./CapabilityStatement-ips-server.html).\nWhile an IPS Server actor will fulfill all the obligations of an IPS Creator actor, not all IPS Creator actors need to meet the capabilities defined in the [IPS Server Capability Statement](./CapabilityStatement-ips-server.html)."
    },
    {
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-ActorDefinition.capabilities",
      "valueCanonical" : "http://hl7.org/fhir/uv/ips/CapabilityStatement/ips-server"
    },
    {
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-ActorDefinition.derivedFrom",
      "valueCanonical" : "http://hl7.org/fhir/uv/ips/ActorDefinition/Creator"
    }
  ],
  "code" : {
    "coding" : [
      {
        "system" : "http://hl7.org/fhir/fhir-types",
        "code" : "ActorDefinition"
      }
    ]
  }
}

```
