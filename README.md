# selectquote_ec2_creation

The goal of this exercise is to create an ec2 instance in AWS using Terraform.

## Prerequisuites

### Terraform

Terraform will need to be installed locally on your device to perform this task.

This can be accomplished here: [Terraform](https://learn.hashicorp.com/tutorials/terraform/install-cli)


### AWS Account and Access

An AWS account is needed to perform this task. You can sign up for a free account here: [AWS Account](https://aws.amazon.com/free/?all-free-tier.sort-by=item.additionalFields.SortRank&all-free-tier.sort-order=asc&awsf.Free%20Tier%20Types=*all&awsf.Free%20Tier%20Categories=*all)

### Github repo

It is recommended to maintain your configuration files within a GitHub repo. You can sign up for Github here: [Github](https://github.com/)

## Using Terraform to Deploy the Code

### Follow these steps to deploy using 

- Clone the github repo locally
    - git clone "repo Git URL"
- Once repo is cloned, make any changes needed before deploying.
- Once configuration is setup including changes to variables, run terraform initialization
    - "terraform init"
- Once initialized, run the following:
    - "terraform apply"
- When it is complete it should show successful. You can verify this by checking your AWS ec2 instances.

### Terminating an ec2 instance
- Once the instance is no longer needed, it can be deleted.
    - 'terraform destroy'