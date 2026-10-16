
<!-- Horizontal banner -->

<div style="
  /* reserve space for the ToC on the right */
  margin: 0 340px 1.25rem 0;   /* top right bottom left; adjust 340px to your ToC width */
  border: 2px solid #003366;
  border-radius: 8px;
  padding: 1em;
  background-color: #f9f9ff;
  box-sizing: border-box;

  /* optional: pull the banner up a bit to align with the ToC’s top */
  /* margin-top: -0.75rem;  uncomment/tweak if you want tighter vertical alignment */
">
  <div style="margin-bottom: 1em;">
    <img src="xtehr-logo.png" alt="XTEHR Logo" style="max-width: 100%; height: 40px;" />
  </div>
  <div style="text-align: left;">
    <strong>Acknowledgment</strong><br/>
    The development of this Implementation Guide version has been supported by the 
    <strong>Xt-EHR Joint Action</strong>.  
    Xt-EHR provided expertise, alignment with European health policy priorities, 
    and validation of specifications to enable consistency with EHDS requirements.
  </div>
</div>


The **European Patient Summary (EPS)** is a standardized non-exhaustive health data set intended to support safe and effective healthcare delivery, by enabling healthcare professionals to access essential clinical information about a patient, regardless of where the data was originally recorded.

### Scope

Specify a set of rules to be applied to HL7 FHIR to define a **European standard for representing a Patient Summary**. The standard is intended to facilitate harmonisation among national initiatives and to prepare the ground for the European electronic health record exchange format (EEHRxF) specifications applicable to the “patient summaries” priority category of personal electronic health data, as defined in [Article 14 of the EHDS Regulation](https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:32025R0327#art_14).

It is intended to be coherent with the semantic model developed by the [Xt-EHR Joint Action](https://www.xt-ehr.eu/fhir/models), which refines and further specifies the principles and requirements established by the [eHealth Network (eHN) Guideline on the Patient Summary](https://health.ec.europa.eu/system/files/2023-10/ehn_guidelines_patientsummary_en.pdf). As these models evolve, relevant updates are expected to be incorporated into this Implementation Guide to maintain alignment with the EHDS Implementing Acts.


### Purpose

The goal of this Implementation Guide is to define an European standard for the Patient Summary, building on and aligning with the [HL7 International Patient Summary](https://hl7.org/fhir/uv/ips/) (IPS) as its global reference, to facilitate the harmonization among the national initiatives and prepare the ground for the European EHR eXchange Format (E-EHRxF).

This project is promoted by HL7 Europe, but realized in collaboration with several other European and national organizations and projects, including close alignment with the HL7 IPS work to ensure European specifications remain compatible with the international standard.

The aspiration of this guide is that of being used as basis for European National Guides, the European EHRxF and - consequently - by MyHealth@EU for the EU cross-border services.
