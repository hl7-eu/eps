# Organization: lab example - International Patient Summary Implementation Guide v2.0.0

## Example Organization: Organization: lab example

Language: en

Profile: [Organization (IPS)](StructureDefinition-Organization-uv-ips.md)

**active**: true

**type**: Hospital-based laboratory facility

**name**: Best Hospital Laboratory



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "lab-org-example",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/uv/ips/StructureDefinition/Organization-uv-ips"
    ]
  },
  "language" : "en",
  "active" : true,
  "type" : [
    {
      "coding" : [
        {
          "system" : "http://snomed.info/sct",
          "code" : "73588009",
          "display" : "Hospital-based laboratory facility"
        }
      ]
    }
  ],
  "name" : "Best Hospital Laboratory"
}

```
