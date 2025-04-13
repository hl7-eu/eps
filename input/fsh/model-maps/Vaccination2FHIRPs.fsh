Instance: vaccination2FHIR-eu-eps
InstanceOf: ConceptMap
Usage: #definition
* url = "http://hl7.eu/fhir/hdr/ConceptMap/vaccination2FHIR-eu-eps"
* name = "Vaccination2FHIRPs"
* title = "eHN Alerts Model to this guide Map"
* status = #draft
* experimental = true
* description = """eHN HDR Alerts Model to this guide mapping"""
* group[+].source = "http://hl7.eu/fhir/eps/StructureDefinition/Vaccination"
* group[=].target = "http://hl7.eu/fhir/eps/StructureDefinition/ImmunizationRecommendation-eu-eps"
* group[=].element[+].code = #Vaccination.dateOfNextVaccination
* group[=].element[=].display = "A.2.2.1.11 Next vaccination date"
* group[=].element[=].target.code = #ImmunizationRecommendation.recommendation.dateCriterion[nextDose].value
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[+].source = "http://hl7.eu/fhir/eps/StructureDefinition/Vaccination"
* group[=].target = "http://hl7.eu/fhir/eps/StructureDefinition/composition-eu-eps"
* group[=].element[+].code = #Vaccination.targetDisease
* group[=].element[=].display = "A.2.2.1.1 Disease or agent targeted"
* group[=].element[=].target.code = #Immunization.protocolApplied.targetDisease
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[+].source = "http://hl7.eu/fhir/eps/StructureDefinition/Vaccination"
* group[=].target = "http://hl7.eu/fhir/eps/StructureDefinition/immunization-eu-eps"
* group[=].element[+].code = #Vaccination.vaccine
* group[=].element[=].display = "A.2.2.1.2 Vaccine/prophylaxis"
* group[=].element[=].target.code = #Immunization.vaccineCode
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #Vaccination.productName
* group[=].element[=].display = "A.2.2.1.3 Vaccine medicinal product name"
* group[=].element[=].target.code = #Immunization.extension:administeredProduct
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "add more specific target"
* group[=].element[+].code = #Vaccination.productId
* group[=].element[=].display = "A.2.2.1.3.1 Identifier of the vaccine medicinal product"
* group[=].element[=].target.code = #Immunization.extension:administeredProduct
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "add more specific target"
* group[=].element[+].code = #Vaccination.marketingAuthorisationHolder
* group[=].element[=].display = "A.2.2.1.4 Marketing Autorisation Holder"
* group[=].element[=].target.code = #Immunization.manufacturer
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #Vaccination.numberInSeries
* group[=].element[=].display = "A.2.2.1.5 Number in a series of vaccinations/doses"
* group[=].element[=].target.code = #Immunization.protocolApplied.doseNumberPositiveInt
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #Vaccination.batchNumber
* group[=].element[=].display = "A.2.2.1.6 Batch/lot number"
* group[=].element[=].target.code = #Immunization.lotNumber
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #Vaccination.dateOfVaccination
* group[=].element[=].display = "A.2.2.1.7 Date of vaccination"
* group[=].element[=].target.code = #Immunization.occurenceDateTime
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #Vaccination.administeringCentre
* group[=].element[=].display = "A.2.2.1.8 Administering centre"
* group[=].element[=].target.code = #Immunization.performer:administeringCentre
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #Vaccination.healthProfessionalId
* group[=].element[=].display = "A.2.2.1.9 Health Professional identification"
* group[=].element[=].target.code = #Immunization.performer:administeringHp.identifier
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[+].code = #Vaccination.countryOfVaccination
* group[=].element[=].display = "A.2.2.1.10 Country of vaccination"
* group[=].element[=].target.code = #Immunization.location.address.country
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #relatedto
