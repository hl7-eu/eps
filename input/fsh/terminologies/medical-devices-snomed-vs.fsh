// --------------------------------------------------
ValueSet: MedicalDevicesSnomedCtHdrVS
Id: medical-devices-eu-hdr
Title: "Medical Devices (SNOMED CT)"
Description: "This value set includes codes from SNOMED Clinical Terms®: all descendants of 49062001 \\|Device (physical object)\\|."
* insert SetFmmAndStatusRule (1, draft)
* insert SNOMEDCopyrightForVS
* ^experimental = false
* include codes from system $sct where concept descendent-of #49062001 "Device (physical object)"

// --------------------------------------------------
ValueSet: MedicalDevicesSnomedAbsentUnknownHdrVS
Id: medical-devices-snomed-absent-unknown-eu-hdr
Title: "Medical Devices - SNOMED CT + Absent/Unknown - IPS"
Description: "This value set includes codes from SNOMED Clinical Terms (SNOMED CT®) that are included in: all descendants of 49062001 \\|Device (physical object)\\|, plus IPS codes for absent/unknown devices."
* insert SetFmmAndStatusRule (1, draft)
* insert SNOMEDCopyrightForVS
* ^experimental = false
* include codes from valueset MedicalDevicesSnomedCtHdrVS
* include codes from valueset $absent-or-unknown-devices-uv-ips
