# Medication - Simvastatin 40 MG Disintegrating Oral Tablet - International Patient Summary Implementation Guide v2.0.0

## Example Medication: Medication - Simvastatin 40 MG Disintegrating Oral Tablet

Language: en

Profile: [Medication (IPS)](StructureDefinition-Medication-uv-ips.md)

**code**: Simvastatin 40 MG Disintegrating Oral Tablet

**form**: Disintegrating Oral Product

### Ingredients

| | | |
| :--- | :--- | :--- |
| - | **Item[x]** | **Strength** |
| * | Simvastatin | 40 mcg(Details: UCUM codemg = 'mg')/1 tablet(Details: UCUM code1 = '1') |



## Resource Content

```json
{
  "resourceType" : "Medication",
  "id" : "eumfh-39-07-1",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/uv/ips/StructureDefinition/Medication-uv-ips"
    ]
  },
  "language" : "en",
  "code" : {
    "coding" : [
      {
        "system" : "http://www.nlm.nih.gov/research/umls/rxnorm",
        "code" : "757704",
        "display" : "Simvastatin 40 MG Disintegrating Oral Tablet"
      },
      {
        "system" : "http://www.whocc.no/atc",
        "code" : "C10AA01",
        "display" : "simvastatin"
      }
    ],
    "text" : "Simvastatin 40 MG Disintegrating Oral Tablet"
  },
  "form" : {
    "coding" : [
      {
        "system" : "http://www.nlm.nih.gov/research/umls/rxnorm",
        "code" : "1294713",
        "display" : "Disintegrating Oral Product"
      },
      {
        "system" : "http://standardterms.edqm.eu",
        "code" : "10219000",
        "display" : "Tablet"
      }
    ]
  },
  "ingredient" : [
    {
      "itemCodeableConcept" : {
        "coding" : [
          {
            "system" : "http://www.nlm.nih.gov/research/umls/rxnorm",
            "code" : "36567",
            "display" : "Simvastatin"
          }
        ]
      },
      "strength" : {
        "numerator" : {
          "value" : 40,
          "unit" : "mcg",
          "system" : "http://unitsofmeasure.org",
          "code" : "mg"
        },
        "denominator" : {
          "value" : 1,
          "unit" : "tablet",
          "system" : "http://unitsofmeasure.org",
          "code" : "1"
        }
      }
    }
  ]
}

```
