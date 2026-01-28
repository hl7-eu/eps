# Vaccine Target Diseases - IPS - International Patient Summary Implementation Guide v2.0.0

## ValueSet: Vaccine Target Diseases - IPS 

 
IPS Vaccine target disease codes value set. This value set includes codes from SNOMED CT that represent specific vaccine target diseases (descendant concepts, if they exist, are not included). 
SNOMED CT® ECL definition:
4834000 |Typhoid fever (disorder)| OR 6142004 |Influenza (disorder)| OR 16541001 |Yellow fever (disorder)| OR 14189004 |Measles (disorder)| OR 14168008 |Rabies (disorder)| OR 18624000 |Disease caused by Rotavirus (disorder)| OR 23502006 |Lyme disease (disorder)| OR 23511006 |Meningococcal infectious disease (disorder)| OR 24662006 |Influenza caused by Influenza B virus (disorder)| OR 25225006 |Disease caused by Adenovirus (disorder)| OR 27836007 |Pertussis (disorder)| OR 32398004 |Bronchitis (disorder)| OR 36653000 |Rubella (disorder)| OR 36989005 |Mumps (disorder)| OR 37246009 |Disease caused by rickettsiae (disorder)| OR 38907003 |Varicella (disorder)| OR 40468003 |Viral hepatitis, type A (disorder)| OR 50711007 |Viral hepatitis type C (disorder)| OR 52947006 |Japanese encephalitis virus disease (disorder)| OR 56717001 |Tuberculosis (disorder)| OR 58750007 |Plague (disorder)| OR 63650001 |Cholera (disorder)| OR 66071002 |Viral hepatitis type B (disorder)| OR 67924001 |Smallpox (disorder)| OR 70036007 |Haemophilus influenzae pneumonia (disorder)| OR 75702008 |Brucellosis (disorder)| OR 76902006 |Tetanus (disorder)| OR 85904008 |Paratyphoid fever (disorder)| OR 111852003 |Vaccinia (disorder)| OR 186150001 |Enteritis caused by rotavirus (disorder)| OR 186772009 |Rocky Mountain spotted fever (disorder)| OR 186788009 |Q fever (disorder)| OR 240532009 |Human papillomavirus infection (disorder)| OR 240613006 |Typhus group rickettsial disease (disorder)| OR 372244006 |Malignant melanoma (disorder)| OR 397430003 |Diphtheria caused by Corynebacterium diphtheriae (disorder)| OR 398102009 |Acute poliomyelitis (disorder)| OR 398565003 |Infection caused by Clostridium botulinum (disorder)| OR 409498004 |Anthrax (disorder)| OR 417093003 |Disease caused by West Nile virus (disorder)| OR 442438000 |Influenza caused by Influenza A virus (disorder)| OR 442696006 |Influenza caused by Influenza A virus subtype H1N1 (disorder)| OR 450715004 |Influenza caused by Influenza A virus subtype H7 (disorder)| OR 707448003 |Influenza caused by Influenza A virus subtype H7N9 (disorder)| OR 709410003 |Haemophilus influenzae type b infection (disorder)| OR 712986001 |Encephalitis caused by tick-borne encephalitis virus (disorder)| OR 713083002 |Influenza caused by Influenza A virus subtype H5 (disorder)| OR 772810003 |Influenza caused by Influenza A virus subtype H3N2 (disorder)| OR 772828001 |Influenza caused by Influenza A virus subtype H5N1 (disorder)| OR 840539006 |Disease caused by severe acute respiratory syndrome coronavirus 2 (disorder)| 

 **References** 

* [Immunization (IPS)](StructureDefinition-Immunization-uv-ips.md)

### Logical Definition (CLD)

 

### Expansion

Expansion from tx.fhir.org based on SNOMED CT International edition 01-Feb 2025

