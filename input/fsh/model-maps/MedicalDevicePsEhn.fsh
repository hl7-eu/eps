Logical: MedicalDevicePsEhn
Id: MedicalDevice
Title: "A.2.3.2 - Medical devices and implants"
Description: """Medical devices and implants
Section A.2.3.2 of the eHN guideline."""
* description 0..* CodeableConcept "A.2.3.2.1 Device and implant description" """Describes the patient's implanted and external medical devices and equipment upon which their health status depends. Includes devices such as cardiac pacemakers, implantable fibrillator, prosthesis, ferromagnetic bone implants, etc. of which the HP needs to be aware. - Preferred system(s): SNOMED CT GPS* EMDN"""
* identifier 0..* Identifier "A.2.3.2.2 Device ID" """Normalised identifier of the device instance such as UDI according to REGULATION (EU) 2017/745"""
* implantDate 0..* dateTime "A.2.3.2.3 Implant date" """Date when procedure was performed - Preferred system(s): ISO 8601"""
* endDate 0..1 dateTime "A.2.3.2.4 End date" """Date when the device was explanted from the patient or the external device was no longer in use; likewise when the device is planned to be explanted - Preferred system(s): ISO 8601"""
