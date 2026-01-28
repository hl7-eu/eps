# DeviceUseStatement - No Known Devices in Use - International Patient Summary Implementation Guide v2.0.0

## Example DeviceUseStatement: DeviceUseStatement - No Known Devices in Use

Language: en

Profile: [DeviceUseStatement (IPS)](StructureDefinition-DeviceUseStatement-uv-ips.md)

**status**: Active

**subject**: [Annelise Black (inject 70-275)](Patient-eumfh-39-07.md)

**timing**: Absent because : unknown

**device**: [Device: type = No known device use (situation)](Device-eumfh-70-275-1.md)



## Resource Content

```json
{
  "resourceType" : "DeviceUseStatement",
  "id" : "eumfh-70-275-1",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/uv/ips/StructureDefinition/DeviceUseStatement-uv-ips"
    ]
  },
  "language" : "en",
  "status" : "active",
  "subject" : {
    "reference" : "Patient/eumfh-39-07",
    "display" : "Annelise Black (inject 70-275)"
  },
  "_timingDateTime" : {
    "extension" : [
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/data-absent-reason",
        "valueCode" : "unknown"
      }
    ]
  },
  "device" : {
    "reference" : "Device/eumfh-70-275-1"
  }
}

```
