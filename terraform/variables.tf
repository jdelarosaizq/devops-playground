variable "workspace_iam_roles" {
  default = {
    inv-dev-account  = "arn:aws:iam::756517308436:role/azure-devops-agent-role"
    inv-live-account = "arn:aws:iam::097313693892:role/inv-gitlab-runner-live-power-user-access"
  }
}

variable "environment" {
  default = {
    inv-dev-account  = "inv-dev-account"
    inv-live-account = "inv-live-account"
  }
}

variable "AWS_REGION" {
  type = string
}

variable "aws_account_id" {

  default = {
    inv-dev-account  = "756517308436"
    inv-live-account = "097313693892"
  }
}
