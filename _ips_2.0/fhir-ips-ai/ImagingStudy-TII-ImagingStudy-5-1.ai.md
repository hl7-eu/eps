# ImagingStudy - Referred DICOM Study - International Patient Summary Implementation Guide v2.0.0

## Example ImagingStudy: ImagingStudy - Referred DICOM Study

Language: en

Profile: [ImagingStudy (IPS)](StructureDefinition-ImagingStudy-uv-ips.md)

**identifier**: [DICOM Unique Id](http://terminology.hl7.org/6.2.0/NamingSystem-dui.html)/urn:oid:2.16.840.1.113883.2.9.999.1.12345

**status**: Available

**subject**: [Alexander Heig Male, DoB: 1957 ( http://trilliumbridge.eu/fhir/demos/eumfh/inject#39-07)](Patient-eumfh-39-07.md)

**procedureCode**: SPECT Heart perfusion and wall motion at rest and W stress and W Tl-201 IV and W Tc-99m Sestamibi IV

**reasonCode**: Chest pain, hypertension, type II diabetes mellitus.

### Series

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Uid** | **Modality** | **BodySite** |
| * | 2.16.840.1.113883.2.9.999.2.12345 | [DICOM NM](http://hl7.org/fhir/R4/codesystem-dicom-dcim.html#dicom-dcim-NM): Nuclear Medicine | [SNOMED CT 80891009](http://snomed.info/id/80891009): Heart |



## Resource Content

```json
{
  "resourceType" : "ImagingStudy",
  "id" : "TII-ImagingStudy-5-1",
  "meta" : {
    "profile" : [
      "http://hl7.org/fhir/uv/ips/StructureDefinition/ImagingStudy-uv-ips"
    ]
  },
  "language" : "en",
  "identifier" : [
    {
      "system" : "urn:dicom:uid",
      "value" : "urn:oid:2.16.840.1.113883.2.9.999.1.12345"
    }
  ],
  "status" : "available",
  "subject" : {
    "reference" : "Patient/eumfh-39-07"
  },
  "procedureCode" : [
    {
      "coding" : [
        {
          "system" : "http://loinc.org",
          "code" : "49569-7",
          "display" : "SPECT Heart perfusion and wall motion at rest and W stress and W Tl-201 IV and W Tc-99m Sestamibi IV"
        }
      ]
    }
  ],
  "reasonCode" : [
    {
      "text" : "Chest pain, hypertension, type II diabetes mellitus."
    }
  ],
  "series" : [
    {
      "uid" : "2.16.840.1.113883.2.9.999.2.12345",
      "modality" : {
        "system" : "http://dicom.nema.org/resources/ontology/DCM",
        "code" : "NM",
        "display" : "Nuclear Medicine"
      },
      "bodySite" : {
        "system" : "http://snomed.info/sct",
        "code" : "80891009",
        "display" : "Heart"
      }
    }
  ]
}

```
