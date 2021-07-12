@ECHO OFF
:: This script takes the required parameters to deploy an API
TITLE Mule Jar Deployment using Maven
:: ######## System Parameters#########################################################

echo  #######################################
echo  #### Script to Deploy the Jar file ####
echo  #######################################


::  #### Setting the system paramters  ####

:: #############System Parameters######################
SET muleVersion="4.2.2"
SET userName="REPLACE_BY_USER"
SET password="REPLACE_BY_USER"
SET applicationName="REPLACE_BY_USER"
SET environment="REPLACE_BY_USER"
SET businessGroup="REPLACE_BY_USER"
SET visualizer="process"
SET workerType="REPLACE_BY_USER"
SET clientId="REPLACE_BY_USER"
SET clientSecret="REPLACE_BY_USER"
SET workers="REPLACE_BY_USER"
SET region="REPLACE_BY_USER"

:: ###################################
:: ##########Application parameters########
set encryptionKey="REPLACE_BY_USER"

:: ########################MAVEN DEPLOY COMMAND#######################################
:: ##########################Get Artifact from target folder##########################
for /f %%i in ('DIR /b target\*.jar') do set artifact=%%i
SET artifact=target/%artifact%

:: echo  ####  Deploying the Jar %artifact% using bellow command  ####

:: echo mvn mule:deploy -DmuleDeploy -Dmule.artifact=%artifact% -DmuleVersion=%muleVersion% -Dusername=%userName% -Dpassword=password -DapplicationName=%applicationName% -Denvironment=%environment% -DbusinessGroup=%businessGroup% -Danypoint.platform.visualizer.layer=%visualizer% -Dregion=%region% -Dworkers=%workers% -DworkerType=%workerType% -Danypoint.platform.client_id=%clientId% -Danypoint.platform.client_secret=clientSecret -DencryptionKey=encryptionKey


mvn mule:deploy -DmuleDeploy -Dmule.artifact=%artifact% -DmuleVersion=%muleVersion% -Dusername=%userName% -Dpassword=%password% -DapplicationName=%applicationName% -Denvironment=%environment% -DbusinessGroup=%businessGroup% -Danypoint.platform.visualizer.layer=%visualizer% -Dregion=%region% -Dworkers=%workers% -DworkerType=%workerType% -Danypoint.platform.client_id=%clientId% -Danypoint.platform.client_secret=%clientSecret% -DencryptionKey=%encryptionKey%

PAUSE
