# Observation: pregnancy edd example - International Patient Summary Implementation Guide v2.0.0

## Example Observation: Observation: pregnancy edd example

Language: en

Profile: [Observation Pregnancy - Expected Delivery Date (IPS)](StructureDefinition-Observation-pregnancy-edd-uv-ips.md)

**status**: Final

**code**: Delivery date Estimated

**subject**: [Martha DeLarosa Female, DoB: 1992-05-01 ( urn:oid:2.16.840.1.113883.2.4.6.3#574687583)](Patient-patient-example-female.md)

**effective**: 2020-01-10

**performer**: [Alexander Heig Male, DoB: 1957 ( http://trilliumbridge.eu/fhir/demos/eumfh/inject#39-07)](Patient-eumfh-39-07.md)

**value**: 2020-05-02



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "pregnancy-edd-example",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-pregnancy-edd-uv-ips"
    ]
  },
  "language" : "en",
  "status" : "final",
  "code" : {
    "coding" : [
      {
        "system" : "http://loinc.org",
        "code" : "11778-8",
        "display" : "Delivery date Estimated"
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
  "valueDateTime" : "2020-05-02"
}

```
