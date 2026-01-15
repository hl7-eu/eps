/*============== INVARIANTS ===============
Invariant: eps-bundle-1
Description: "Subject"
* severity = #error
* expression = "(entry.reference.exists() or emptyReason.exists())"
* xpath = "(/f:entry.reference and not /f:emptyReason) or (not(/f:emptyReason) and /f:entry.reference)"
=== */

Profile: BundleEuEps
Parent: Bundle
Id: bundle-eu-eps
Title: "Bundle (EPS)"
Description: "Clinical document used to represent a Patient Summary for the scope of this project."

//==================================
// THIS PROFILE HAS TO BE COMPLETED 
//==================================

* . ^short = "Patient Summary bundle"
* . ^definition = "Patient Summary bundle."

* insert SetFmmAndStatusRule (1, draft)
* insert ImposeProfile($Bundle-uv-ips, 0)

//================================
// Verify if all the IPS rules are reported in the profile
//================================

* entry ^slicing.discriminator[0].type = #type
* entry ^slicing.discriminator[=].path = "resource"
* entry ^slicing.discriminator[+].type = #profile
* entry ^slicing.discriminator[=].path = "resource"
* entry ^slicing.rules = #open
* entry ^short = "Entry resource in the patient summary bundle"
* entry ^definition = "An entry resource included in the patient summary document bundle resource."
* entry ^comment = "Must contain the IPS Composition as the first entry (only a single Composition resource instance may be included) and a Patient resource.  Additional constraints are specified in the IPS Composition profile."
* entry.fullUrl 1.. 
* entry.search ..0
* entry.request ..0
* entry.response ..0
* entry contains
    composition 1..1 and
    patient 1..1 and
    allergyintolerance 0..* and
    careplan 0..* and
    clinicalimpression 0..* and
    condition 0..* and
    consent 0..* and
    device 0..* and
    deviceusestatement 0..* and
    diagnosticreport 0..* and
    documentreference 0..* and
    flag 0..* and
    imagingstudy 0..* and
    immunization 0..* and
    immunizationrecommendation 0..* and 
    medication 0..* and
    medicationrequest 0..* and
    medicationstatement 0..* and
    practitioner 0..* and
    practitionerrole 0..* and
    procedure 0..* and
    observation-pregnancy-edd 0..* and
    observation-pregnancy-outcome 0..* and
    observation-pregnancy-status 0..* and
    observation-alcohol-use 0..* and
    observation-tobacco-use 0..* and
    observation-results-laboratory-pathology 0..* and
    observation-results-radiology 0..* and
    observation-vital-signs 0..* and
    organization 0..* and
    specimen 0..* 


* entry.resource 1..
* entry[composition].resource 1..
* entry[composition].resource only CompositionEuEps
* entry[patient].resource 1..
* entry[patient].resource only PatientEuEps  
* entry[allergyintolerance].resource 1..
* entry[allergyintolerance].resource only AllergyIntoleranceEuCore
* entry[condition].resource 1..
* entry[condition].resource only ConditionEuCore
* entry[device].resource 1..
* entry[device].resource only DeviceEuEps
* entry[deviceusestatement].resource 1..
* entry[deviceusestatement].resource only DeviceUseStatementEuEps

* entry[diagnosticreport].resource 1..
* entry[diagnosticreport].resource only DiagnosticReportEuCore  // to be checked
* entry[imagingstudy].resource 1..
* entry[imagingstudy].resource only $ImagingStudy-uv-ips  //EuEps
    
* entry[immunization].resource 1..
* entry[immunization].resource only ImmunizationEuCore // check if this works...

* entry[flag].resource 1..
* entry[flag].resource only FlagEuCore

* entry[medication].resource 1..
* entry[medication].resource only MedicationEuCore

* entry[medicationrequest].resource 1..
* entry[medicationrequest].resource only MedicationRequestEuEps

* entry[medicationstatement].resource 1..
* entry[medicationstatement].resource only MedicationStatementEuCore

* entry[practitioner].resource 1..
* entry[practitioner].resource only PractitionerEuCore
* entry[practitionerrole].resource 1..
* entry[practitionerrole].resource only PractitionerRoleEuCore

* entry[procedure].resource 1..
* entry[procedure].resource only ProcedureEuCore

* entry[organization].resource 1..
* entry[organization].resource only OrganizationEuCore
* entry[observation-pregnancy-edd].resource 1..
* entry[observation-pregnancy-edd].resource only $Observation-pregnancy-edd-uv-ips //EuEps   ?
* entry[observation-pregnancy-outcome].resource 1..
* entry[observation-pregnancy-outcome].resource only $Observation-pregnancy-outcome-uv-ips //EuEps   ?
* entry[observation-pregnancy-status].resource 1..
* entry[observation-pregnancy-status].resource only $Observation-pregnancy-status-uv-ips //EuEps   ?


* entry[observation-alcohol-use].resource 1..
* entry[observation-alcohol-use].resource only $Observation-alcoholuse-uv-ips //EuEps   ?
* entry[observation-tobacco-use].resource 1..
* entry[observation-tobacco-use].resource only $Observation-tobaccouse-uv-ips //EuEps   ?

* entry[observation-vital-signs].resource 1..
* entry[observation-vital-signs].resource only $vitalsigns

/* * entry contains observation-social-history 0.. 
* entry[observation-social-history] 0..
* entry[observation-social-history] ^short = "Social History Observation"
* entry[observation-social-history] ^definition = "Slice including a generic social history Observation"
* entry[observation-social-history].resource only ObservationSocialHistoryEuEps
 

* entry[observation-results].resource 1..
* entry[observation-results].resource only $Observation-results-uv-ips // ObservationResultsEuEps

*/


* entry[specimen].resource 1..
* entry[specimen].resource only $Specimen-uv-ips
