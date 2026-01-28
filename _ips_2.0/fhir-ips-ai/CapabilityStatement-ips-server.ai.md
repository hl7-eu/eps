# IPS Server Capability Statement - International Patient Summary Implementation Guide v2.0.0

## CapabilityStatement: IPS Server Capability Statement 

 
This CapabilityStatement describes the expected capabilities of the[IPS Server actor](ActorDefinition-Server.md)which is responsible for providing responses to the queries submitted for IPS documents. The list of FHIR profiles and operations supported by IPS Servers are defined in this CapabilityStatement. 

 [Raw OpenAPI-Swagger Definition file](../ips-server.openapi.json) | [Download](../ips-server.openapi.json) 

## IPS Server Capability Statement

* Implementation Guide Version: 2.0.0 
* FHIR Version: 4.0.1 
* Supported Formats: `application/fhir+xml`, `xml`, `application/fhir+json`, `json`
* Published on: 2022-01-05 13:15:56+0000 
* Published by: HL7 International / Patient Care 

> **Note to Implementers: FHIR Capabilities**Any FHIR capability may be 'allowed' by the system unless explicitly marked as 'SHALL NOT'. A few items are marked as MAY in the Implementation Guide to highlight their potential relevance to the use case.

## FHIR RESTful Capabilities

### Mode: server

### Capabilities by Resource/Profile

#### Summary

The summary table lists the resources that are part of this configuration, and for each resource it lists:

