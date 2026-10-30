Profile: PatientOblEuEps
Parent: PatientEuEps
Id: patient-obl-eu-eps
Title: "Patient - Obligations (EPS)"
Description: "This profile sets the IPS obligations on the Patient (EPS) profile."

* insert SetFmmAndStatusRule (1, draft)

// ================= IPS OBLIGATIONS =================
* identifier insert ObligationIpsPopulateIfKnownDisplay

* name insert ObligationIpsPopulateDisplay

* name.use insert ObligationIpsPopulateIfKnownDisplay

* name.text insert ObligationIpsPopulateIfKnownDisplay

* name.family insert ObligationIpsPopulateIfKnownDisplay

* name.given insert ObligationIpsPopulateIfKnownDisplay

* telecom insert ObligationIpsPopulateIfKnownDisplay

* gender insert ObligationIpsPopulateIfKnownDisplay

* birthDate insert ObligationIpsPopulateIfKnownDisplay

* address insert ObligationIpsPopulateIfKnownDisplay

* generalPractitioner insert ObligationIpsPopulateIfKnownDisplay
