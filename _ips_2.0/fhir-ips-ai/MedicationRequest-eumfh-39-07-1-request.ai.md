# MedicationRequest - Simvastatin Request - International Patient Summary Implementation Guide v2.0.0

## Example MedicationRequest: MedicationRequest - Simvastatin Request

Language: en

Profile: [MedicationRequest (IPS)](StructureDefinition-MedicationRequest-uv-ips.md)

**status**: Active

**intent**: Order

**medication**: [simvastatin](Medication-eumfh-39-07-1.md)

**subject**: [Alexander Heig (inject 39-07)](Patient-eumfh-39-07.md)

> **dosageInstruction****text**: 40 mg/day**timing**: Once per 1 day

### DoseAndRates

| | |
| :--- | :--- |
| - | **Dose[x]** |
| * | 40 mg(Details: UCUM codemg = 'mg') |


### DispenseRequests

| | |
| :--- | :--- |
| - | **ValidityPeriod** |
| * | 2021-01-01 --> (ongoing) |



## Resource Content

```json
{
  "resourceType" : "MedicationRequest",
  "id" : "eumfh-39-07-1-request",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/uv/ips/StructureDefinition/MedicationRequest-uv-ips"
    ]
  },
  "language" : "en",
  "status" : "active",
  "intent" : "order",
  "medicationReference" : {
    "reference" : "Medication/eumfh-39-07-1",
    "display" : "simvastatin"
  },
  "subject" : {
    "reference" : "Patient/eumfh-39-07",
    "display" : "Alexander Heig (inject 39-07)"
  },
  "dosageInstruction" : [
    {
      "text" : "40 mg/day",
      "timing" : {
        "repeat" : {
          "frequency" : 1,
          "period" : 1,
          "periodUnit" : "d"
        }
      },
      "doseAndRate" : [
        {
          "doseQuantity" : {
            "value" : 40,
            "unit" : "mg",
            "system" : "http://unitsofmeasure.org",
            "code" : "mg"
          }
        }
      ]
    }
  ],
  "dispenseRequest" : {
    "validityPeriod" : {
      "start" : "2021-01-01"
    }
  }
}

```
