ValueSet: GestationalAgeLoincVs
Id: gestational-age-loinc
Title: "Gestational Age (LOINC)"
Description: "LOINC codes with component Gestational age (LP19507-0)."
* insert SetFmmAndStatusRule (1, draft)
* insert LOINCCopyrightForVS
* ^experimental = false
* include codes from system $loinc where COMPONENT = #LP19507-0 "Gestational age"