* The relevant profiles (if any)
* The interactions supported by each resource (**R**ead, **S**earch, **U**pdate, and **C**reate, are always shown, while **VR**ead, **P**atch, **D**elete, **H**istory on **I**nstance, or **H**istory on **T**ype are only present if at least one of the resources has support for them.
* The required, recommended, and some optional search parameters (if any).
* The linked resources enabled for `_include`
* The other resources enabled for `_revinclude`
* The operations on the resource (if any)

| | | | | | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| [Bundle](#Bundle1-1) | Supported Profiles  [Bundle (IPS)](StructureDefinition-Bundle-uv-ips.md) |  |  |  |  |  |  |  |  |
| [Composition](#Composition1-2) | Supported Profiles  [Composition (IPS)](StructureDefinition-Composition-uv-ips.md) |  |  |  |  |  |  |  |  |
| [Patient](#Patient1-3) | Supported Profiles  [Patient (IPS)](StructureDefinition-Patient-uv-ips.md) |  |  |  |  |  |  |  | `$summary` |
| [AllergyIntolerance](#AllergyIntolerance1-4) | Supported Profiles  [AllergyIntolerance (IPS)](StructureDefinition-AllergyIntolerance-uv-ips.md) |  |  |  |  |  |  |  |  |
| [Condition](#Condition1-5) | Supported Profiles  [Condition (IPS)](StructureDefinition-Condition-uv-ips.md) |  |  |  |  |  |  |  |  |
| [MedicationRequest](#MedicationRequest1-6) | Supported Profiles  [MedicationRequest (IPS)](StructureDefinition-MedicationRequest-uv-ips.md) |  |  |  |  |  |  |  |  |
| [MedicationStatement](#MedicationStatement1-7) | Supported Profiles  [MedicationStatement (IPS)](StructureDefinition-MedicationStatement-uv-ips.md) |  |  |  |  |  |  |  |  |
| [CarePlan](#CarePlan1-8) |   |  |  |  |  |  |  |  |  |
| [ClinicalImpression](#ClinicalImpression1-9) |   |  |  |  |  |  |  |  |  |
| [Consent](#Consent1-10) |   |  |  |  |  |  |  |  |  |
| [Device](#Device1-11) | Supported Profiles  [Device (IPS)](StructureDefinition-Device-uv-ips.md)  [Device - Performer or Observer (IPS)](StructureDefinition-Device-observer-uv-ips.md) |  |  |  |  |  |  |  |  |
| [DeviceUseStatement](#DeviceUseStatement1-12) | Supported Profiles  [DeviceUseStatement (IPS)](StructureDefinition-DeviceUseStatement-uv-ips.md) |  |  |  |  |  |  |  |  |
| [DiagnosticReport](#DiagnosticReport1-13) | Supported Profiles  [DiagnosticReport (IPS)](StructureDefinition-DiagnosticReport-uv-ips.md) |  |  |  |  |  |  |  |  |
| [DocumentReference](#DocumentReference1-14) |   |  |  |  |  |  |  |  | `$docref` |
| [Flag](#Flag1-15) | Supported Profiles  [Flag - Alert (IPS)](StructureDefinition-Flag-alert-uv-ips.md) |  |  |  |  |  |  |  |  |
| [ImagingStudy](#ImagingStudy1-16) | Supported Profiles  [ImagingStudy (IPS)](StructureDefinition-ImagingStudy-uv-ips.md) |  |  |  |  |  |  |  |  |
| [Immunization](#Immunization1-17) | Supported Profiles  [Immunization (IPS)](StructureDefinition-Immunization-uv-ips.md) |  |  |  |  |  |  |  |  |
| [ImmunizationRecommendation](#ImmunizationRecommendation1-18) |   |  |  |  |  |  |  |  |  |
| [Medication](#Medication1-19) | Supported Profiles  [Medication (IPS)](StructureDefinition-Medication-uv-ips.md) |  |  |  |  |  |  |  |  |
| [MedicationAdministration](#MedicationAdministration1-20) |   |  |  |  |  |  |  |  |  |
| [MedicationDispense](#MedicationDispense1-21) |   |  |  |  |  |  |  |  |  |
| [Observation](#Observation1-22) | Supported Profiles  [Observation Pregnancy - Expected Delivery Date (IPS)](StructureDefinition-Observation-pregnancy-edd-uv-ips.md)  [Observation Pregnancy - Outcome (IPS)](StructureDefinition-Observation-pregnancy-outcome-uv-ips.md)  [Observation Pregnancy - Status (IPS)](StructureDefinition-Observation-pregnancy-status-uv-ips.md)  [Observation Social History - Alcohol Use (IPS)](StructureDefinition-Observation-alcoholuse-uv-ips.md)  [Observation Social History - Tobacco Use (IPS)](StructureDefinition-Observation-tobaccouse-uv-ips.md)  [Observation Results - Laboratory/Pathology (IPS)](StructureDefinition-Observation-results-laboratory-pathology-uv-ips.md)  [Observation Results - Radiology (IPS)](StructureDefinition-Observation-results-radiology-uv-ips.md)  [Observation Respiratory Rate Profile](http://hl7.org/fhir/R4/resprate.html)  [Observation Heart Rate Profile](http://hl7.org/fhir/R4/heartrate.html)  [Observation Oxygen Saturation Profile](http://hl7.org/fhir/R4/oxygensat.html)  [Observation Body Temperature Profile](http://hl7.org/fhir/R4/bodytemp.html)  [Observation Body Height Profile](http://hl7.org/fhir/R4/bodyheight.html)  [Observation Head Circumference Profile](http://hl7.org/fhir/R4/headcircum.html)  [Observation Body Weight Profile](http://hl7.org/fhir/R4/bodyweight.html)  [Observation Body Mass Index Profile](http://hl7.org/fhir/R4/bmi.html)  [Observation Blood Pressure Profile](http://hl7.org/fhir/R4/bp.html) |  |  |  |  |  |  |  |  |
| [Organization](#Organization1-23) | Supported Profiles  [Organization (IPS)](StructureDefinition-Organization-uv-ips.md) |  |  |  |  |  |  |  |  |
| [Practitioner](#Practitioner1-24) | Supported Profiles  [Practitioner (IPS)](StructureDefinition-Practitioner-uv-ips.md) |  |  |  |  |  |  |  |  |
| [PractitionerRole](#PractitionerRole1-25) | Supported Profiles  [PractitionerRole (IPS)](StructureDefinition-PractitionerRole-uv-ips.md) |  |  |  |  |  |  |  |  |
| [Procedure](#Procedure1-26) | Supported Profiles  [Procedure (IPS)](StructureDefinition-Procedure-uv-ips.md) |  |  |  |  |  |  |  |  |
| [RelatedPerson](#RelatedPerson1-27) |   |  |  |  |  |  |  |  |  |
| [Specimen](#Specimen1-28) | Supported Profiles  [Specimen (IPS)](StructureDefinition-Specimen-uv-ips.md) |  |  |  |  |  |  |  |  |

-------

#### Resource Conformance: SHALL Bundle

Core FHIR Resource

[Bundle](http://hl7.org/fhir/R4/bundle.html)

Reference Policy

Interaction summary

Supported Profiles
[Bundle (IPS)](StructureDefinition-Bundle-uv-ips.md)

#### Resource Conformance: SHALL Composition

Core FHIR Resource

[Composition](http://hl7.org/fhir/R4/composition.html)

Reference Policy

Interaction summary

Supported Profiles
[Composition (IPS)](StructureDefinition-Composition-uv-ips.md)

#### Resource Conformance: SHALL Patient

Core FHIR Resource

[Patient](http://hl7.org/fhir/R4/patient.html)

Reference Policy

Interaction summary

Supported Profiles
[Patient (IPS)](StructureDefinition-Patient-uv-ips.md)

Extended Operations


#### Resource Conformance: SHOULD AllergyIntolerance

Core FHIR Resource

[AllergyIntolerance](http://hl7.org/fhir/R4/allergyintolerance.html)

Reference Policy

Interaction summary

Supported Profiles
[AllergyIntolerance (IPS)](StructureDefinition-AllergyIntolerance-uv-ips.md)

#### Resource Conformance: SHOULD Condition

Core FHIR Resource

[Condition](http://hl7.org/fhir/R4/condition.html)

Reference Policy

Interaction summary

Supported Profiles
[Condition (IPS)](StructureDefinition-Condition-uv-ips.md)

#### Resource Conformance: SHOULD MedicationRequest

Core FHIR Resource

[MedicationRequest](http://hl7.org/fhir/R4/medicationrequest.html)

Reference Policy

Interaction summary

Supported Profiles
[MedicationRequest (IPS)](StructureDefinition-MedicationRequest-uv-ips.md)

Documentation
> 

Some systems may only support MedicationRequest(IPS) or MedicationStatement(IPS).


#### Resource Conformance: SHOULD MedicationStatement

Core FHIR Resource

[MedicationStatement](http://hl7.org/fhir/R4/medicationstatement.html)

Reference Policy

Interaction summary

Supported Profiles
[MedicationStatement (IPS)](StructureDefinition-MedicationStatement-uv-ips.md)

Documentation
> 

Some systems may only support MedicationRequest(IPS) or MedicationStatement(IPS).


#### Resource Conformance: MAY CarePlan

Core FHIR Resource

[CarePlan](http://hl7.org/fhir/R4/careplan.html)

Reference Policy

Interaction summary

#### Resource Conformance: MAY ClinicalImpression

Core FHIR Resource

[ClinicalImpression](http://hl7.org/fhir/R4/clinicalimpression.html)

Reference Policy

Interaction summary

#### Resource Conformance: MAY Consent

Core FHIR Resource

[Consent](http://hl7.org/fhir/R4/consent.html)

Reference Policy

Interaction summary

#### Resource Conformance: MAY Device

Core FHIR Resource

[Device](http://hl7.org/fhir/R4/device.html)

Reference Policy

Interaction summary

Supported Profiles
[Device (IPS)](StructureDefinition-Device-uv-ips.md)
[Device - Performer or Observer (IPS)](StructureDefinition-Device-observer-uv-ips.md)

#### Resource Conformance: MAY DeviceUseStatement

Core FHIR Resource

[DeviceUseStatement](http://hl7.org/fhir/R4/deviceusestatement.html)

Reference Policy

Interaction summary

Supported Profiles
[DeviceUseStatement (IPS)](StructureDefinition-DeviceUseStatement-uv-ips.md)

#### Resource Conformance: MAY DiagnosticReport

Core FHIR Resource

[DiagnosticReport](http://hl7.org/fhir/R4/diagnosticreport.html)

Reference Policy

Interaction summary

Supported Profiles
[DiagnosticReport (IPS)](StructureDefinition-DiagnosticReport-uv-ips.md)

#### Resource Conformance: SHOULD DocumentReference

Core FHIR Resource

[DocumentReference](http://hl7.org/fhir/R4/documentreference.html)

Reference Policy

Interaction summary

Extended Operations


#### Resource Conformance: MAY Flag

Core FHIR Resource

[Flag](http://hl7.org/fhir/R4/flag.html)

Reference Policy

Interaction summary

Supported Profiles
[Flag - Alert (IPS)](StructureDefinition-Flag-alert-uv-ips.md)

#### Resource Conformance: MAY ImagingStudy

Core FHIR Resource

[ImagingStudy](http://hl7.org/fhir/R4/imagingstudy.html)

Reference Policy

Interaction summary

Supported Profiles
[ImagingStudy (IPS)](StructureDefinition-ImagingStudy-uv-ips.md)

#### Resource Conformance: MAY Immunization

Core FHIR Resource

[Immunization](http://hl7.org/fhir/R4/immunization.html)

Reference Policy

Interaction summary

Supported Profiles
[Immunization (IPS)](StructureDefinition-Immunization-uv-ips.md)

#### Resource Conformance: MAY ImmunizationRecommendation

Core FHIR Resource

[ImmunizationRecommendation](http://hl7.org/fhir/R4/immunizationrecommendation.html)

Reference Policy

Interaction summary

#### Resource Conformance: MAY Medication

Core FHIR Resource

[Medication](http://hl7.org/fhir/R4/medication.html)

Reference Policy

Interaction summary

Supported Profiles
[Medication (IPS)](StructureDefinition-Medication-uv-ips.md)

#### Resource Conformance: MAY MedicationAdministration

Core FHIR Resource

[MedicationAdministration](http://hl7.org/fhir/R4/medicationadministration.html)

Reference Policy

Interaction summary

#### Resource Conformance: MAY MedicationDispense

Core FHIR Resource

[MedicationDispense](http://hl7.org/fhir/R4/medicationdispense.html)

Reference Policy

Interaction summary

#### Resource Conformance: MAY Observation

Core FHIR Resource

[Observation](http://hl7.org/fhir/R4/observation.html)

Reference Policy

Interaction summary

Supported Profiles
[Observation Pregnancy - Expected Delivery Date (IPS)](StructureDefinition-Observation-pregnancy-edd-uv-ips.md)
[Observation Pregnancy - Outcome (IPS)](StructureDefinition-Observation-pregnancy-outcome-uv-ips.md)
[Observation Pregnancy - Status (IPS)](StructureDefinition-Observation-pregnancy-status-uv-ips.md)
[Observation Social History - Alcohol Use (IPS)](StructureDefinition-Observation-alcoholuse-uv-ips.md)
[Observation Social History - Tobacco Use (IPS)](StructureDefinition-Observation-tobaccouse-uv-ips.md)
[Observation Results - Laboratory/Pathology (IPS)](StructureDefinition-Observation-results-laboratory-pathology-uv-ips.md)
[Observation Results - Radiology (IPS)](StructureDefinition-Observation-results-radiology-uv-ips.md)
[Observation Respiratory Rate Profile](http://hl7.org/fhir/R4/resprate.html)
[Observation Heart Rate Profile](http://hl7.org/fhir/R4/heartrate.html)
[Observation Oxygen Saturation Profile](http://hl7.org/fhir/R4/oxygensat.html)
[Observation Body Temperature Profile](http://hl7.org/fhir/R4/bodytemp.html)
[Observation Body Height Profile](http://hl7.org/fhir/R4/bodyheight.html)
[Observation Head Circumference Profile](http://hl7.org/fhir/R4/headcircum.html)
[Observation Body Weight Profile](http://hl7.org/fhir/R4/bodyweight.html)
[Observation Body Mass Index Profile](http://hl7.org/fhir/R4/bmi.html)
[Observation Blood Pressure Profile](http://hl7.org/fhir/R4/bp.html)

#### Resource Conformance: MAY Organization

Core FHIR Resource

[Organization](http://hl7.org/fhir/R4/organization.html)

Reference Policy

Interaction summary

Supported Profiles
[Organization (IPS)](StructureDefinition-Organization-uv-ips.md)

#### Resource Conformance: MAY Practitioner

Core FHIR Resource

[Practitioner](http://hl7.org/fhir/R4/practitioner.html)

Reference Policy

Interaction summary

Supported Profiles
[Practitioner (IPS)](StructureDefinition-Practitioner-uv-ips.md)

#### Resource Conformance: MAY PractitionerRole

Core FHIR Resource

[PractitionerRole](http://hl7.org/fhir/R4/practitionerrole.html)

Reference Policy

Interaction summary

Supported Profiles
[PractitionerRole (IPS)](StructureDefinition-PractitionerRole-uv-ips.md)

#### Resource Conformance: MAY Procedure

Core FHIR Resource

[Procedure](http://hl7.org/fhir/R4/procedure.html)

Reference Policy

Interaction summary

Supported Profiles
[Procedure (IPS)](StructureDefinition-Procedure-uv-ips.md)

#### Resource Conformance: MAY RelatedPerson

Core FHIR Resource

[RelatedPerson](http://hl7.org/fhir/R4/relatedperson.html)

Reference Policy

Interaction summary

#### Resource Conformance: MAY Specimen

Core FHIR Resource

[Specimen](http://hl7.org/fhir/R4/specimen.html)

Reference Policy

Interaction summary

Supported Profiles
[Specimen (IPS)](StructureDefinition-Specimen-uv-ips.md)



## Resource Content

```json
{
  "resourceType" : "CapabilityStatement",
  "id" : "ips-server",
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
  "url" : "http://hl7.org/fhir/uv/ips/CapabilityStatement/ips-server",
  "version" : "2.0.0",
  "name" : "IpsServerCapabilityStatement",
  "title" : "IPS Server Capability Statement",
  "status" : "active",
  "experimental" : false,
  "date" : "2022-01-05T13:15:56.964-00:00",
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
  "description" : "This CapabilityStatement describes the expected capabilities of the [IPS Server actor](ActorDefinition-Server.html) which is responsible for providing responses to the queries submitted for IPS documents. The list of FHIR profiles and operations supported by IPS Servers are defined in this CapabilityStatement.",
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
  "copyright" : "Used by permission of HL7 International, all rights reserved Creative Commons License",
  "kind" : "requirements",
  "fhirVersion" : "4.0.1",
  "format" : ["application/fhir+xml", "xml", "application/fhir+json", "json"],
  "rest" : [
    {
      "mode" : "server",
      "resource" : [
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
              "valueCode" : "SHALL"
            }
          ],
          "type" : "Bundle",
          "supportedProfile" : [
            "http://hl7.org/fhir/uv/ips/StructureDefinition/Bundle-uv-ips"
          ]
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
              "valueCode" : "SHALL"
            }
          ],
          "type" : "Composition",
          "supportedProfile" : [
            "http://hl7.org/fhir/uv/ips/StructureDefinition/Composition-uv-ips"
          ]
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
              "valueCode" : "SHALL"
            }
          ],
          "type" : "Patient",
          "supportedProfile" : [
            "http://hl7.org/fhir/uv/ips/StructureDefinition/Patient-uv-ips"
          ],
          "operation" : [
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "SHOULD"
                }
              ],
              "name" : "summary",
              "definition" : "http://hl7.org/fhir/uv/ips/OperationDefinition/summary"
            }
          ]
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
              "valueCode" : "SHOULD"
            }
          ],
          "type" : "AllergyIntolerance",
          "supportedProfile" : [
            "http://hl7.org/fhir/uv/ips/StructureDefinition/AllergyIntolerance-uv-ips"
          ]
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
              "valueCode" : "SHOULD"
            }
          ],
          "type" : "Condition",
          "supportedProfile" : [
            "http://hl7.org/fhir/uv/ips/StructureDefinition/Condition-uv-ips"
          ]
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
              "valueCode" : "SHOULD"
            }
          ],
          "type" : "MedicationRequest",
          "supportedProfile" : [
            "http://hl7.org/fhir/uv/ips/StructureDefinition/MedicationRequest-uv-ips"
          ],
          "documentation" : "Some systems may only support MedicationRequest(IPS) or MedicationStatement(IPS)."
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
              "valueCode" : "SHOULD"
            }
          ],
          "type" : "MedicationStatement",
          "supportedProfile" : [
            "http://hl7.org/fhir/uv/ips/StructureDefinition/MedicationStatement-uv-ips"
          ],
          "documentation" : "Some systems may only support MedicationRequest(IPS) or MedicationStatement(IPS)."
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
              "valueCode" : "MAY"
            }
          ],
          "type" : "CarePlan"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
              "valueCode" : "MAY"
            }
          ],
          "type" : "ClinicalImpression"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
              "valueCode" : "MAY"
            }
          ],
          "type" : "Consent"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
              "valueCode" : "MAY"
            }
          ],
          "type" : "Device",
          "supportedProfile" : [
            "http://hl7.org/fhir/uv/ips/StructureDefinition/Device-uv-ips",
            "http://hl7.org/fhir/uv/ips/StructureDefinition/Device-observer-uv-ips"
          ]
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
              "valueCode" : "MAY"
            }
          ],
          "type" : "DeviceUseStatement",
          "supportedProfile" : [
            "http://hl7.org/fhir/uv/ips/StructureDefinition/DeviceUseStatement-uv-ips"
          ]
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
              "valueCode" : "MAY"
            }
          ],
          "type" : "DiagnosticReport",
          "supportedProfile" : [
            "http://hl7.org/fhir/uv/ips/StructureDefinition/DiagnosticReport-uv-ips"
          ]
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
              "valueCode" : "SHOULD"
            }
          ],
          "type" : "DocumentReference",
          "operation" : [
            {
              "extension" : [
                {
                  "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
                  "valueCode" : "SHOULD"
                }
              ],
              "name" : "docref",
              "definition" : "http://hl7.org/fhir/uv/ipa/OperationDefinition/docref"
            }
          ]
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
              "valueCode" : "MAY"
            }
          ],
          "type" : "Flag",
          "supportedProfile" : [
            "http://hl7.org/fhir/uv/ips/StructureDefinition/Flag-alert-uv-ips"
          ]
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
              "valueCode" : "MAY"
            }
          ],
          "type" : "ImagingStudy",
          "supportedProfile" : [
            "http://hl7.org/fhir/uv/ips/StructureDefinition/ImagingStudy-uv-ips"
          ]
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
              "valueCode" : "MAY"
            }
          ],
          "type" : "Immunization",
          "supportedProfile" : [
            "http://hl7.org/fhir/uv/ips/StructureDefinition/Immunization-uv-ips"
          ]
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
              "valueCode" : "MAY"
            }
          ],
          "type" : "ImmunizationRecommendation"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
              "valueCode" : "MAY"
            }
          ],
          "type" : "Medication",
          "supportedProfile" : [
            "http://hl7.org/fhir/uv/ips/StructureDefinition/Medication-uv-ips"
          ]
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
              "valueCode" : "MAY"
            }
          ],
          "type" : "MedicationAdministration"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
              "valueCode" : "MAY"
            }
          ],
          "type" : "MedicationDispense"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
              "valueCode" : "MAY"
            }
          ],
          "type" : "Observation",
          "supportedProfile" : [
            "http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-pregnancy-edd-uv-ips",
            "http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-pregnancy-outcome-uv-ips",
            "http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-pregnancy-status-uv-ips",
            "http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-alcoholuse-uv-ips",
            "http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-tobaccouse-uv-ips",
            "http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-results-laboratory-pathology-uv-ips",
            "http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-results-radiology-uv-ips",
            "http://hl7.org/fhir/StructureDefinition/resprate",
            "http://hl7.org/fhir/StructureDefinition/heartrate",
            "http://hl7.org/fhir/StructureDefinition/oxygensat",
            "http://hl7.org/fhir/StructureDefinition/bodytemp",
            "http://hl7.org/fhir/StructureDefinition/bodyheight",
            "http://hl7.org/fhir/StructureDefinition/headcircum",
            "http://hl7.org/fhir/StructureDefinition/bodyweight",
            "http://hl7.org/fhir/StructureDefinition/bmi",
            "http://hl7.org/fhir/StructureDefinition/bp"
          ]
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
              "valueCode" : "MAY"
            }
          ],
          "type" : "Organization",
          "supportedProfile" : [
            "http://hl7.org/fhir/uv/ips/StructureDefinition/Organization-uv-ips"
          ]
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
              "valueCode" : "MAY"
            }
          ],
          "type" : "Practitioner",
          "supportedProfile" : [
            "http://hl7.org/fhir/uv/ips/StructureDefinition/Practitioner-uv-ips"
          ]
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
              "valueCode" : "MAY"
            }
          ],
          "type" : "PractitionerRole",
          "supportedProfile" : [
            "http://hl7.org/fhir/uv/ips/StructureDefinition/PractitionerRole-uv-ips"
          ]
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
              "valueCode" : "MAY"
            }
          ],
          "type" : "Procedure",
          "supportedProfile" : [
            "http://hl7.org/fhir/uv/ips/StructureDefinition/Procedure-uv-ips"
          ]
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
              "valueCode" : "MAY"
            }
          ],
          "type" : "RelatedPerson"
        },
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
              "valueCode" : "MAY"
            }
          ],
          "type" : "Specimen",
          "supportedProfile" : [
            "http://hl7.org/fhir/uv/ips/StructureDefinition/Specimen-uv-ips"
          ]
        }
      ]
    }
  ]
}

```
