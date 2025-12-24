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