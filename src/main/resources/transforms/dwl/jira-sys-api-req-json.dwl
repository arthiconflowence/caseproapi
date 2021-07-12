%dw 2.0
output application/json
fun getPriority(priority: String) = do {
	var returnPriority = if (priority=="High") "1" else if(priority=="Medium") "3" else  "4"
	  
    ---
    returnPriority
}
---
{
  "projectKey": p('jira-sys-api.project-key'),
  "summary": payload.subject,
  "description": payload.description,
  "priority": getPriority(trim(payload.priority)),
  "sfdcCaseId": payload.caseId
}