# Patient: male patient - International Patient Summary Implementation Guide v2.0.0

## Example Patient: Patient: male patient

Language: en

Profile: [Patient (IPS)](StructureDefinition-Patient-uv-ips.md)

Alexander Heig Male, DoB: 1957 ( http://trilliumbridge.eu/fhir/demos/eumfh/inject#39-07)

-------

| | |
| :--- | :--- |
| Active: | true |
| Other Id: | `http://trilliumbridge.eu/fhir/demos/eumfh/patient_id`/EUR01P0001 |
| Patient Citizenship: | * code: United States of America
 |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "eumfh-39-07",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/uv/ips/StructureDefinition/Patient-uv-ips"
    ]
  },
  "language" : "en",
  "extension" : [
    {
      "extension" : [
        {
          "url" : "code",
          "valueCodeableConcept" : {
            "coding" : [
              {
                "system" : "urn:iso:std:iso:3166",
                "code" : "US",
                "display" : "United States of America"
              }
            ]
          }
        }
      ],
      "url" : "http://hl7.org/fhir/StructureDefinition/patient-citizenship"
    }
  ],
  "identifier" : [
    {
      "system" : "http://trilliumbridge.eu/fhir/demos/eumfh/inject",
      "value" : "39-07"
    },
    {
      "system" : "http://trilliumbridge.eu/fhir/demos/eumfh/patient_id",
      "value" : "EUR01P0001"
    }
  ],
  "active" : true,
  "name" : [
    {
      "family" : "Heig",
      "given" : ["Alexander"]
    }
  ],
  "gender" : "male",
  "birthDate" : "1957"
}

```
