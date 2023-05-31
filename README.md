# devops-playground
Thank you for taking the time ro read this assessment. This repo simulates a provisioning and configuration management code life cycle. It gives a starting point for candidates to demonstrate skills in certain areas like:
- Configuration code
- Infrastructure as code
- Infrastructure design
- Peer reviews
- Testing
- Cloud providers and cloud-native solutions

## Setup

### Prerequisites
- Kubernetes 1.19+ (Tested with Docker Desktop)
- Helm 3.2.0+
- Terraform v1.4.6
- jq-1.6
- curl
- wget
- kubectl

### Initial setup
In order to share the assessment with us please **fork** this project in your personal Github account.

Although we will be using a public repo in Github you will need a token to download artifacts from workflows. You can create one from:
`Profile -> Settings -> Developer setting -> Tokens (classic) 
`
## How it works?
The idea is to interact with a local Kubernetes cluster using Github actions. Normally you would use a cloud service to interact from Github workflows, however, for the sake of simplicity, workflows will only produce a shell script with Terraform and Helm commands. You have already an example at `.github/workflows/push-branch.yml`. 

The following script will download the resultant artifact from the workflow and it will run it against your local cluster:

`./run-pipeline.sh OWNER REPO ARTIFACT_NAME TOKEN
`

i.e.:

`./run-pipeline.sh jdelarosaizq devops-playground push-branches [TOKEN HERE]
`


The provided initial workflow will install Localstack for you. Once is done we will need to updload some example data by running:
.

## Technical Stories
We are looking to improve the given starting point and continue adding more stages to the live cycle. Some suggestions are:
- As developer, I want to test my branches before merging to main, so I don't make untested changes in live infrastructure. 
- As infrastructure engineer, I want Neo4j to hold state in a persistent volume, so when pod restarts I keep the data.
- As devops engineer, I want a workflow for merging into main that applies infra changes, so we avoid manual changes.
- As data engineer, I want a workflow to load data in Neo4j from **given** a csv name hosted in a S3 bucket, so that I can release my data.
- As devops engineer, I want to test that the data was loaded, so my confidence increases. 
- As service manager, I want to provision new Neo4j instances by using blue-green deployment, so that there is no downtime. 

## Dicussion
- What would we need to change to deal with very large data files?
- What would be a good choice for our volumes?
- If we use this import process in a real environment. Is there any risk that our date could get stolen?

