{% include variables.html %}

<div class="model-map-block">
      <div class="callout-wrapper">
      <div class="callout-box">
        <strong>IPS Obligation adoption:</strong>
            This version of the guide adopts the IPS Obligations. A review will be done to maintain alignment with the EHDS Implementing Acts.
      </div>
      </div>
</div>


### Overview

Obligations are a means offered by HL7 FHIR to specify functional capabilities that defined actors MAY, SHOULD, or SHALL apply to the data elements specified by the profiles.

In HL7 FHIR, obligations are defined in the conformance layer and associated with actors. They are typically expressed as constraints on profile elements, tied to named actors, and documented alongside the profiles that declare them. 
See also the HL7 FHIR obligation extension and obligation code value set for the formal definition of obligation statements.


### Actors

The actors used in this version of this guides are those defined by the IPS. 
The IPS actors are (definitions in the IPS guide):
- **Creator (IPS)**: a system which produces/assembles/creates an IPS document. See [ActorDefinition-Creator]({{ ips_base }}ActorDefinition-Creator.html).
- **Consumer (IPS)**: a system that receives an IPS document and uses its content. See [ActorDefinition-Consumer]({{ ips_base }}ActorDefinition-Consumer.html).
- **Server (IPS)**: a FHIR server acting as an IPS Creator by providing conformant IPS documents in response to FHIR API requests. See [ActorDefinition-Server]({{ ips_base }}ActorDefinition-Server.html).


### Usage of Obligations


In IPS, obligations are always tied to an actor and accompany all `mustSupport` elements, specifying the structured expectations for that actor (e.g., what the Creator must populate and what the Consumer must process). 
Obligations can differ between Creator and Consumer, and IPS highlights that obligations should not conflict with regional laws and policies. 

In the HL7 Europe approach, the `mustSupport` flag is not used; instead, Must Support is derived implicitly from the obligations defined for the relevant actors.

Following the HL7 Europe design approach, structural and obligation rules are kept separate: each EPS profile defines the structural rules only, while the IPS obligations are set in a distinct obligation profile derived from it (see the EPS Obligations group in the [Artifacts](artifacts.html) page).

All the obligation profiles are informative for this version of the guide.

The following table lists, for each profile used by this guide, the obligation profile that sets the IPS obligations on it.

| Profile | Obligation profile |
| --- | --- |
| [Bundle (EPS)](StructureDefinition-bundle-eu-eps.html) | [Bundle - Obligations (EPS)](StructureDefinition-bundle-obl-eu-eps.html) |
| [Composition (EPS)](StructureDefinition-composition-eu-eps.html) | [Composition - Obligations (EPS)](StructureDefinition-composition-obl-eu-eps.html) |
| [Device (EPS)](StructureDefinition-device-eu-eps.html) | [Device - Obligations (EPS)](StructureDefinition-device-obl-eu-eps.html) |
| [DeviceUseStatement (EPS)](StructureDefinition-deviceUseStatement-eu-eps.html) | [DeviceUseStatement - Obligations (EPS)](StructureDefinition-deviceusestatement-obl-eu-eps.html) |
| [DiagnosticReport (EPS)](StructureDefinition-diagnosticReport-eu-eps.html) | [DiagnosticReport - Obligations (EPS)](StructureDefinition-diagnosticreport-obl-eu-eps.html) |
| [MedicationStatement (EPS)](StructureDefinition-medicationStatement-eu-eps.html) | [MedicationStatement - Obligations (EPS)](StructureDefinition-medicationstatement-obl-eu-eps.html) |
| [Observation: Pregnancy - Expected Delivery Date (EPS)](StructureDefinition-observation-pregnancy-edd-eu-eps.html) | [Observation: Pregnancy - Expected Delivery Date - Obligations (EPS)](StructureDefinition-observation-pregnancy-edd-obl-eu-eps.html) |
| [Observation: Pregnancy - Outcome (EPS)](StructureDefinition-observation-pregnancy-outcome-eu-eps.html) | [Observation: Pregnancy - Outcome - Obligations (EPS)](StructureDefinition-observation-pregnancy-outcome-obl-eu-eps.html) |
| [Observation: Pregnancy - Status (EPS)](StructureDefinition-observation-pregnancy-status-eu-eps.html) | [Observation: Pregnancy - Status - Obligations (EPS)](StructureDefinition-observation-pregnancy-status-obl-eu-eps.html) |
| [Patient (EPS)](StructureDefinition-patient-eu-eps.html) | [Patient - Obligations (EPS)](StructureDefinition-patient-obl-eu-eps.html) |
| [Procedure (EPS)](StructureDefinition-procedure-eu-eps.html) | [Procedure - Obligations (EPS)](StructureDefinition-procedure-obl-eu-eps.html) |
| [AllergyIntolerance (EU core)]({{ eu_base }}StructureDefinition-allergyIntolerance-eu-core.html) | [AllergyIntolerance - Obligations (EPS)](StructureDefinition-allergyintolerance-obl-eu-eps.html) |
| [Condition (EU core)]({{ eu_base }}StructureDefinition-condition-eu-core.html) | [Condition - Obligations (EPS)](StructureDefinition-condition-obl-eu-eps.html) |
| [Flag (EU core)]({{ eu_base }}StructureDefinition-flag-patient-eu-core.html) | [Flag: Alert - Obligations (EPS)](StructureDefinition-flag-alert-obl-eu-eps.html) |
| [Immunization (EU core)]({{ eu_base }}StructureDefinition-immunization-eu-core.html) | [Immunization - Obligations (EPS)](StructureDefinition-immunization-obl-eu-eps.html) |
| [Medication (EU core)]({{ eu_base }}StructureDefinition-medication-eu-core.html) | [Medication - Obligations (EPS)](StructureDefinition-medication-obl-eu-eps.html) |
| [Organization (EU core)]({{ eu_base }}StructureDefinition-organization-eu-core.html) | [Organization - Obligations (EPS)](StructureDefinition-organization-obl-eu-eps.html) |
| [Practitioner (EU core)]({{ eu_base }}StructureDefinition-practitioner-eu-core.html) | [Practitioner - Obligations (EPS)](StructureDefinition-practitioner-obl-eu-eps.html) |
| [PractitionerRole (EU core)]({{ eu_base }}StructureDefinition-practitionerRole-eu-core.html) | [PractitionerRole - Obligations (EPS)](StructureDefinition-practitionerrole-obl-eu-eps.html) |
{:.grid}

The [Consent: Advance Directives (EPS)](StructureDefinition-consent-eu-eps.html), [Observation: Pregnancy - Gestational Age (EPS)](StructureDefinition-observation-pregnancy-gestationalAge-eu-eps.html) and [Observation: Country Visited (EPS)](StructureDefinition-observation-travel-eu-eps.html) profiles have no obligation profile.
