# Device - Device Observer - International Patient Summary Implementation Guide v2.0.0

## Example Device: Device - Device Observer

Language: en

Profile: [Device (IPS)](StructureDefinition-Device-uv-ips.md)

**identifier**: `http://www.example.com/devicesID`/12345

**manufacturer**: Imaging Devices Manufacturer

### DeviceNames

| | | |
| :--- | :--- | :--- |
| - | **Name** | **Type** |
| * | H.I.A. BEGIN | Model name |

**modelNumber**: 2.0.1



## Resource Content

```json
{
  "resourceType" : "Device",
  "id" : "ips-example-imaging-1",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/uv/ips/StructureDefinition/Device-uv-ips"
    ]
  },
  "language" : "en",
  "identifier" : [
    {
      "system" : "http://www.example.com/devicesID",
      "value" : "12345"
    }
  ],
  "manufacturer" : "Imaging Devices Manufacturer",
  "deviceName" : [
    {
      "name" : "H.I.A. BEGIN",
      "type" : "model-name"
    }
  ],
  "modelNumber" : "2.0.1"
}

```
