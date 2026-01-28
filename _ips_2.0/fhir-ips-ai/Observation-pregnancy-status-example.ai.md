# Observation: pregnancy status example - International Patient Summary Implementation Guide v2.0.0

## Example Observation: Observation: pregnancy status example

Language: en

Profile: [Observation Pregnancy - Status (IPS)](StructureDefinition-Observation-pregnancy-status-uv-ips.md)

**status**: Final

**code**: Pregnancy status

**subject**: [Martha DeLarosa Female, DoB: 1992-05-01 ( urn:oid:2.16.840.1.113883.2.4.6.3#574687583)](Patient-patient-example-female.md)

**effective**: 2020-01-10

**performer**: [Alexander Heig Male, DoB: 1957 ( http://trilliumbridge.eu/fhir/demos/eumfh/inject#39-07)](Patient-eumfh-39-07.md)

**value**: Pregnant

**hasMember**: [Observation Delivery date Estimated](Observation-pregnancy-edd-example.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "pregnancy-status-example",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-pregnancy-status-uv-ips"
    ]
  },
  "language" : "en",
  "status" : "final",
  "code" : {
    "coding" : [
      {
        "system" : "http://loinc.org",
        "code" : "82810-3",
        "display" : "Pregnancy status"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/patient-example-female"
  },
  "effectiveDateTime" : "2020-01-10",
  "performer" : [
    {
      "reference" : "Patient/eumfh-39-07"
    }
  ],
  "valueCodeableConcept" : {
    "coding" : [
      {
        "system" : "http://loinc.org",
        "code" : "LA15173-0",
        "display" : "Pregnant"
      }
    ]
  },
  "hasMember" : [
    {
      "reference" : "Observation/pregnancy-edd-example"
    }
  ]
}

```
