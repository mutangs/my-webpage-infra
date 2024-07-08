# my-webpage-infra
# Terraform Project for AWS Infrastructure

This Terraform project sets up an AWS infrastructure including an Application Load Balancer (ALB), ECS cluster with a Fargate task, and an RDS instance. This setup is designed for a web application that can be easily redeployed in different environments.

## Architecture Overview

The infrastructure consists of the following components:

- **Application Load Balancer (ALB)**: Distributes incoming web traffic to the ECS service.
- **ECS Cluster**: Hosts the Docker containers running your web application.
- **RDS Instance**: Provides a MySQL database for storing application data.

### AWS Architecture Diagram

![AWS Architecture Diagram](architecture/my-webpage-infra.drawio)

## Project Structure



This setup was designed for my test web application.
# Terraform Project for AWS Infrastructure

This Terraform project sets up an AWS infrastructure including an Application Load Balancer (ALB), ECS cluster with a Fargate task, an RDS instance, and SES for email sending. This setup is designed for a web application that can be easily redeployed in different environments.

## Project Structure

Inputs
The following variables need to be set either in variables.tf or terraform.tfvars:

region: The AWS region to deploy resources in.
project_name: The name of the project.
subnet_ids: List of subnet IDs.
vpc_id: The VPC ID.
alb_sg_id: Security group ID for the ALB.
certificate_arn: ARN of the SSL certificate.
container_image: The Docker image for the container.
task_memory: The amount of memory for the ECS task.
task_cpu: The amount of CPU for the ECS task.
ecs_sg_id: Security group ID for the ECS tasks.
desired_count: The desired number of ECS tasks.
ses_region: The AWS region for SES.
ses_sender: The sender email for SES.
ses_recipient: The recipient email for SES.
db_user: The database user.
db_password: The database password.
db_host: The database host.
db_name: The database name.
db_allocated_storage: The allocated storage for the RDS instance.
db_instance_class: The instance class for the RDS instance.
db_sg_id: Security group ID for the RDS instance.
Outputs
The following outputs are generated:

alb_dns_name: The DNS name of the ALB.
ecs_cluster_id: The ID of the ECS cluster.
rds_endpoint: The endpoint of the RDS instance.
License
This project is licensed under the MIT License.