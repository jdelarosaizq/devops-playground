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
- Kubernetes 1.19+ - Tested with Docker Desktop
- Helm 3.2.0+
- Terraform v1.4.6
- jq-1.6
- curl
- wget

### Prepare your local repo 
In order to share the assessment with us please **fork** this project in your personal Github account.

Although we will be using a public repo in Github you will need a token to download artifacts from workflows. You can create one from:
`Profile -> Settings -> Developer setting -> Tokens (classic) 
`
Export your token to a variable in your shell:
`export GITUB_TOKEN=[your token here]
`
## How it works?
The idea is to interact with a local Kubernetes cluster using Github actions. For the sake of simplicity workflows will only produce a shell script with Terraform and Helm commands. After a pipeline is finished we can apply the changes in our local cluster by running this script:
`./run-pipeline.sh OWNER REPO ARTIFACT_NAME
`
i.e.:
`./run-pipeline.sh jdelarosaizq devops-playground push-branches
`

## Our expectations
We are looking to improve the given starting point and continue adding more stages to the live cycle. Some suggestions are:
- Improve the resultant script of push-branches.sh. Can we avoid any changes before getting into main branch?
- Refactor to separate provision from configuration management.
- Add workflow after merging in main branch.
- Separate roles for writing and reading from the given database


