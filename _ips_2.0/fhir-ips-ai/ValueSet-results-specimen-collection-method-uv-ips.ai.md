# Results Specimen Collection Method - IPS - International Patient Summary Implementation Guide v2.0.0

## ValueSet: Results Specimen Collection Method - IPS 

 
IPS Specimen collection method codes value set. This value set includes codes from SNOMED CT®: all descendants or self of 129316008 |Aspiration - action (qualifier value)|; all descendants or self of 129314006 |Biopsy - action (qualifier value)|; all descendants or self of 129300006 |Puncture - action (qualifier value)|; all descendants or self of 129304002 |Excision - action (qualifier value)|; all descendants or self of 129323009 |Scraping - action (qualifier value)|; all descendants or self of 73416001 |Urine specimen collection, clean catch (procedure)|; all descendants or self of 225113003 |Timed urine collection (procedure)|; all descendants or self of 70777001 |Urine specimen collection, catheterized (procedure)|; all descendants or self of 386089008 |Collection of coughed sputum (procedure)|; all descendants or self of 278450005 |Finger-prick sampling (procedure)| 
SNOMED CT® ECL definition:
<< 129316008 |Aspiration - action (qualifier value)| OR << 129314006 |Biopsy - action (qualifier value)| OR << 129300006 |Puncture - action (qualifier value)| OR << 129304002 |Excision - action (qualifier value)| OR << 129323009 |Scraping - action (qualifier value)| OR << 73416001 |Urine specimen collection, clean catch (procedure)| OR << 225113003 |Timed urine collection (procedure)| OR << 70777001 |Urine specimen collection, catheterized (procedure)| OR << 386089008 |Collection of coughed sputum (procedure)| OR << 278450005 |Finger-prick sampling (procedure)| 

 **References** 

* [Specimen (IPS)](StructureDefinition-Specimen-uv-ips.md)

### Logical Definition (CLD)

