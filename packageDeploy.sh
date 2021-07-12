#!/bin/bash
#This script takes the required parameters to deploy an API
#
###########Application Paramters####
muleVersion="4.2.2"
userName="REPLACE_BY_USER"
password="REPLACE_BY_USER"
applicationName="REPLACE_BY_USER"
environment="REPLACE_BY_USER"
businessGroup="REPLACE_BY_USER"
visualizer="process"
workerType="REPLACE_BY_USER"
clientId="REPLACE_BY_USER"
clientSecret="REPLACE_BY_USER"
workers="REPLACE_BY_USER"
region="REPLACE_BY_USER"
###################################
#
##########Application parameters########
encryptionKey="REPLACE_BY_USER"
###################################
mvn clean package deploy -DskipMunitTests -DmuleDeploy -DmuleVersion=${muleVersion} -Dusername=${userName} -Dpassword=${password} -DapplicationName=${applicationName} -Denvironment=${environment} -DbusinessGroup=${businessGroup} -Danypoint.platform.visualizer.layer=${visualizer} -Dregion=${region} -Dworkers=${workers} -DworkerType=${workerType} -Danypoint.platform.client_id=${clientId} -Danypoint.platform.client_secret=${clientSecret} -DencryptionKey=${encryptionKey}
