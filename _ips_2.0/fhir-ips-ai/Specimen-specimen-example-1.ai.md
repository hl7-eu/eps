# Specimen: example - International Patient Summary Implementation Guide v2.0.0

## Example Specimen: Specimen: example

Language: en

Profile: [Specimen (IPS)](StructureDefinition-Specimen-uv-ips.md)

**type**: Urine specimen

**subject**: [Marie Lux-Brennard Female, DoB: 1998-04-17 ( urn:oid:1.3.182.4.4#1998041799999)](Patient-66033.md)

### Collections

| | |
| :--- | :--- |
| - | **Method** |
| * | Urine specimen collection, clean catch |



## Resource Content

```json
{
  "resourceType" : "Specimen",
  "id" : "specimen-example-1",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/uv/ips/StructureDefinition/Specimen-uv-ips"
    ]
  },
  "language" : "en",
  "type" : {
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "code" : "122575003",
        "display" : "Urine specimen"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/66033"
  },
  "collection" : {
    "method" : {
      "coding" : [
        {
          "system" : "http://snomed.info/sct",
          "code" : "73416001",
          "display" : "Urine specimen collection, clean catch"
        }
      ]
    }
  }
}

```
