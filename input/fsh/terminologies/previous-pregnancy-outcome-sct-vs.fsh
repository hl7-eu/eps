ValueSet: PreviousPregnancyOutcomeSCTVS
Id: previous-pregnancy-outcome-sct-vs
Title: "Previous Pregnancy Outcome (SNOMED CT)"
Description: "SNOMED CT codes representing previous pregnancy outcomes."
* insert SetFmmAndStatusRule (1, draft)
* insert LOINCCopyrightForVS
* ^experimental = false
* include codes from system SNOMED_CT where concept descendent-of #763158003
