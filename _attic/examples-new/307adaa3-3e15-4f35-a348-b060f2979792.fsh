Instance: 307adaa3-3e15-4f35-a348-b060f2979792
InstanceOf: CarePlan
Usage: #inline
* category = $care-plan-category#assess-plan
* activity.detail.code = $sct#735985000 "Diabetes self management plan (qualifier value)"
* activity.detail.reasonCode = $sct#714628002 "Prediabetes"
* activity.detail.status = #unknown
* activity.detail.description = "Diabetes self management plan"
* activity.detail.kind = #Appointment
* period.start = "1995-11-23"
* goal = Reference(urn:uuid:562688f2-c6f8-4a02-be4f-8ac4634447ca)
* status = #active
* intent = #plan
* subject = Reference(urn:uuid:8499029f-70ec-4919-88a9-938d8ad56397) "Sebastian Schmidl"