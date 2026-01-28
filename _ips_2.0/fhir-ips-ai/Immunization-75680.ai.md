# Immunization - Vaccin anti diphtérie-coqueluche-tétanos-poliomyélite (Luxembourg) - International Patient Summary Implementation Guide v2.0.0

## Example Immunization: Immunization - Vaccin anti diphtérie-coqueluche-tétanos-poliomyélite (Luxembourg)

Language: en

Profile: [Immunization (IPS)](StructureDefinition-Immunization-uv-ips.md)

**status**: Completed

**vaccineCode**: Vaccin anti diphtérie-coqueluche-tétanos-poliomyélite

**lotNumber**: AXK23RWERS

**expirationDate**: 2000-06-01

**patient**: [Marie Lux-Brennard Female, DoB: 1998-04-17 ( urn:oid:1.3.182.4.4#1998041799999)](Patient-66033.md)

**occurrence**: 1998-06-04 00:00:00+0200

**primarySource**: true

**site**: Cuisse droite

**route**: Voie intramusculaire



## Resource Content

```json
{
  "resourceType" : "Immunization",
  "id" : "75680",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/uv/ips/StructureDefinition/Immunization-uv-ips"
    ]
  },
  "language" : "fr-LU",
  "status" : "completed",
  "vaccineCode" : {
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "code" : "871878002",
        "display" : "Bordetella pertussis and Clostridium tetani and Corynebacterium diphtheriae and Human poliovirus antigens only vaccine product",
        "_display" : {
          "extension" : [
            {
              "extension" : [
                {
                  "url" : "lang",
                  "valueCode" : "fr-LU"
                },
                {
                  "url" : "content",
                  "valueString" : "Vaccin anti diphtérie-coqueluche-tétanos-poliomyélite"
                }
              ],
              "url" : "http://hl7.org/fhir/StructureDefinition/translation"
            }
          ]
        }
      },
      {
        "system" : "http://www.whocc.no/atc",
        "code" : "J07CA02",
        "display" : "diphtheria-pertussis-poliomyelitis-tetanus",
        "_display" : {
          "extension" : [
            {
              "extension" : [
                {
                  "url" : "lang",
                  "valueCode" : "fr-LU"
                },
                {
                  "url" : "content",
                  "valueString" : "DIPHTERIE - COQUELUCHE - POLIOMYELITE - TETANOS"
                }
              ],
              "url" : "http://hl7.org/fhir/StructureDefinition/translation"
            }
          ]
        }
      },
      {
        "system" : "https://cnk.apb.be/codings/cnk_product_codes",
        "code" : "2374429",
        "display" : "BOOSTRIX POLIO SER PREREMPL 1 X 0,5 ML"
      }
    ],
    "text" : "Vaccin anti diphtérie-coqueluche-tétanos-poliomyélite"
  },
  "patient" : {
    "reference" : "Patient/66033"
  },
  "occurrenceDateTime" : "1998-06-04T00:00:00+02:00",
  "primarySource" : true,
  "lotNumber" : "AXK23RWERS",
  "expirationDate" : "2000-06-01",
  "site" : {
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "code" : "11207009",
        "display" : "Right thigh",
        "_display" : {
          "extension" : [
            {
              "extension" : [
                {
                  "url" : "lang",
                  "valueCode" : "fr-LU"
                },
                {
                  "url" : "content",
                  "valueString" : "Cuisse droite"
                }
              ],
              "url" : "http://hl7.org/fhir/StructureDefinition/translation"
            }
          ]
        }
      }
    ],
    "text" : "Cuisse droite"
  },
  "route" : {
    "coding" : [
      {
        "system" : "http://standardterms.edqm.eu",
        "code" : "20035000",
        "display" : "Intramuscular use",
        "_display" : {
          "extension" : [
            {
              "extension" : [
                {
                  "url" : "lang",
                  "valueCode" : "fr-LU"
                },
                {
                  "url" : "content",
                  "valueString" : "Voie intramusculaire"
                }
              ],
              "url" : "http://hl7.org/fhir/StructureDefinition/translation"
            }
          ]
        }
      }
    ],
    "text" : "Voie intramusculaire"
  }
}

```