Profile: [Shareable ValueSet](http://hl7.org/fhir/R4/shareablevalueset.html)

This value set includes codes based on the following rules:

* Include codes from[`http://snomed.info/sct`](http://www.snomed.org/)version Not Stated (use latest from terminology server) where concept is-a 129316008 (Aspiration - action)
* Include codes from[`http://snomed.info/sct`](http://www.snomed.org/)version Not Stated (use latest from terminology server) where concept is-a 129314006 (Biopsy - action)
* Include codes from[`http://snomed.info/sct`](http://www.snomed.org/)version Not Stated (use latest from terminology server) where concept is-a 129300006 (Puncture - action)
* Include codes from[`http://snomed.info/sct`](http://www.snomed.org/)version Not Stated (use latest from terminology server) where concept is-a 129304002 (Excision - action)
* Include codes from[`http://snomed.info/sct`](http://www.snomed.org/)version Not Stated (use latest from terminology server) where concept is-a 129323009 (Scraping - action)
* Include codes from[`http://snomed.info/sct`](http://www.snomed.org/)version Not Stated (use latest from terminology server) where concept is-a 73416001 (Urine specimen collection, clean catch)
* Include codes from[`http://snomed.info/sct`](http://www.snomed.org/)version Not Stated (use latest from terminology server) where concept is-a 225113003 (Timed urine collection)
* Include codes from[`http://snomed.info/sct`](http://www.snomed.org/)version Not Stated (use latest from terminology server) where concept is-a 70777001 (Urine specimen collection, catheterized)
* Include codes from[`http://snomed.info/sct`](http://www.snomed.org/)version Not Stated (use latest from terminology server) where concept is-a 386089008 (Collection of coughed sputum (procedure))
* Include codes from[`http://snomed.info/sct`](http://www.snomed.org/)version Not Stated (use latest from terminology server) where concept is-a 278450005 (Finger stick)

 

### Expansion

Expansion from tx.fhir.org based on SNOMED CT International edition 01-Feb 2025

This value set expansion contains 51 concepts.

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "results-specimen-collection-method-uv-ips",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg",
      "valueCode" : "pc"
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
      "valueInteger" : 3,
      "_valueInteger" : {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-conformance-derivedFrom",
            "valueCanonical" : "http://hl7.org/fhir/uv/ips/ImplementationGuide/hl7.fhir.uv.ips"
          }
        ]
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status",
      "valueCode" : "trial-use",
      "_valueCode" : {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-conformance-derivedFrom",
            "valueCanonical" : "http://hl7.org/fhir/uv/ips/ImplementationGuide/hl7.fhir.uv.ips"
          }
        ]
      }
    }
  ],
  "url" : "http://hl7.org/fhir/uv/ips/ValueSet/results-specimen-collection-method-uv-ips",
  "version" : "2.0.0",
  "name" : "ResultsSpecimenCollectionMethodUvIps",
  "title" : "Results Specimen Collection Method - IPS",
  "status" : "active",
  "experimental" : false,
  "date" : "2025-10-29T13:12:18+00:00",
  "publisher" : "HL7 International / Patient Care",
  "contact" : [
    {
      "name" : "HL7 International / Patient Care",
      "telecom" : [
        {
          "system" : "url",
          "value" : "http://www.hl7.org/Special/committees/patientcare"
        }
      ]
    }
  ],
  "description" : "IPS Specimen collection method codes value set.  This value set includes codes from SNOMED CT®: all descendants or self of 129316008 \\|Aspiration - action (qualifier value)\\|; all descendants or self of 129314006 \\|Biopsy - action (qualifier value)\\|; all descendants or self of 129300006 \\|Puncture - action (qualifier value)\\|; all descendants or self of 129304002 \\|Excision - action (qualifier value)\\|; all descendants or self of 129323009 \\|Scraping - action (qualifier value)\\|; all descendants or self of 73416001 \\|Urine specimen collection, clean catch (procedure)\\|; all descendants or self of 225113003 \\|Timed urine collection (procedure)\\|; all descendants or self of 70777001 \\|Urine specimen collection, catheterized (procedure)\\|; all descendants or self of 386089008 \\|Collection of coughed sputum (procedure)\\|; all descendants or self of 278450005 \\|Finger-prick sampling (procedure)\\| \n\nSNOMED CT® ECL definition:\\\n\\<\\< 129316008 \\|Aspiration - action (qualifier value)\\| OR \\<\\< 129314006 \\|Biopsy - action (qualifier value)\\| OR \\<\\< 129300006 \\|Puncture - action (qualifier value)\\| OR \\<\\< 129304002 \\|Excision - action (qualifier value)\\| OR \\<\\< 129323009 \\|Scraping - action (qualifier value)\\| OR \\<\\< 73416001 \\|Urine specimen collection, clean catch (procedure)\\| OR \\<\\< 225113003 \\|Timed urine collection (procedure)\\| OR \\<\\< 70777001 \\|Urine specimen collection, catheterized (procedure)\\| OR \\<\\< 386089008 \\|Collection of coughed sputum (procedure)\\| OR \\<\\< 278450005 \\|Finger-prick sampling (procedure)\\|",
  "jurisdiction" : [
    {
      "coding" : [
        {
          "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
          "code" : "001",
          "display" : "World"
        }
      ]
    }
  ],
  "immutable" : false,
  "copyright" : "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement",
  "compose" : {
    "include" : [
      {
        "system" : "http://snomed.info/sct",
        "filter" : [
          {
            "property" : "concept",
            "op" : "is-a",
            "value" : "129316008"
          }
        ]
      },
      {
        "system" : "http://snomed.info/sct",
        "filter" : [
          {
            "property" : "concept",
            "op" : "is-a",
            "value" : "129314006"
          }
        ]
      },
      {
        "system" : "http://snomed.info/sct",
        "filter" : [
          {
            "property" : "concept",
            "op" : "is-a",
            "value" : "129300006"
          }
        ]
      },
      {
        "system" : "http://snomed.info/sct",
        "filter" : [
          {
            "property" : "concept",
            "op" : "is-a",
            "value" : "129304002"
          }
        ]
      },
      {
        "system" : "http://snomed.info/sct",
        "filter" : [
          {
            "property" : "concept",
            "op" : "is-a",
            "value" : "129323009"
          }
        ]
      },
      {
        "system" : "http://snomed.info/sct",
        "filter" : [
          {
            "property" : "concept",
            "op" : "is-a",
            "value" : "73416001"
          }
        ]
      },
      {
        "system" : "http://snomed.info/sct",
        "filter" : [
          {
            "property" : "concept",
            "op" : "is-a",
            "value" : "225113003"
          }
        ]
      },
      {
        "system" : "http://snomed.info/sct",
        "filter" : [
          {
            "property" : "concept",
            "op" : "is-a",
            "value" : "70777001"
          }
        ]
      },
      {
        "system" : "http://snomed.info/sct",
        "filter" : [
          {
            "property" : "concept",
            "op" : "is-a",
            "value" : "386089008"
          }
        ]
      },
      {
        "system" : "http://snomed.info/sct",
        "filter" : [
          {
            "property" : "concept",
            "op" : "is-a",
            "value" : "278450005"
          }
        ]
      }
    ]
  }
}

```
