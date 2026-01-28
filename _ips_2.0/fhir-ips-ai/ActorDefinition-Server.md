# Server (IPS) - International Patient Summary Implementation Guide v2.0.0

## ActorDefinition: Server (IPS) 

 
An IPS Server is a FHIR server acting as an[IPS Creator](./ActorDefinition-Creator.md)by providing conformant IPS documents in response to FHIR API requests. 

* **Actor: Server**: An IPS Server is a FHIR server acting as an [IPS Creator](./ActorDefinition-Creator.md) by providing conformant IPS documents in response to FHIR API requests. The IPS documents provided by an IPS Server may include stored and/or generated on demand document content, including historical and/or latest available information. The set of capabilities and behaviours for the IPS Server actor is defined in [IPS Server Capability Statement](./CapabilityStatement-ips-server.md). While an IPS Server actor will fulfill all the obligations of an IPS Creator actor, not all IPS Creator actors need to meet the capabilities defined in the [IPS Server Capability Statement](./CapabilityStatement-ips-server.md).
* **Actor: Server**: Capabilities:
  * Server (IPS): [IPS Server Capability Statement](CapabilityStatement-ips-server.md)
* **Actor: Server**: Derived from:
  * Server (IPS): [Creator (IPS)](ActorDefinition-Creator.md)

