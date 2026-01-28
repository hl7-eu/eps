# PractitionerRole - Minimal - International Patient Summary Implementation Guide v2.0.0

## Example PractitionerRole: PractitionerRole - Minimal

Language: en

Profile: [PractitionerRole (IPS)](StructureDefinition-PractitionerRole-uv-ips.md)

**practitioner**: [Practitioner Mark Antonio](Practitioner-eumfh-39-07.md)

**organization**: [Organization Best Diagnostic Department](Organization-simple-org.md)



## Resource Content

```json
{
  "resourceType" : "PractitionerRole",
  "id" : "simple-pr",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/uv/ips/StructureDefinition/PractitionerRole-uv-ips"
    ]
  },
  "language" : "en",
  "practitioner" : {
    "reference" : "Practitioner/eumfh-39-07"
  },
  "organization" : {
    "reference" : "Organization/simple-org"
  }
}

```
