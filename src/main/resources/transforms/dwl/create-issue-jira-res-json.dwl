%dw 2.0
output application/json
---
{
	jiraMessage: p('application-msgs.jira-create-success-message'),
	jiraSysId: payload.id default "",
	issueNumber: payload.key default ""
}