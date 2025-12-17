### Missing Data

This page provides general rules to deal with missing data, not all these rules may apply to this version of this guide. 

The content of this page is adapted from the [HL7 International Patient Summary Implementation Guide (IPS)](https://hl7.org/fhir/uv/ips/)


#### Optional Data Elements (cardinality of 0..1 or 0..\*)

If a content creator does not have data to be included in the resources, the data element is omitted.

Note: a content creator  may have no data to be included in the resources, either because there are no data, data are not allowed to be shared, or because data available are not pertinent within the scope of the context of use.

#### Required Data Elements (cardinality of 1..1 or 1..\*)

If a content creator does not have data to be included in the resources, the reason for the absence SHALL be specified as follows:

1.  For _non-coded_ data elements, use the [Data Absent Reason Extension](http://hl7.org/fhir/R4/extension-data-absent-reason.html) in the data type. 
    Example: Patient resource where the birthDate is not known (note that since birthDate is a date primitive datatype, in JSON the \_birthDate sibling property is used for the extension). Other required properties of Patient resource are omitted (shown by ...) in the simplified example below.

    ```
    {
      "resourceType" : "Patient",
      ...
      "_birthDate": {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/StructureDefinition/data-absent-reason",
            "valueCode" : "unknown"
          }
        ]
      },
      ...
    }
    ```

    Example: Procedure resource where the performed value is not known. The performed[x] is a choice of type, although any performed[x] choice element can be used to include the data absent reason extension, in this case performedDateTime is must support and hence a good choice (note that performedDateTime is a dateTime primitive datatype, in JSON the \_performedDateTime sibling property is used for the extension). Other required properties of Procedure resource are omitted (shown by ...) in the simplified example below.

    ```
    {
      "resourceType" : "Procedure",
      ...
      "_performedDateTime": {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/StructureDefinition/data-absent-reason",
            "valueCode" : "unknown"
          }
        ]
      },
      ...
    }
    ```

1.  For _coded_ data elements:
    - _example_, _preferred_, or _extensible_ binding strengths (CodeableConcept datatypes):
      - if the source systems has text but no coded data, only the text element is used.
      - if there is neither text or a code representing actual (i.e non-exceptional) concepts:
        - use the appropriate exceptional concept code from the element's binding value set, if available; or
        - use the appropriate concept code from the [Data Absent Reason Code System](http://hl7.org/fhir/R4/valueset-data-absent-reason.html).
    - _required_ binding strength (CodeableConcept or code datatypes):
      - use the appropriate exceptional concept code from the element's binding value set

    Example: Observation Results - Laboratory/Pathology (resources) resource where the code is not allowed to be shared (e.g. suppressed), the code element contains the data-absent-reason extension. Other required properties of Observation resource are omitted (shown by ...) in the simplified example below.

    ```
    {
      "resourceType" : "Observation",
      ...
      "code": {
        "coding" : [
          {
            "system" : "http://terminology.hl7.org/CodeSystem/data-absent-reason",
            "code" : "masked"
          }
        ]
      },
      ...
    }
    ```
