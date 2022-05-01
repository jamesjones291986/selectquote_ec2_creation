# selectquote_ec2_creation

The goal of this exercise is to create an ec2 instance in AWS using Terraform.

## Prerequisuites

### Terraform

#### Terraform will need to be installed locally on your device to perform this task.

Install using this link: [Terraform](https://learn.hashicorp.com/tutorials/terraform/install-cli)


### AWS Account and Access

#### An AWS account is needed to perform this task. 

You can sign up for a free account here: [AWS Account](https://aws.amazon.com/free/?all-free-tier.sort-by=item.additionalFields.SortRank&all-free-tier.sort-order=asc&awsf.Free%20Tier%20Types=*all&awsf.Free%20Tier%20Categories=*all)

## Using Terraform to Deploy the Code

### Follow these steps to deploy using 

- Clone the github repo locally
    - git clone ```Github repo URL```
- Once repo is cloned, initialize terraform with this command:
    - ```terraform init```
- Once configuration is setup including changes to variables, apply the changes and create the instance:
    - ```terraform apply```
- When it is complete it should show successful. You can verify this by checking your AWS ec2 instances, locating the instance, and verify it is running with all configurations applied.

### Terminating an ec2 instance
- Once the instance is no longer needed, it can be deleted.
    - ```terraform destroy```