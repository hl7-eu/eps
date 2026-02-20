
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


<div class="model-map-block">
      <div class="callout-wrapper">
        <div class="callout-box">
          <strong>This is a QA preview version:</strong>
              No liability can be inferred from the use or misuse of this specification, or its consequences.
        </div>
      </div>
    </div>


### Scope

Specify a set of rules to be applied to HL7 FHIR to define how to represent a **Patient Summary** in the **European** Context, coherently with the European eHN Guidelines (see the [European eHealth - Key documents](https://health.ec.europa.eu/ehealth-digital-health-and-care/key-documents_en) ).
s

### Purpose
The goal of this Implementation Guide is to define an European standard for the Patient Summary to facilitate the harmonization among the national initiatives and prepare the ground for the European EHR eXchange Format (E-EHRxF).

This project is promoted by HL7 Europe, but realized in collaboration with several other European and national organizations and projects.

The aspiration of this guide is that of being used as basis for European National Guides, the European EHRxF and - consequently - by MyHealth@EU for the EU cross-border services.
