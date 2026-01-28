# Observation: imaging Chest X-ray - PA and lateral, with additional sub-observation including numeric range - International Patient Summary Implementation Guide v2.0.0

## Example Observation: Observation: imaging Chest X-ray - PA and lateral, with additional sub-observation including numeric range

Language: en

Profile: [Observation Results - Radiology (IPS)](StructureDefinition-Observation-results-radiology-uv-ips.md)

**partOf**: [ImagingStudy: identifier = urn:dicom:uid#DICOM Unique Id#urn:oid:2.16.840.1.113883.2.9.999.1.12345; status = available; procedureCode = SPECT Heart perfusion and wall motion at rest and W stress and W Tl-201 IV and W Tc-99m Sestamibi IV; reasonCode =](ImagingStudy-TII-ImagingStudy-5-1.md)

**status**: Final

**category**: Imaging

**code**: Chest X-ray - PA and lateral

**subject**: [Alexander Heig Male, DoB: 1957 ( http://trilliumbridge.eu/fhir/demos/eumfh/inject#39-07)](Patient-eumfh-39-07.md)

**effective**: 1995-06-08

**performer**: 

* [Practitioner Mark Antonio](Practitioner-eumfh-39-07.md)
* [Organization Someplace General Hospital](Organization-TII-Organization1.md)

**value**: FINDINGS: Normal cardiomediastinal silhouette. No focal parenchymal process. No pleural effusions. No pneumothorax. No acute osseous abnormalities. IMPRESSION: No acute cardiopulmonary findings.

### Components

| | | |
| :--- | :--- | :--- |
| - | **Code** | **Value[x]** |
| * | XR Chest Diameter.lateral | 27.8-29.6 cm |



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "ips-example-imaging-5",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-results-radiology-uv-ips"
    ]
  },
  "language" : "en",
  "partOf" : [
    {
      "reference" : "ImagingStudy/TII-ImagingStudy-5-1"
    }
  ],
  "status" : "final",
  "category" : [
    {
      "coding" : [
        {
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "imaging",
          "display" : "Imaging"
        }
      ]
    }
  ],
  "code" : {
    "coding" : [
      {
        "system" : "http://loinc.org",
        "code" : "42272-5",
        "display" : "XR Chest PA and Lateral"
      }
    ],
    "text" : "Chest X-ray - PA and lateral"
  },
  "subject" : {
    "reference" : "Patient/eumfh-39-07"
  },
  "effectiveDateTime" : "1995-06-08",
  "performer" : [
    {
      "reference" : "Practitioner/eumfh-39-07"
    },
    {
      "reference" : "Organization/TII-Organization1"
    }
  ],
  "valueString" : "FINDINGS: Normal cardiomediastinal silhouette. No focal parenchymal process. No pleural effusions. No pneumothorax. No acute osseous abnormalities. IMPRESSION: No acute cardiopulmonary findings.",
  "component" : [
    {
      "code" : {
        "coding" : [
          {
            "system" : "http://loinc.org",
            "code" : "38181-4",
            "display" : "XR Chest Diameter.lateral"
          }
        ]
      },
      "valueRange" : {
        "low" : {
          "value" : 27.8,
          "unit" : "cm",
          "system" : "http://unitsofmeasure.org",
          "code" : "cm"
        },
        "high" : {
          "value" : 29.6,
          "unit" : "cm",
          "system" : "http://unitsofmeasure.org",
          "code" : "cm"
        }
      }
    }
  ]
}

```
