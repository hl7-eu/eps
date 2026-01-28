# Observation: SH tobacco use example - International Patient Summary Implementation Guide v2.0.0

## Example Observation: Observation: SH tobacco use example

Language: en

Profile: [Observation Social History - Tobacco Use (IPS)](StructureDefinition-Observation-tobaccouse-uv-ips.md)

**status**: Final

**code**: Tobacco smoking status

**subject**: [Martha DeLarosa Female, DoB: 1992-05-01 ( urn:oid:2.16.840.1.113883.2.4.6.3#574687583)](Patient-patient-example-female.md)

**effective**: 2019-07-15

**performer**: [Alexander Heig Male, DoB: 1957 ( http://trilliumbridge.eu/fhir/demos/eumfh/inject#39-07)](Patient-eumfh-39-07.md)

**value**: Former smoker



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "tobacco-use-example",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-tobaccouse-uv-ips"
    ]
  },
  "language" : "en",
  "status" : "final",
  "code" : {
    "coding" : [
      {
        "system" : "http://loinc.org",
        "code" : "72166-2",
        "display" : "Tobacco smoking status"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/patient-example-female"
  },
  "effectiveDateTime" : "2019-07-15",
  "performer" : [
    {
      "reference" : "Patient/eumfh-39-07"
    }
  ],
  "valueCodeableConcept" : {
    "coding" : [
      {
        "system" : "http://loinc.org",
        "code" : "LA15920-4",
        "display" : "Former smoker"
      }
    ]
  }
}

```
