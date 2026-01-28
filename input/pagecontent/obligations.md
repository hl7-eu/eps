
<div xmlns="http://www.w3.org/1999/xhtml" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
	<blockquote class="stu-note">
		<b>Work in progress</b>
		<p>Obligations have been not been specifed yet.</p>
	</blockquote>
</div>


### Overview 

Obligations are a means offered by HL7 FHIR to specify functional capabilities that defined actors MAY, SHOULD, or SHALL apply to the data elements specified by the profiles.

In FHIR, obligations are defined in the conformance layer and associated with actors. They are typically expressed as constraints on profile elements, tied to named actors, and documented alongside the profiles that declare them. Relevant FHIR conformance resources commonly used when describing obligations and actors include `ActorDefinition`, `CapabilityStatement`, and `ImplementationGuide`. See also the FHIR obligation extension and obligation code value set for the formal definition of obligation statements.


This page describes also the actors that have been defined for specifying the obligations.

### Actors

Three actors have been specified:

The first is the actor creating the report (the authoring/producer system).
The second actor is the system maintaining a copy of the report received, to store and make it available for consumers (repository/custodian).
The last actor is the system using the report received or retrieved (consumer/reader).

These align with the IPS actors as described in the IPS guidance: **Creator (IPS)**, **Consumer (IPS)**, and **Server (IPS)**. In IPS, obligations are always tied to an actor and accompany all `mustSupport` elements, specifying the structured expectations for that actor (e.g., what the Creator must populate and what the Consumer must process). Obligations can differ between Creator and Consumer, and IPS highlights that obligations should not conflict with regional laws and policies.


### Obligations List

*Obligation List*

References:
- HL7 FHIR obligation extension and obligation code value set.
- HL7 FHIR conformance documentation for `ActorDefinition`, `CapabilityStatement`, and `ImplementationGuide`.
- IPS implementation guidance on actors and obligations: Creator (IPS), Consumer (IPS), Server (IPS).