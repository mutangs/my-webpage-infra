variable "region" {
  description = "The AWS region to deploy resources in"
  type        = string
}

variable "project_name" {
  description = "The name of the project"
  type        = string
}

variable "subnet_ids" {
  description = "List of subnet IDs"
  type        = list(string)
}

variable "vpc_id" {
  description = "The VPC ID"
  type        = string
}

variable "alb_sg_id" {
  description = "Security group ID for the ALB"
  type        = string
}

variable "certificate_arn" {
  description = "ARN of the SSL certificate"
  type        = string
}

variable "container_image" {
  description = "The Docker image for the container"
  type        = string
}

variable "task_memory" {
  description = "The amount of memory for the ECS task"
  type        = string
}

variable "task_cpu" {
  description = "The amount of CPU for the ECS task"
  type        = string
}

variable "ecs_sg_id" {
  description = "Security group ID for the ECS tasks"
  type        = string
}

variable "desired_count" {
  description = "The desired number of ECS tasks"
  type        = number
}

variable "ses_region" {
  description = "The AWS region for SES"
  type        = string
}

variable "ses_sender" {
  description = "The sender email for SES"
  type        = string
}

variable "ses_recipient" {
  description = "The recipient email for SES"
  type        = string
}

variable "db_user" {
  description = "The database user"
  type        = string
}

variable "db_password" {
  description = "The database password"
  type        = string
}

variable "db_host" {
  description = "The database host"
  type        = string
}

variable "db_name" {
  description = "The database name"
  type        = string
}

variable "db_allocated_storage" {
  description = "The allocated storage for the RDS instance"
  type        = number
}

variable "db_instance_class" {
  description = "The instance class for the RDS instance"
  type        = string
}

variable "db_sg_id" {
  description = "Security group ID for the RDS instance"
  type        = string
}
