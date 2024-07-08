provider "aws" {
  region = var.region
}

module "alb" {
  source         = "./modules/alb"
  project_name   = var.project_name
  subnet_ids     = var.subnet_ids
  vpc_id         = var.vpc_id
  alb_sg_id      = var.alb_sg_id
  certificate_arn = var.certificate_arn
}

module "ecs" {
  source           = "./modules/ecs"
  project_name     = var.project_name
  container_image  = var.container_image
  task_memory      = var.task_memory
  task_cpu         = var.task_cpu
  subnet_ids       = var.subnet_ids
  ecs_sg_id        = var.ecs_sg_id
  desired_count    = var.desired_count
  target_group_arn = module.alb.app_tg_arn
  ses_region       = var.ses_region
  ses_sender       = var.ses_sender
  ses_recipient    = var.ses_recipient
  db_user          = var.db_user
  db_password      = var.db_password
  db_host          = module.rds.rds_endpoint
  db_name          = var.db_name
}

module "rds" {
  source               = "./modules/rds"
  project_name         = var.project_name
  db_allocated_storage = var.db_allocated_storage
  db_instance_class    = var.db_instance_class
  db_name              = var.db_name
  db_user              = var.db_user
  db_password          = var.db_password
  subnet_ids           = var.subnet_ids
  db_sg_id             = var.db_sg_id
}

module "ses" {
  source = "./modules/ses"
  email  = var.ses_sender
}
