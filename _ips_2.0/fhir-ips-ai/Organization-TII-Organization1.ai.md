# Organization: example - International Patient Summary Implementation Guide v2.0.0

## Example Organization: Organization: example

Language: en

Profile: [Organization (IPS)](StructureDefinition-Organization-uv-ips.md)

**name**: Someplace General Hospital

**address**: 123 Street Address Sometown Somecountry 



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "TII-Organization1",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/uv/ips/StructureDefinition/Organization-uv-ips"
    ]
  },
  "language" : "en",
  "name" : "Someplace General Hospital",
  "address" : [
    {
      "line" : ["123 Street Address"],
      "city" : "Sometown",
      "country" : "Somecountry"
    }
  ]
}

```
