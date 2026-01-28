# Observation - Social History Alcohol Use - International Patient Summary Implementation Guide v2.0.0

## Example Observation: Observation - Social History Alcohol Use

Language: en

Profile: [Observation Social History - Alcohol Use (IPS)](StructureDefinition-Observation-alcoholuse-uv-ips.md)

**status**: Final

**code**: Alcoholic drinks per day

**subject**: [Martha DeLarosa Female, DoB: 1992-05-01 ( urn:oid:2.16.840.1.113883.2.4.6.3#574687583)](Patient-patient-example-female.md)

**effective**: 2019-07-15

**performer**: [Alexander Heig Male, DoB: 1957 ( http://trilliumbridge.eu/fhir/demos/eumfh/inject#39-07)](Patient-eumfh-39-07.md)

**value**: 2 wine glasses per day(Details: UCUM code/d = '/d')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "alcohol-use-example",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-alcoholuse-uv-ips"
    ]
  },
  "language" : "en",
  "status" : "final",
  "code" : {
    "coding" : [
      {
        "system" : "http://loinc.org",
        "code" : "74013-4",
        "display" : "Alcoholic drinks per day"
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
  "valueQuantity" : {
    "value" : 2,
    "unit" : "wine glasses per day",
    "system" : "http://unitsofmeasure.org",
    "code" : "/d"
  }
}

```
