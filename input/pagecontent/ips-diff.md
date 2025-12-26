This page list the non compatible differences between the eu core and the ips profiles.
This is added for deveopment purposes and it is not part of the EPS FHIR IG.

### Condition

No main differences.

### AllergyIntolerance

No main differences.

### MedicationStatement

| Element | IPS | EPS | Notes |
|---------|---------|---------|---------|
| subject | Reference(Patient (IPS)) | Reference(Patient (EU core) or Group) | --- |
| subject.reference | 1..1 | 0..1  | --- |
| effective[x]| 1..1 | 0..1  | --- |

### Medication

| Element | IPS | EPS | Notes |
|---------|---------|---------|---------|
| code | 1..1 | 0..1  | --- |

### Immunization

| Element | IPS | EPS | Notes |
|---------|---------|---------|---------|
| patient.reference | 1..1 | 0..1  | --- |

### ProcedureEuCore

| Element | IPS | EPS | Notes |
|---------|---------|---------|---------|
| subject.reference | 1..1 | 0..1  | --- |
| performer.actor | Patient (IPS) or RelatedPerson or Device - Performer or Observer (IPS) or Practitioner (IPS) or PractitionerRole (IPS) or Organization (IPS)| PractitionerRole (EU core) or Practitioner (EU core) or Device or Patient (EU core) or RelatedPerson or Organization (EU core) | ProcedureEuCore allow for any kind of device...|


### FlagEuCore

| Element | IPS | EPS | Notes |
|---------|---------|---------|---------|
|subject| Reference(Patient or Location or Group or Organization or Practitioner or PlanDefinition or Medication or Procedure) |Reference(Patient (EU core))|EPS is conformant, is this restriction needed ?|
| subject.reference | 1..1 | 0..1  | --- |

### DiagnosticReportEuCore

| Element | IPS | EPS | Notes |
|---------|---------|---------|---------|
| basedOn |	Reference(CarePlan or ImmunizationRecommendation or MedicationRequest or NutritionOrder or ServiceRequest)|Reference(ServiceRequest)|PS is conformant, is this restriction needed ?|
|subject| Reference(Patient (IPS) or Group) |Reference(Patient (EU core) or Patient: Animal (EU core) or Group or Location or Device)| |
| subject.reference | 1..1 | 0..1  | --- |
| effective[x] | 1..1 | 0..1|  |