This value set contains 50 concepts

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "target-diseases-uv-ips",
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
  "url" : "http://hl7.org/fhir/uv/ips/ValueSet/target-diseases-uv-ips",
  "version" : "2.0.0",
  "name" : "VaccineTargetDiseasesUvIps",
  "title" : "Vaccine Target Diseases - IPS",
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
  "description" : "IPS Vaccine target disease codes value set.  This value set includes codes from SNOMED CT that represent specific vaccine target diseases (descendant concepts, if they exist, are not included).\n\nSNOMED CT® ECL definition:\\\n4834000 \\|Typhoid fever (disorder)\\| OR 6142004 \\|Influenza (disorder)\\| OR 16541001 \\|Yellow fever (disorder)\\| OR 14189004 \\|Measles (disorder)\\| OR 14168008 \\|Rabies (disorder)\\| OR 18624000 \\|Disease caused by Rotavirus (disorder)\\| OR 23502006 \\|Lyme disease (disorder)\\| OR 23511006 \\|Meningococcal infectious disease (disorder)\\| OR 24662006 \\|Influenza caused by Influenza B virus (disorder)\\| OR 25225006 \\|Disease caused by Adenovirus (disorder)\\| OR 27836007 \\|Pertussis (disorder)\\| OR 32398004 \\|Bronchitis (disorder)\\| OR 36653000 \\|Rubella (disorder)\\| OR 36989005 \\|Mumps (disorder)\\| OR 37246009 \\|Disease caused by rickettsiae (disorder)\\| OR 38907003 \\|Varicella (disorder)\\| OR 40468003 \\|Viral hepatitis, type A (disorder)\\| OR 50711007 \\|Viral hepatitis type C (disorder)\\| OR 52947006 \\|Japanese encephalitis virus disease (disorder)\\| OR 56717001 \\|Tuberculosis (disorder)\\| OR 58750007 \\|Plague (disorder)\\| OR 63650001 \\|Cholera (disorder)\\| OR 66071002 \\|Viral hepatitis type B (disorder)\\| OR 67924001 \\|Smallpox (disorder)\\| OR 70036007 \\|Haemophilus influenzae pneumonia (disorder)\\| OR 75702008 \\|Brucellosis (disorder)\\| OR 76902006 \\|Tetanus (disorder)\\| OR 85904008 \\|Paratyphoid fever (disorder)\\| OR 111852003 \\|Vaccinia (disorder)\\| OR 186150001 \\|Enteritis caused by rotavirus (disorder)\\| OR 186772009 \\|Rocky Mountain spotted fever (disorder)\\| OR 186788009 \\|Q fever (disorder)\\| OR 240532009 \\|Human papillomavirus infection (disorder)\\| OR 240613006 \\|Typhus group rickettsial disease (disorder)\\| OR 372244006 \\|Malignant melanoma (disorder)\\| OR 397430003 \\|Diphtheria caused by Corynebacterium diphtheriae (disorder)\\| OR 398102009 \\|Acute poliomyelitis (disorder)\\| OR 398565003 \\|Infection caused by Clostridium botulinum (disorder)\\| OR 409498004 \\|Anthrax (disorder)\\| OR 417093003 \\|Disease caused by West Nile virus (disorder)\\| OR 442438000 \\|Influenza caused by Influenza A virus (disorder)\\| OR 442696006 \\|Influenza caused by Influenza A virus subtype H1N1 (disorder)\\| OR 450715004 \\|Influenza caused by Influenza A virus subtype H7 (disorder)\\| OR 707448003 \\|Influenza caused by Influenza A virus subtype H7N9 (disorder)\\| OR 709410003 \\|Haemophilus influenzae type b infection (disorder)\\| OR 712986001 \\|Encephalitis caused by tick-borne encephalitis virus (disorder)\\| OR 713083002 \\|Influenza caused by Influenza A virus subtype H5 (disorder)\\| OR 772810003 \\|Influenza caused by Influenza A virus subtype H3N2 (disorder)\\| OR 772828001 \\|Influenza caused by Influenza A virus subtype H5N1 (disorder)\\| OR 840539006 \\|Disease caused by severe acute respiratory syndrome coronavirus 2 (disorder)\\|",
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
        "concept" : [
          {
            "code" : "4834000",
            "display" : "Typhoid fever (disorder)"
          },
          {
            "code" : "6142004",
            "display" : "Influenza (disorder)"
          },
          {
            "code" : "16541001",
            "display" : "Yellow fever (disorder)"
          },
          {
            "code" : "14189004",
            "display" : "Measles (disorder)"
          },
          {
            "code" : "14168008",
            "display" : "Rabies (disorder)"
          },
          {
            "code" : "18624000",
            "display" : "Disease caused by Rotavirus (disorder)"
          },
          {
            "code" : "23502006",
            "display" : "Lyme disease (disorder)"
          },
          {
            "code" : "23511006",
            "display" : "Meningococcal infectious disease (disorder)"
          },
          {
            "code" : "24662006",
            "display" : "Influenza caused by Influenza B virus (disorder)"
          },
          {
            "code" : "25225006",
            "display" : "Disease caused by Adenovirus (disorder)"
          },
          {
            "code" : "27836007",
            "display" : "Pertussis (disorder)"
          },
          {
            "code" : "32398004",
            "display" : "Bronchitis (disorder)"
          },
          {
            "code" : "36653000",
            "display" : "Rubella (disorder)"
          },
          {
            "code" : "36989005",
            "display" : "Mumps (disorder)"
          },
          {
            "code" : "37246009",
            "display" : "Disease caused by rickettsiae (disorder)"
          },
          {
            "code" : "38907003",
            "display" : "Varicella (disorder)"
          },
          {
            "code" : "40468003",
            "display" : "Viral hepatitis, type A (disorder)"
          },
          {
            "code" : "50711007",
            "display" : "Viral hepatitis type C (disorder)"
          },
          {
            "code" : "52947006",
            "display" : "Japanese encephalitis virus disease (disorder)"
          },
          {
            "code" : "56717001",
            "display" : "Tuberculosis (disorder)"
          },
          {
            "code" : "58750007",
            "display" : "Plague (disorder)"
          },
          {
            "code" : "63650001",
            "display" : "Cholera (disorder)"
          },
          {
            "code" : "66071002",
            "display" : "Viral hepatitis type B (disorder)"
          },
          {
            "code" : "67924001",
            "display" : "Smallpox (disorder)"
          },
          {
            "code" : "70036007",
            "display" : "Haemophilus influenzae pneumonia (disorder)"
          },
          {
            "code" : "75702008",
            "display" : "Brucellosis (disorder)"
          },
          {
            "code" : "76902006",
            "display" : "Tetanus (disorder)"
          },
          {
            "code" : "85904008",
            "display" : "Paratyphoid fever (disorder)"
          },
          {
            "code" : "111852003",
            "display" : "Vaccinia (disorder)"
          },
          {
            "code" : "186150001",
            "display" : "Enteritis caused by rotavirus (disorder)"
          },
          {
            "code" : "186772009",
            "display" : "Rocky Mountain spotted fever (disorder)"
          },
          {
            "code" : "186788009",
            "display" : "Q fever (disorder)"
          },
          {
            "code" : "240532009",
            "display" : "Human papillomavirus infection (disorder)"
          },
          {
            "code" : "240613006",
            "display" : "Typhus group rickettsial disease (disorder)"
          },
          {
            "code" : "372244006",
            "display" : "Malignant melanoma (disorder)"
          },
          {
            "code" : "397430003",
            "display" : "Diphtheria caused by Corynebacterium diphtheriae (disorder)"
          },
          {
            "code" : "398102009",
            "display" : "Acute poliomyelitis (disorder)"
          },
          {
            "code" : "398565003",
            "display" : "Infection caused by Clostridium botulinum (disorder)"
          },
          {
            "code" : "409498004",
            "display" : "Anthrax (disorder)"
          },
          {
            "code" : "417093003",
            "display" : "Disease caused by West Nile virus (disorder)"
          },
          {
            "code" : "442438000",
            "display" : "Influenza caused by Influenza A virus (disorder)"
          },
          {
            "code" : "442696006",
            "display" : "Influenza caused by Influenza A virus subtype H1N1 (disorder)"
          },
          {
            "code" : "450715004",
            "display" : "Influenza caused by Influenza A virus subtype H7 (disorder)"
          },
          {
            "code" : "707448003",
            "display" : "Influenza caused by Influenza A virus subtype H7N9 (disorder)"
          },
          {
            "code" : "709410003",
            "display" : "Haemophilus influenzae type b infection (disorder)"
          },
          {
            "code" : "712986001",
            "display" : "Encephalitis caused by tick-borne encephalitis virus (disorder)"
          },
          {
            "code" : "713083002",
            "display" : "Influenza caused by Influenza A virus subtype H5 (disorder)"
          },
          {
            "code" : "772810003",
            "display" : "Influenza caused by Influenza A virus subtype H3N2 (disorder)"
          },
          {
            "code" : "772828001",
            "display" : "Influenza caused by Influenza A virus subtype H5N1 (disorder)"
          },
          {
            "code" : "840539006",
            "display" : "Disease caused by severe acute respiratory syndrome coronavirus 2 (disorder)"
          }
        ]
      }
    ]
  }
}

```
