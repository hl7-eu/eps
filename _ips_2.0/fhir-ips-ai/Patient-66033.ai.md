# Patient: minimal example - International Patient Summary Implementation Guide v2.0.0

## Example Patient: Patient: minimal example

Language: en

Profile: [Patient (IPS)](StructureDefinition-Patient-uv-ips.md)

Marie Lux-Brennard Female, DoB: 1998-04-17 ( urn:oid:1.3.182.4.4#1998041799999)

-------

| | |
| :--- | :--- |
| Other Id: | [Uniform Resource Identifier (URI)](http://terminology.hl7.org/6.2.0/NamingSystem-uri.html)/urn:uuid:647515ed-0d5e-4c99-b23d-073fbc593f76 |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "66033",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/uv/ips/StructureDefinition/Patient-uv-ips"
    ]
  },
  "language" : "en",
  "identifier" : [
    {
      "system" : "urn:oid:1.3.182.4.4",
      "value" : "1998041799999"
    },
    {
      "system" : "urn:ietf:rfc:3986",
      "value" : "urn:uuid:647515ed-0d5e-4c99-b23d-073fbc593f76"
    }
  ],
  "name" : [
    {
      "family" : "Lux-Brennard",
      "given" : ["Marie"]
    }
  ],
  "gender" : "female",
  "birthDate" : "1998-04-17"
}

```
