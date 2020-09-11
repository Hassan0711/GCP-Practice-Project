@ -0,0 +1,26 @@


$ gcloud auth list
Credentialed accounts:
 - <myaccount>@<mydomain>.com (active)


$ gcloud config list project
[core]
project = <PROJECT_ID>

$ gcloud config set compute/zone us-central1-f
$ gcloud config set compute/region us-central1

$ mkdir helloworld && cd helloworld

runtime: go
api_version: go1

handlers:
- url: /.*
  script: _go_app

$ dev_appserver.py ./

$ gcloud app deploy app.yaml 
