%dw 2.0
output application/json
---
{
  message : p('application-msgs.success-msg'),
  jiraIssueId	: payload."0".payload.issueNumber default "",
  snowIncidentId: payload."1".payload.incidentNumber default ""

} 