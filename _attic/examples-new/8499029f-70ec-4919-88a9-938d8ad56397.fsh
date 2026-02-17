Instance: 8499029f-70ec-4919-88a9-938d8ad56397
InstanceOf: Patient
Usage: #inline
* meta.security[0] = $v3-ActReason#HTEST
* meta.security[+] = $v3-ActReason#TRAIN
* meta.profile = "http://hl7.eu/fhir/eps/StructureDefinition/patient-eu-eps"
* identifier[0].type = $v2-0203#PT
* identifier[=].system = "http://ec.europa.eu/identifier/eci"
* identifier[=].value = "4625-445892-3"
* identifier[+].type = $v2-0203#MR
* identifier[=].system = "http://local.setting.eu/identifier"
* identifier[=].value = "75a8a7f3-8f32-818f-2c14-42baf85ba9f9"
* name.given = "Sebastian"
* name.family = "Schmidl"
* name.text = "Sebastian Schmidl"
* address.line = "Annabell-Ostermann-Ring 408"
* address.use = #home
* address.type = #physical
* address.postalCode = "9433"
* address.city = "Sankt Andrä im Lavanttal"
* address.country = "Austria"
* telecom.system = #phone
* telecom.value = "+43 7312 72221 120"
* extension.url = "http://hl7.org/fhir/StructureDefinition/patient-nationality"
* extension.valueCodeableConcept =  urn:iso:std:iso:3166#AT
* gender = #male
* birthDate = "1974-05-10"