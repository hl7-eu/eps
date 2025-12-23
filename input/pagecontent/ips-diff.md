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

