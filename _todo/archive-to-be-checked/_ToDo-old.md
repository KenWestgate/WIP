On Hold
-------
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

Daily
-----
Tech Blog
Burn Down - time and % complete on tickets

To Do
-----
- RNLAF - SCAN mssql-client
- RNLAF - get identity-server working
- RNLAF - push latest images and charts for rainradar/weather/identity-server
- RNLAF - email to confirm above
- shinobi video flow
- commission tf-development-grimaldi
- commission tf-development-talbot
- jenkins-microservices pipeline
- 




- remove GetSwaggerPrefix() method from the StartUp.cs class
- complete document-receiver and  georeferenceddocument-creator helm charts
- webhook PR in videomanager???

reloader -> talbot
talbot/other seed/demo data

Is there a clock drift issue in the pods that can cause 401s after a long period?
REMOVE http and http REDIRECT, use ONLY https
---
seq - ensure retention period gets created during install
seq - ensure authentication/authorization set up during install
seq - store to S3?
login to device-frontend?

delete spurious topics from kafka
protocol-forwarder re-add pipeline to turn on/off
task-server/task-datafetcher - deployment targets/replicas, cf protocol-forwarder

redis ui accessible external to grimaldi

environment variable ingress to handle full uri instead of parts.

servicediscovery -> discovery-server ingress....?

- resource limits for pods ***

- rtmp stream
- remove cats and echos from jenkins-libraries
nuget.config - remove credentials...
protocol-forwarder as a kubernetes cron job (or kafka...)?
organisationlayerdataexchanger as cron job (or kafka...)?

shinobi
  ingress
  json config to be set from env vars

DOING
-----
device-frontend...?

* helper for helm ingress name/environment
* jenkins pipeline creator to ignore "retired" tags and create pipelines in appropriate folders for others
* create database pipeline (maven - location database)
* create database (for ef projects)
* Resource issues
? livedatalayer websocket
- btk - kafka in config file, redis in config file
- copy identity server values for nscu-cinet and excelerate
- logging to SEQ not happening from kafka package...?
* ortus datafetcher not working
* video-server not deploying to talbot/delia
* device-frontend not building?
* videotcp-translator - no jenkinsfile content?s
- c4 diagram of asset ingestion....video
- video-translator pipeline to use libraries
- port 5013 => port 80 and videotranslator should NOT be a NodePort
---
* https tls/ssl into AWS/EKS grimaldi (Shan?)
* Identity server - no client for ortus?
* http://task-manager-grimaldi.abxinternal.com/swagger/index.html - no swagger?
* update deployments to check whether successful or not...
* icon-builder - what does this do? not sure that this should be continuously running...?
- 
- remove eurekadiscoveryclient...
- kafka environment variables x4 => Kafka__...
- redis - THP disable (see THP-disable.txt)

- redis ingress: https://stackoverflow.com/questions/62939846/exposing-redis-with-ingress-nginx-controller

- user-server - get unit tests working again
- asset-manager client method names have a version..?
- roll seq out across all microservices

- kubeconfig prompt to show current context. cf posh-git
- kubectl context switcher...

TODO
----
******
- airbox.assetmanager.client - bring up to date and use dotnet standard 2.0...
- clients should target dotnet standard 2.0


- enrich log messages with docker image version....
- redis__connection string - video-manager but also others
- EKS Mobile 5 ingress and other services...

- MOB-35: SSL issues for prod migration - ??? lower priority as not needed for cofnito...?
  - IdentityServer update in https://github.com/AirboxSystems/Airbox.Core/blob/develop/Airbox.ThunderCloud/Airbox.ThunderCloud.WebService/GetAuthenticationToken.ashx.cs
    RequestClientCredentialsTokenAsync - comes back with "can't create"
- Morning, just a quick one. I have created your user account in Cognito, temporary password - "Airbox1!"
- seq - add alert notifications on the external log

- TEMPLATES - remove ms-node-01 use
- CHECK all repos/charts for nodeName again.
******
- REST APIs to return "next" link and other best practices

- minikube config notes - ensure hyper-v VM is set to NOT start automatically

- use the status api for PRs https://docs.github.com/en/rest/reference/repos#statuses to prevent merges before build?
  and: https://timheuer.com/blog/add-approval-workflow-to-github-actions/
- nscu datafetcher - update URLs and deploy?
- stakater reloader annotations -> helm charts (use rg "\{\{ .Values.global.ENVIRONMENT \}\}-" -g *.yaml)
- stakater reloader pipeline...
- Airbox.HealthChecks - improvements for k8s
- local development environment "enabled" flag cf kafka charts
- prometheus and grafana on grimaldi and Talbot
- ALERTS - 
- "catch -> throw" should be a clean return not lazy coding...?

- pipelines: helm upgrade --wait and fail....?
- test scaling pods up to confirm we don't have concurrency issues
- keycloak (and others) - role, database and schema creation
- package pipeline to push to nexus
- code coverage into template, user-server etc...

---

- centralise database creation for liquibase dbs - others....?
- add "if exists" checks to database/role creation so they don't fail when re-run (or get liquibase set up properly...)
- image scanner in pipeline
- code coverage in new repos and pipelines
- AIRBOX credentials in pipelines... interpolation...?
- local-development-environment - use creds in publish script
- local-development-environment - versioning auto-update or parameter for major/minor?
- in documentation for creating repo - add documentation to coevr creating environment variables
- ditch the BASE64 in the yaml files and use a base64 converter in the scripts
- jenkins pipeline creation needs the correct template...
- github webhook into teams - notify PR raised/changed
- index page for <grimaldi> apis
- MicroDev-context permissions - enable create job and secret
- workflow tools - change deployment.yaml "type" when creating a new repo
- keycloak - does it automatically create a database?
- do we need a keycloak instance per environment or one to cover "all" realms...?
- ASPNETCORE=DEVELOPMENT...?
- code coverage...
- switch user-server to use auth0 and show Alla
- all repos - user secrets - check guids are unique

java->c# language converter: https://www.microsoft.com/en-us/download/details.aspx?id=14349
abx_apps_lsms -> healthchecks
convert scripts from ps1 to go
migrate folders from abx_apps_lsms to AirboxSystems repos
k8s ports - reset all to port 80/5000/5432/6379 etc as appropriate
Pipeline powershell scripts -> psd into one folder
other utility scripts -> psd in one folder
Repo restructuring
Database schema deploy pipeline...?
pipeline for nuget packages...
insecure interpolation in pipelines
escape messages in notifications to jenkins (_ = markdown)

Very soon
---------
Jenkins pipelines agent -> kubernetes pods

Future
------
RTMP streaming
Learn Polly
Learn Istio for service mesh
Learn nginx-ingress
Learn K6 testing
https://www.keycloak.org/
