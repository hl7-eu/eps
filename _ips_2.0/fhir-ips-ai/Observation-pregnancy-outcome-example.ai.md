# Observation: pregnancy outcome example - International Patient Summary Implementation Guide v2.0.0

## Example Observation: Observation: pregnancy outcome example

Language: en

Profile: [Observation Pregnancy - Outcome (IPS)](StructureDefinition-Observation-pregnancy-outcome-uv-ips.md)

**status**: Final

**code**: [#] Births total

**subject**: [Martha DeLarosa Female, DoB: 1992-05-01 ( urn:oid:2.16.840.1.113883.2.4.6.3#574687583)](Patient-patient-example-female.md)

**effective**: 2020-01-10

**performer**: [Alexander Heig Male, DoB: 1957 ( http://trilliumbridge.eu/fhir/demos/eumfh/inject#39-07)](Patient-eumfh-39-07.md)

**value**: 1 1(Details: UCUM code1 = '1')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "pregnancy-outcome-example",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-pregnancy-outcome-uv-ips"
    ]
  },
  "language" : "en",
  "status" : "final",
  "code" : {
    "coding" : [
      {
        "system" : "http://loinc.org",
        "code" : "11640-0",
        "display" : "[#] Births total"
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
  "valueQuantity" : {
    "value" : 1,
    "system" : "http://unitsofmeasure.org",
    "code" : "1"
  }
}

```
