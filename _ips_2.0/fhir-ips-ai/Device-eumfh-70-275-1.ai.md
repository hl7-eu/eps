# Device - No Known Devices in Use - International Patient Summary Implementation Guide v2.0.0

## Example Device: Device - No Known Devices in Use

Language: en

Profile: [Device (IPS)](StructureDefinition-Device-uv-ips.md)

**type**: No known device use (situation)

**patient**: [Annelise Black (inject 70-275)](Patient-eumfh-39-07.md)



## Resource Content

```json
{
  "resourceType" : "Device",
  "id" : "eumfh-70-275-1",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/uv/ips/StructureDefinition/Device-uv-ips"
    ]
  },
  "language" : "en",
  "type" : {
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "code" : "787483001",
        "display" : "No known device use (situation)"
      }
    ]
  },
  "patient" : {
    "reference" : "Patient/eumfh-39-07",
    "display" : "Annelise Black (inject 70-275)"
  }
}

```
