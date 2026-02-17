Instance: EPSExampleBundle01NoProblemsMedicationAllergies
InstanceOf: BundleEuEps
Title: "Bundle: Empty EPS (No problems, medications, allergies)"
Description: "APS ohne Probleme, Medikamente oder Allergien (Minimalbeispiel)"
Usage: #example
* identifier.system = $uuid
* identifier.value = "63fef90a-be11-4ddf-aece-d77da15c4f20"
* type = #document
* timestamp = "2024-02-08T14:01:30+00:00"
* entry[0].fullUrl = "urn:uuid:212fdc76-ccc3-40bf-8cdd-82f2ef88bd7b"
* entry[=].resource = EPSExampleBundle01-composition
* entry[+].fullUrl = "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8"
* entry[=].resource = EPSExampleBundle01-patient
* entry[+].fullUrl = "urn:uuid:75db30ee-7028-486c-929a-c5126837f472"
* entry[=].resource = EPSExampleBundle01-author
* entry[+].fullUrl = "urn:uuid:6bcdcc96-1443-48bd-ab41-7692dc1baecd"
* entry[=].resource = EPSExampleBundle01-custodian

Instance: EPSExampleBundle01-composition
InstanceOf: CompositionEuEps
Usage: #inline
// * language = #de-AT
* status = #preliminary
* type = $loinc#60591-5 "Patient summary Document"
* subject = Reference(urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8) "Maria Musterfrau"
* date = "2024-02-08T14:01:30+00:00"
* author = Reference(urn:uuid:75db30ee-7028-486c-929a-c5126837f472) "APS Generator"
* title = "Austrian Patient Summary"
* custodian = Reference(urn:uuid:6bcdcc96-1443-48bd-ab41-7692dc1baecd) "Muster-Organization"
// * extension[countryOfAffiliation].valueString = "AT"
* section[sectionMedications].title = "Medikationsliste"
* section[sectionMedications].code = $loinc#10160-0 "History of Medication use Narrative"
* section[sectionMedications].text.status = #empty
* section[sectionMedications].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Narrativer Text muss generiert werden.</p></div>"
* section[sectionMedications].emptyReason = $list-empty-reason#nilknown
* section[sectionAllergies].title = "Allergien und Intoleranzen"
* section[sectionAllergies].code = $loinc#48765-2 "Allergies and adverse reactions Document"
* section[sectionAllergies].text.status = #empty
* section[sectionAllergies].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Narrativer Text muss generiert werden.</p></div>"
* section[sectionAllergies].emptyReason = $list-empty-reason#nilknown
* section[sectionProblems].title = "Gesundheitsprobleme und Risiken"
* section[sectionProblems].code = $loinc#11450-4 "Problem list - Reported"
* section[sectionProblems].text.status = #empty
* section[sectionProblems].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Narrativer Text muss generiert werden.</p></div>"
* section[sectionProblems].emptyReason = $list-empty-reason#nilknown
* section[sectionProceduresHx].title = "Eingriffe und Therapien"
* section[sectionProceduresHx].code = $loinc#47519-4 "History of Procedures Document"
* section[sectionProceduresHx].text.status = #empty
* section[sectionProceduresHx].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Narrativer Text muss generiert werden.</p></div>"
* section[sectionProceduresHx].emptyReason = $list-empty-reason#nilknown
* section[sectionMedicalDevices].title = "Implantate, medizinische Geräte und Heilbehelfe"
* section[sectionMedicalDevices].code = $loinc#46264-8 "History of medical device use"
* section[sectionMedicalDevices].text.status = #empty
* section[sectionMedicalDevices].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Narrativer Text muss generiert werden.</p></div>"
* section[sectionMedicalDevices].emptyReason = $list-empty-reason#nilknown

Instance: EPSExampleBundle01-patient
InstanceOf: PatientEuEps
Usage: #inline
* name.family = "Musterfrau"
* name.given[0] = "Maria"
* name.given[+] = "Johanna"
* name.prefix = "Dr."
* telecom[0].system = #phone
* telecom[=].value = "+43.2682.40400"
* telecom[=].use = #home
* telecom[+].system = #phone
* telecom[=].value = "+43.664.1234567"
* telecom[=].use = #mobile
* telecom[+].system = #email
* telecom[=].value = "musterfrau@provider.at"
* gender = #female // 1..1 in AT Core
* birthDate = "1961-12-24" // 1..1 in IPS
* address.line = "Musterstraße 13a"
* address.use = #home
* address.city = "Eisenstadt"
* address.state = "Burgenland"
* address.postalCode = "7000"
* address.country = "AUT"
* maritalStatus = $v3-MaritalStatus#M "Married"

Instance: EPSExampleBundle01-author
InstanceOf: Device
Usage: #inline
* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Dieses Gerät erzeugt ein APS FHIR-Dokument.</p></div>"
* deviceName.name = "APS Generator"
* deviceName.type = #user-friendly-name

Instance: EPSExampleBundle01-custodian
InstanceOf: Organization
Usage: #inline
* name = "Muster-Organization"