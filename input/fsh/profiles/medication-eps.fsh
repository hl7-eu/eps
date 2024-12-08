//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  MedicationEuEps
Parent:   Medication
Id:       Medication-eu-eps
Title:    "Medication (EPS)"
Description: "This profile constrains the Medication resource for the purpose of this guide, adapted from the MPD work."
//-------------------------------------------------------------------------------------------

* insert SetFmmandStatusRule (1, draft)

* insert ImposeProfile ($Medication-uv-ips , 0)

// Only R4 rules

* ingredient
//  * itemCodeableConcept from $eHDSISubstance (example)
  * itemReference only Reference (MedicationEuEps)
  * strength ^short = "Amount of substance in product (presentation or concentration strength)"
  * strength ^definition = """Definitional resources should be used for specifying the different types of strengths: presentation; concentration."""
  * strength  // item.ingredient.strengthInfo (does not map exactly)
    * extension contains MedicationStrengthSubstance named strengthSubstance 0..1 
    * extension[strengthSubstance] ^short = "Substance for which the strength is provided (this could be different from the precise active ingredient)."
    * extension contains MedicationStrengthType named strengthType 0..1
    * extension[strengthType] ^short = "Type of the given strength (concentration strength, presentation strength, or other)"
//* form from $eHDSIDoseForm (example)
//  * ^short = "Dose form. For a branded product, this would most likely be authorised dose form, but it could also be administrable dose form. For package items, it could be item's individual dose form." // doseForm


// Common R4 R5
* extension contains MedicationProductName named productName 0..1 // productName
* extension[productName] ^short = "Name of the medicinal product. Names of different types (full name, short name, etc) and in different languages can be provided if relevant." 

* extension contains MedicationClassification named classification 0..* // classification
* extension[classification] ^short = "Classifications of the product, e.g ATC, narcotic/psychotropic, orphan drug, etc"

* extension contains MedicationSizeOfItem named sizeOfItem 0..1 // item.containedQuantity
* extension[sizeOfItem] ^short = "Size of one item (for example, in a pack of 5 vials, this would represent the size of 1 vial)"

* extension contains MedicationDevice named device 0..* // device
* extension[device] ^short = "Device, typically an administration device, included in the product."

* extension contains MedicationCharacteristic named characteristic 0..* // characteristic
* extension[characteristic] ^short = "Specifies other descriptive properties of the medication."

* extension contains MedicationUnitOfPresentation named unitOfPresentation 0..1 // item.unitOfPresentation
* extension[unitOfPresentation] ^short = "Unit of presentation of the product (e.g. tablet, vial, ampoule, etc)"


* identifier
  * ^short = "Identifier for the medicinal product, its generic representation, or packaged product." //identifier
* code 
  * ^short = "A terminology-based code for the product" // productCode
* ingredient 
  * ^short = "Ingredient or a part product. For combination packs, each ingredient can be a separate manufactured item with its own ingredients, dose form, and strength" // item
  * isActive ^short = "Active ingredient flag" // item.ingredient.role
* form ^short = "Dose Form"
