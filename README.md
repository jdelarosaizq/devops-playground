

## Setup

### Prerequisites
Kubernetes 1.19+ - Tested with Docker Desktop
Helm 3.2.0+
Terraform v1.4.6

### Create repo 
In order to share the assessment with us please **fork** this project in your personal Github account

### Install Localstack
`helm repo add localstack-charts https://localstack.github.io/helm-charts`

`helm install localstack localstack-charts/localstack --version 0.6.0`

