# selectquote_ec2_creation

The goal of this exercise is to create an ec2 instance in AWS using Terraform.

## Prerequisuites

### Terraform

#### Terraform will need to be installed locally on your device to perform this task.

Install using this link: [Terraform](https://learn.hashicorp.com/tutorials/terraform/install-cli)

#### Documentation for using Terraform and AWS is useful for this project

[Aws Terraform Documentation](https://registry.terraform.io/providers/hashicorp/aws/latest/docs)

### AWS Account

#### An AWS account is needed to perform this task. 

You can sign up for a free account here: [AWS Account](https://aws.amazon.com/free/?all-free-tier.sort-by=item.additionalFields.SortRank&all-free-tier.sort-order=asc&awsf.Free%20Tier%20Types=*all&awsf.Free%20Tier%20Categories=*all)

### Access keys are needed for authentication to connect to AWS

#### Follow these steps to create an access key in AWS

- When on AWS landing page, click on username at the top right
- Select ```security credentials```
- Click on the tab ```Access keys (access key ID and secret access key)```
- Create new access key
- This should give an ID and secret key. These will need to be saved somewhere secure.

#### The keys can either be exported, or put into a file locally to be called upon on Mac or Linux.

- export AWS_ACCESS_KEY_ID="<YOUR_AWS_ACCESS_KEY_ID>"
- export AWS_SECRET_ACCESS_KEY="<YOUR_AWS_SECRET_ACCESS_KEY>"

## Using Terraform to Deploy the Code

### Follow these steps to deploy using 

- Clone the github repo locally
    - git clone ```Github repo URL```
- Once repo is cloned, initialize terraform with this command:
    - ```terraform init```
- Once configuration is setup including changes to variables, run terraform plan to see a test run before creating the instance:
    - ```terraform plan```
- Once everything looks good apply and create
    - ```terraform apply```
- When it is complete it should show successful. You can verify this by checking your AWS ec2 instances, locating the instance, and verify it is running with all configurations applied.

### Terminating your infrastructure
- Once the infrastructure is no longer needed, it can be deleted.
    - ```terraform destroy```