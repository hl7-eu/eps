
Extension: MedicationDevice
Id:        ihe-ext-medication-device
Title:     "Medication - Device"
Description: "Device, typically an administration device, included in the medicinal product."
// Extension on Medication
* ^url = "http://profiles.ihe.net/PHARM/ihe.pharm.mpd/StructureDefinition/ihe-ext-medication-device"
* extension contains
    device 1..1 and
    quantity 0..1
* extension[device].value[x] only CodeableConcept or Reference(Device or DeviceDefinition)
* extension[device] ^short = "Coded or referenced device"
* extension[quantity].value[x] only Quantity
* extension[quantity] ^short = "Number of defined devices in te package"

Extension: MedicationStrengthSubstance
Id: ihe-ext-medication-strengthsubstance
Title: "Medication - Strength substance"
Description: "Substance for marking the basis of strength. When the precise active ingredient is a salt, the strength is often provided for the active moiety (basis of strength)."
Context: Medication.ingredient.strength
* ^url = "http://profiles.ihe.net/PHARM/ihe.pharm.mpd/StructureDefinition/ihe-ext-medication-strengthsubstance"
* value[x] only CodeableConcept
* valueCodeableConcept 1..1


Extension: MedicationStrengthType
Id: ihe-ext-medication-strengthtype
Title: "Medication - Strength type"
Description: "Strength type (e.g. concentration strength, presentation strength)"
Context: Medication.ingredient.strength
* ^url = "http://profiles.ihe.net/PHARM/ihe.pharm.mpd/StructureDefinition/ihe-ext-medication-strengthtype"
* value[x] only CodeableConcept
* valueCodeableConcept 1..1

Extension: MedicationClassification
Id:        ihe-ext-medication-classification
Title:     "Medication - Classification"
Description: "Medication classification/category. Allows the product to be classified by various systems, e.g ATC, narcotic class, legal status of supply, etc.."

* ^url = "http://profiles.ihe.net/PHARM/ihe.pharm.mpd/StructureDefinition/ihe-ext-medication-classification"
* ^context[+].type = #element
* ^context[=].expression = "Medication"
* value[x] only CodeableConcept 


Extension: MedicationProductName
Id:        ihe-ext-medication-productname
Title:     "Medication - Product Name"
Description: "Name of the medicinal product. This is typically the name of a real product as registered. This element should not contain display names of virtual product concepts."

* ^url = "http://profiles.ihe.net/PHARM/ihe.pharm.mpd/StructureDefinition/ihe-ext-medication-productname"
* ^context[+].type = #element
* ^context[=].expression = "Medication"
* value[x] only string
* valueString 1..1


Extension: MedicationSizeOfItem
Id:        ihe-ext-medication-sizeofitem
Title:     "Medication - Size of Item"
Description: "Size of a manufactured item or unit of presentation. For example, size of one vial in a package that may contain several vials."
Context: Medication

* ^url = "http://profiles.ihe.net/PHARM/ihe.pharm.mpd/StructureDefinition/ihe-ext-medication-sizeofitem"
* value[x] only Quantity
* valueQuantity 1..1


Extension: MedicationCharacteristic
Id:        ihe-ext-medication-characteristic
Title:     "Medication - Characteristic"
Description: "Any characteristic of the medicinal product prescribed or dispensed (for example, price, textual package description, special program information, etc)"

* ^url = "http://profiles.ihe.net/PHARM/ihe.pharm.mpd/StructureDefinition/ihe-ext-medication-characteristic"
* extension contains
    type 1..1 and
    value 0..1
* extension[type].value[x] only CodeableConcept
* extension[type] ^short = "Code specifying the type of characteristic of medication"
* extension[value] ^short = "Descriptive value of the characteristic"


Extension: MedicationUnitOfPresentation
Id:        ihe-ext-medication-unitofpresentation
Title:     "Medication - Unit of presentation"
Description: "Unit of presentation, typically describing the smallest countable package item (e.g tablet, vial, ampoule, etc). Unit of presentation is also often used in describing pack size and the denominator of strength. If the size of presentation unit is relevant, it should be described in sizeOfItem extension."
* ^context[+].type = #element
* ^context[=].expression = "Medication"
* ^url = "http://profiles.ihe.net/PHARM/ihe.pharm.mpd/StructureDefinition/ihe-ext-medication-unitofpresentation"
* value[x] only CodeableConcept 
* valueCodeableConcept 1..1

// Extension: MedicationDevice - separate for R4 and R5 due to CodeableReference
// StrengthSubstance separate for R4 and R5 due to strength[x] element
// StrengthType separate for R4 and R5 due to strength[x] element


