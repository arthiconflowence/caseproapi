# case-prc-api
This process API is used to orchestrate data between consumer and system APIs.The API input fields corresponds to the Canonical data format.API accepts input as JSON Object and transforms to System API specific output format.This API orchestrates case  object data by looking up complete set of data in Salesforce using sfdc-sys-api and transforms into respective System API format.It invokes snow-sys-api to create incident in Service Now.It invokes jira-sys-api to create issue in JIRA.The Creation of Incident/Issue is controlled from Salesforce.Based on the Sync_With_JIRA__c and Sync_With_SNOW__c field from Salesforce,this API orchestrates the invocation of the respective System APIs.
This API orchestrates incident updates from SNOW/JIRA back to Salesforce.
# Prerequisite Setup

 - Make sure snow-sys-api,sfdc-sys-api,jira-sys-api projects are deployed and running.
 - Update the System API's Hostname in properties file under respective properties.

# Installation Instructions For Studio


- Clone the project using any Github client or Anypoint Studio Git plugin.
- Import the project into workspace.
- Modify LOCAL.yaml properties appropriately.
- Studio --> Right Click  on Project --> Run As --> Run Configurations , Navigate to Arguments tab, in VM arguments enter the following

           
           -M-Dmule.env=LOCAL
           -M-DencryptionKey=(use your encryptionKey) 
           -M-Danypoint.platform.gatekeeper=disabled
          
           
           
- Click on Apply Button.
- Run the project.

# Deployment Instructions For CH

- API Manager:
     
     Refer here to create API definition: [accelerator-documentation/files/api-config.md](https://github.com/mulesoft-labs/accelerator-documentation/blob/master/files/api-config.md)

- Runtime Manager :

   Use the following Maven command to deploy application to Cloud Hub, replace '**' with appropriate values
   
mvn clean package deploy -DskipMunitTests -DmuleDeploy -DmuleVersion=** -Dusername=** -Dpassword=** -DapplicationName=** -Denvironment=** -DbusinessGroup=** -DworkerType=** -Danypoint.platform.client_id=** -Danypoint.platform.client_secret=** -DencryptionKey=** -Danypoint.platform.visualizer.layer=process
