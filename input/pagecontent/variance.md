{% include variables.html %}
This page documents how the HL7 Europe Patient Summary (EPS) relates to the specifications it builds on, and where it adds to or differs from them:

- [HL7 Europe Base and Core](#variance-from-hl7-europe-base-and-core) ([EU Base]({{ eu_base }}index.html))
- [HL7 FHIR International Patient Summary (IPS)](#variance-from-ips) ([IPS 2.0.1]({{ ips_base }}index.html))

In this page:

- **No variance** means that every instance conformant with an EPS profile is also conformant with the referenced profile.
- **Additional requirements** are constraints that EPS adds on top of the referenced profile (for example, a narrower cardinality, an additional obligation, a stronger terminology binding). They do not break conformance with the referenced profile.
- **Variance** means a difference that can make an EPS instance non-conformant with the referenced profile, or that changes the meaning of what is required.

### Variance from HL7 Europe Base and Core

This implementation guide has **no variance** from the HL7 Europe Base and Core Implementation Guide version 2.0.1 ([current]({{ eu_base }}index.html)).

When a corresponding EU Core profile exists, the EPS profile is derived from it. The EPS profiles impose requirements additional to EU Core, mainly:

- the obligations defined for the [IPS actors](obligations.html#actors);
- the patient summary specific constraints (e.g. Composition sections, Bundle entries);
- the alignment with the EHDS Patient Summary logical model (see the [Model Map](modelmap.html)).

| EPS profile | Derived from (EU Core) |
| --- | --- |
| [Composition (EPS)](StructureDefinition-composition-eu-eps.html) | [Composition (EU core)]({{ eu_base }}StructureDefinition-composition-eu-core.html) |
| [Patient (EPS)](StructureDefinition-patient-eu-eps.html) | [Patient (EU core)]({{ eu_base }}StructureDefinition-patient-eu-core.html) |
| [AllergyIntolerance - Obligations (EPS)](StructureDefinition-allergyintolerance-obl-eu-eps.html) | [AllergyIntolerance (EU core)]({{ eu_base }}StructureDefinition-allergyIntolerance-eu-core.html) |
| [Condition - Obligations (EPS)](StructureDefinition-condition-obl-eu-eps.html) | [Condition (EU core)]({{ eu_base }}StructureDefinition-condition-eu-core.html) |
| [Flag: Alert - Obligations (EPS)](StructureDefinition-flag-alert-obl-eu-eps.html) | [Flag (EU core)]({{ eu_base }}StructureDefinition-flag-patient-eu-core.html) |
| [Immunization - Obligations (EPS)](StructureDefinition-immunization-obl-eu-eps.html) | [Immunization (EU core)]({{ eu_base }}StructureDefinition-immunization-eu-core.html) |
| [Medication - Obligations (EPS)](StructureDefinition-medication-obl-eu-eps.html) | [Medication (EU core)]({{ eu_base }}StructureDefinition-medication-eu-core.html) |
| [MedicationStatement (EPS)](StructureDefinition-medicationStatement-eu-eps.html) | [MedicationStatement (EU core)]({{ eu_base }}StructureDefinition-medicationStatement-eu-core.html) |
| [DiagnosticReport (EPS)](StructureDefinition-diagnosticReport-eu-eps.html) | [DiagnosticReport (EU core)]({{ eu_base }}StructureDefinition-diagnosticReport-eu-core.html) |
| [Procedure (EPS)](StructureDefinition-procedure-eu-eps.html) | [Procedure (EU core)]({{ eu_base }}StructureDefinition-procedure-eu-core.html) |
| [Organization - Obligations (EPS)](StructureDefinition-organization-obl-eu-eps.html) | [Organization (EU core)]({{ eu_base }}StructureDefinition-organization-eu-core.html) |
| [Practitioner - Obligations (EPS)](StructureDefinition-practitioner-obl-eu-eps.html) | [Practitioner (EU core)]({{ eu_base }}StructureDefinition-practitioner-eu-core.html) |
| [PractitionerRole - Obligations (EPS)](StructureDefinition-practitionerrole-obl-eu-eps.html) | [PractitionerRole (EU core)]({{ eu_base }}StructureDefinition-practitionerRole-eu-core.html) |
{:.grid}

Laboratory and other test results use the [Observation: Medical Test Result (EU core)]({{ eu_base }}StructureDefinition-medicalTestResult-eu-core.html) profile directly.

#### Additionally Profiled Resources

This implementation guide profiles the following resources that are not profiled in EU Base and Core:

- [Bundle (EPS)](StructureDefinition-bundle-eu-eps.html) profiles FHIR resource [Bundle](https://hl7.org/fhir/R4/bundle.html)
- [Consent: Advance Directives (EPS)](StructureDefinition-consent-eu-eps.html) profiles FHIR resource [Consent](https://hl7.org/fhir/R4/consent.html)
- [Device (EPS)](StructureDefinition-device-eu-eps.html) profiles FHIR resource [Device](https://hl7.org/fhir/R4/device.html)
- [DeviceUseStatement (EPS)](StructureDefinition-deviceUseStatement-eu-eps.html) profiles FHIR resource [DeviceUseStatement](https://hl7.org/fhir/R4/deviceusestatement.html)
- [Observation: Pregnancy - Expected Delivery Date (EPS)](StructureDefinition-observation-pregnancy-edd-eu-eps.html), [Observation: Pregnancy - Gestational Age (EPS)](StructureDefinition-observation-pregnancy-gestationalAge-eu-eps.html), [Observation: Pregnancy - Outcome (EPS)](StructureDefinition-observation-pregnancy-outcome-eu-eps.html), [Observation: Pregnancy - Status (EPS)](StructureDefinition-observation-pregnancy-status-eu-eps.html) and [Observation: Country Visited (EPS)](StructureDefinition-observation-travel-eu-eps.html) profile FHIR resource [Observation](https://hl7.org/fhir/R4/observation.html)


### Variance from IPS

This implementation guide aims for conformance with the HL7 FHIR International Patient Summary Implementation Guide version 2.0.1 ([current]({{ ips_base }}index.html)). Through that conformance, it also aims for compliance with the **ISO/EN 27269 – International Patient Summary** standard.

The EPS document is a specialisation of the IPS document. The [Bundle (EPS)](StructureDefinition-bundle-eu-eps.html) and the [Composition (EPS)](StructureDefinition-composition-eu-eps.html) declare that they also conform to the corresponding IPS profiles ([Bundle (IPS)]({{ ips_base }}StructureDefinition-Bundle-uv-ips.html), [Composition (IPS)]({{ ips_base }}StructureDefinition-Composition-uv-ips.html)).

Note that while the intent is to have no variance, this implementation guide imposes requirements additional to IPS, as described below.

#### Profile Conformance

The EPS profiles are derived from EU Core (see [above](#variance-from-hl7-europe-base-and-core)) rather than from the IPS profiles. Conformance with the IPS profiles is declared using the [imposeProfile](https://hl7.org/fhir/extensions/StructureDefinition-structuredefinition-imposeProfile.html) extension.

| EPS profile | Also conforms to (IPS) |
| --- | --- |
| [Bundle (EPS)](StructureDefinition-bundle-eu-eps.html) | [Bundle (IPS)]({{ ips_base }}StructureDefinition-Bundle-uv-ips.html) |
| [Composition (EPS)](StructureDefinition-composition-eu-eps.html) | [Composition (IPS)]({{ ips_base }}StructureDefinition-Composition-uv-ips.html) |
| [Patient (EPS)](StructureDefinition-patient-eu-eps.html) | [Patient (IPS)]({{ ips_base }}StructureDefinition-Patient-uv-ips.html) |
| [MedicationStatement (EPS)](StructureDefinition-medicationStatement-eu-eps.html) | [MedicationStatement (IPS)]({{ ips_base }}StructureDefinition-MedicationStatement-uv-ips.html) |
| [DiagnosticReport (EPS)](StructureDefinition-diagnosticReport-eu-eps.html) | [DiagnosticReport (IPS)]({{ ips_base }}StructureDefinition-DiagnosticReport-uv-ips.html) |
| [Procedure (EPS)](StructureDefinition-procedure-eu-eps.html) | [Procedure (IPS)]({{ ips_base }}StructureDefinition-Procedure-uv-ips.html) |
| [Device (EPS)](StructureDefinition-device-eu-eps.html) | [Device (IPS)]({{ ips_base }}StructureDefinition-Device-uv-ips.html) |
| [DeviceUseStatement (EPS)](StructureDefinition-deviceUseStatement-eu-eps.html) | [DeviceUseStatement (IPS)]({{ ips_base }}StructureDefinition-DeviceUseStatement-uv-ips.html) |
| [Observation: Pregnancy - Expected Delivery Date (EPS)](StructureDefinition-observation-pregnancy-edd-eu-eps.html) | [Observation - Pregnancy: EDD (IPS)]({{ ips_base }}StructureDefinition-Observation-pregnancy-edd-uv-ips.html) |
| [Observation: Pregnancy - Outcome (EPS)](StructureDefinition-observation-pregnancy-outcome-eu-eps.html) | [Observation - Pregnancy: Outcome (IPS)]({{ ips_base }}StructureDefinition-Observation-pregnancy-outcome-uv-ips.html) |
| [Observation: Pregnancy - Status (EPS)](StructureDefinition-observation-pregnancy-status-eu-eps.html) | [Observation - Pregnancy: Status (IPS)]({{ ips_base }}StructureDefinition-Observation-pregnancy-status-uv-ips.html) |
{:.grid}

The following EPS profiles derive from EU Core and add the IPS obligations, but **do not formally declare** conformance with the corresponding IPS profile:

| EPS profile | Corresponding IPS profile |
| --- | --- |
| [AllergyIntolerance - Obligations (EPS)](StructureDefinition-allergyintolerance-obl-eu-eps.html) | [AllergyIntolerance (IPS)]({{ ips_base }}StructureDefinition-AllergyIntolerance-uv-ips.html) |
| [Condition - Obligations (EPS)](StructureDefinition-condition-obl-eu-eps.html) | [Condition (IPS)]({{ ips_base }}StructureDefinition-Condition-uv-ips.html) |
| [Flag: Alert - Obligations (EPS)](StructureDefinition-flag-alert-obl-eu-eps.html) | [Flag - Alert (IPS)]({{ ips_base }}StructureDefinition-Flag-alert-uv-ips.html) |
| [Immunization - Obligations (EPS)](StructureDefinition-immunization-obl-eu-eps.html) | [Immunization (IPS)]({{ ips_base }}StructureDefinition-Immunization-uv-ips.html) |
| [Medication - Obligations (EPS)](StructureDefinition-medication-obl-eu-eps.html) | [Medication (IPS)]({{ ips_base }}StructureDefinition-Medication-uv-ips.html) |
| [Organization - Obligations (EPS)](StructureDefinition-organization-obl-eu-eps.html) | [Organization (IPS)]({{ ips_base }}StructureDefinition-Organization-uv-ips.html) |
| [Practitioner - Obligations (EPS)](StructureDefinition-practitioner-obl-eu-eps.html) | [Practitioner (IPS)]({{ ips_base }}StructureDefinition-Practitioner-uv-ips.html) |
| [PractitionerRole - Obligations (EPS)](StructureDefinition-practitionerrole-obl-eu-eps.html) | [PractitionerRole (IPS)]({{ ips_base }}StructureDefinition-PractitionerRole-uv-ips.html) |
{:.grid}

The following IPS profiles are used directly in the EPS Bundle: [ImagingStudy (IPS)]({{ ips_base }}StructureDefinition-ImagingStudy-uv-ips.html), [Specimen (IPS)]({{ ips_base }}StructureDefinition-Specimen-uv-ips.html), [Observation - SH: alcohol use (IPS)]({{ ips_base }}StructureDefinition-Observation-alcoholuse-uv-ips.html) and [Observation - SH: tobacco use (IPS)]({{ ips_base }}StructureDefinition-Observation-tobaccouse-uv-ips.html).

#### Must Support, Obligations and Actors

This version of the guide adopts the IPS actors ([Creator]({{ ips_base }}ActorDefinition-Creator.html), [Consumer]({{ ips_base }}ActorDefinition-Consumer.html) and [Server]({{ ips_base }}ActorDefinition-Server.html)) and the IPS obligations, with no variance.

Following the HL7 Europe approach, EPS does not use the `mustSupport` flag on its own: Must Support is derived from the obligations defined for the relevant actors. See [Obligations](obligations.html) for details.

#### Sections

Each of the IPS required sections (Problems, Allergies and Intolerances, Medication Summary) is also required in EPS.

EPS imposes the following requirements additional to IPS:

- The **History of Procedures** and the **Medical Devices** sections are **required** (`1..1`) in EPS, to align with the EHDS Patient Summary model. They are optional in IPS.

EPS introduces the following sections that are not defined in IPS:

- **Travel History** (LOINC `10182-4`)
- **Patient History** (LOINC `11329-0`)

The IPS **History of Past Illness** section is not profiled in this guide.

#### Additionally Profiled Resources

This implementation guide profiles the following resources that are not profiled in IPS:

- [Consent: Advance Directives (EPS)](StructureDefinition-consent-eu-eps.html) profiles FHIR resource [Consent](https://hl7.org/fhir/R4/consent.html)
- [Observation: Pregnancy - Gestational Age (EPS)](StructureDefinition-observation-pregnancy-gestationalAge-eu-eps.html) profiles FHIR resource [Observation](https://hl7.org/fhir/R4/observation.html)
- [Observation: Country Visited (EPS)](StructureDefinition-observation-travel-eu-eps.html) profiles FHIR resource [Observation](https://hl7.org/fhir/R4/observation.html)
