%dw 2.0
output application/json
---
{
	snowMessage: p('application-msgs.incident-create-success-message'),
	snowSysId: payload.sysId default "",
	incidentNumber: payload.number default ""
}