# MedicationStatement - Ongoing Simvastatin Treatment - International Patient Summary Implementation Guide v2.0.0

## Example MedicationStatement: MedicationStatement - Ongoing Simvastatin Treatment

Language: en

Profile: [MedicationStatement (IPS)](StructureDefinition-MedicationStatement-uv-ips.md)

**status**: Active

**medication**: [simvastatin](Medication-eumfh-39-07-1.md)

**subject**: [Alexander Heig (inject 39-07)](Patient-eumfh-39-07.md)

**effective**: 2014 --> (ongoing)

> **dosage****text**: 40 mg/day**timing**: Once per 1 day

### DoseAndRates

| | |
| :--- | :--- |
| - | **Dose[x]** |
| * | 40 mg(Details: UCUM codemg = 'mg') |




## Resource Content

```json
{
  "resourceType" : "MedicationStatement",
  "id" : "eumfh-39-07-1",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/uv/ips/StructureDefinition/MedicationStatement-uv-ips"
    ]
  },
  "language" : "en",
  "status" : "active",
  "medicationReference" : {
    "reference" : "Medication/eumfh-39-07-1",
    "display" : "simvastatin"
  },
  "subject" : {
    "reference" : "Patient/eumfh-39-07",
    "display" : "Alexander Heig (inject 39-07)"
  },
  "effectivePeriod" : {
    "start" : "2014"
  },
  "dosage" : [
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
  ]
}

```
