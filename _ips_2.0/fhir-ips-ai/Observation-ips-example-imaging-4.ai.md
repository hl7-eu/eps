# Observation: imaging CT Abdomen W contrast IV, sub-observations - International Patient Summary Implementation Guide v2.0.0

## Example Observation: Observation: imaging CT Abdomen W contrast IV, sub-observations

Language: en

Profile: [Observation Results - Radiology (IPS)](StructureDefinition-Observation-results-radiology-uv-ips.md)

**partOf**: [ImagingStudy: identifier = urn:dicom:uid#DICOM Unique Id#urn:oid:2.16.840.1.113883.2.9.999.1.12345; status = available; procedureCode = SPECT Heart perfusion and wall motion at rest and W stress and W Tl-201 IV and W Tc-99m Sestamibi IV; reasonCode =](ImagingStudy-TII-ImagingStudy-5-1.md)

**status**: Final

**category**: Imaging

**code**: Upper abdomen with the administration of oral and intravenous contrast (example-4)

**subject**: [Alexander Heig Male, DoB: 1957 ( http://trilliumbridge.eu/fhir/demos/eumfh/inject#39-07)](Patient-eumfh-39-07.md)

**effective**: 1995-06-08

**performer**: 

* [Practitioner Mark Antonio](Practitioner-eumfh-39-07.md)
* [Organization Someplace General Hospital](Organization-TII-Organization1.md)

**value**: 3 cm nodule present in the inferior medial aspect of right liver lobe. Contrast enhancement pattern consistent with the diagnosis of hemangioma.

> **component****code**:Procedure Description**value**: Serial imaging was obtained in the upper abdomen with the administration of oral and intravenous contrast.

> **component****code**:Finding**value**: The examination demonstrates a well circumscribed 3 cm lesion present within the medial aspect of the inferior right liver lobe. Initial evaluation demonstrates lack of contrast enhancement. Subsequent imaging (not shown) demonstrated typical contrast enhancement pattern of a benign hemangioma of the liver. The remaining contrast enhancement pattern in the liver is normal. There is normal appearance of the adrenal glands, spleen, kidneys, and pancreas. There is no evidence of liver metastasis.



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "ips-example-imaging-4",
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
        "code" : "79103-8",
        "display" : "CT Abdomen W contrast IV"
      }
    ],
    "text" : "Upper abdomen with the administration of oral and intravenous contrast (example-4)"
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
  "valueString" : "3 cm nodule present in the inferior medial aspect of right liver lobe. Contrast enhancement pattern consistent with the diagnosis of hemangioma.",
  "component" : [
    {
      "code" : {
        "coding" : [
          {
            "system" : "http://dicom.nema.org/resources/ontology/DCM",
            "code" : "121065",
            "display" : "Procedure Description"
          }
        ]
      },
      "valueString" : "Serial imaging was obtained in the upper abdomen with the administration of oral and intravenous contrast."
    },
    {
      "code" : {
        "coding" : [
          {
            "system" : "http://dicom.nema.org/resources/ontology/DCM",
            "code" : "121071",
            "display" : "Finding"
          }
        ]
      },
      "valueString" : "The examination demonstrates a well circumscribed 3 cm lesion present within the medial aspect of the inferior right liver lobe. Initial evaluation demonstrates lack of contrast enhancement. Subsequent imaging (not shown) demonstrated typical contrast enhancement pattern of a benign hemangioma of the liver. The remaining contrast enhancement pattern in the liver is normal. There is normal appearance of the adrenal glands, spleen, kidneys, and pancreas. There is no evidence of liver metastasis."
    }
  ]
}

```
