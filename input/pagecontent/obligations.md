
<div xmlns="http://www.w3.org/1999/xhtml" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
	<blockquote class="stu-note">
		<b>Work in progress</b>
		<p>This version of the guide adopts the IPS Obligations. A review will be done when the obligations on the Xt-EHR Logical MOdels will be delivered.</p>
	</blockquote>
</div>


### Overview

Obligations are a means offered by HL7 FHIR to specify functional capabilities that defined actors MAY, SHOULD, or SHALL apply to the data elements specified by the profiles.

In HL7 FHIR, obligations are defined in the conformance layer and associated with actors. They are typically expressed as constraints on profile elements, tied to named actors, and documented alongside the profiles that declare them. 
See also the HL7 FHIR obligation extension and obligation code value set for the formal definition of obligation statements.


### Actors

The actors used in this version of this guides are those defined by the IPS. 
The IPS actors are (definitions in the IPS guide):
- **Creator (IPS)**: a system which produces/assembles/creates an IPS document. See [ActorDefinition-Creator](https://hl7.org/fhir/uv/ips/ActorDefinition-Creator.html).
- **Consumer (IPS)**: a system that receives an IPS document and uses its content. See [ActorDefinition-Consumer](https://hl7.org/fhir/uv/ips/ActorDefinition-Consumer.html).
- **Server (IPS)**: a FHIR server acting as an IPS Creator by providing conformant IPS documents in response to FHIR API requests. See [ActorDefinition-Server](https://hl7.org/fhir/uv/ips/ActorDefinition-Server.html).


### Usage of Obligations


In IPS, obligations are always tied to an actor and accompany all `mustSupport` elements, specifying the structured expectations for that actor (e.g., what the Creator must populate and what the Consumer must process). 
Obligations can differ between Creator and Consumer, and IPS highlights that obligations should not conflict with regional laws and policies. 

In the HL7 Europe approach, the `mustSupport` flag is not used; instead, Must Support is derived implicitly from the obligations defined for the relevant actors.

The current HL7 Europe design approach is to keep structural and obligation rules separate; however, because this guide inherits from IPS, an exception has been made and a single profile combining obligations and structural rules has been defined, following the IPS approach.