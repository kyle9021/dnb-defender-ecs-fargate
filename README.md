# AWS Fargate Cluster with an App and Prisma App-Embedded Defender

## Version Requirements:
- Terraform >=0.12
- AWS Provider >= 3.0

For AWS providers below version 3.0 use version `0.1.0` of this package.

## Usage 

Terraform module that creates the following to make a fargate cluster:

- ECS Cluster
- ECS Task defintion
- Cloudwatch logs
- IAM Permissions to: 
   - Log to Cloudwatch logs/S3
   - Assume its own role
- ALB Load Balancer or NAT Gateway
- Public subnet for load balancer
- Private subnet for ECS Cluster (only acessible via load balancer)

##  Setup and Deployment 

- Step 1; Go to Prisma console, Manage-Defenders-Deploy->Single Defender. 
   - In field 3 select 'Container Defender - App-Embedded'.
   - In field 4 select 'Fargate task'.
   - Copy the content of file **pc-defender-fargate-orig.json** and paste it in the left-hand box.
   - Click **Generate Protected Task** button to generate the protected task definition.
   - Copy the generated task definition and use it to replace the content of file **pc-defender-fargate.json**.

- Step 2: Update **dnb.tfvars** file with appropriate vpc_id, public_subnet_ids and private_subnet_ids.  
- Step 3: Run
   - terraform init
   - terraform plan --var-file=dnb.tfvars 
   - terraform apply --var-file=dnb.tfvars 
