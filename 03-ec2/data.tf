data "aws_ssm_parameter" "mongodb_sg_id" {
    name = "/${var.project_name}/${var.environment_name}/mongodb_sg_id"
}

data "aws_ssm_parameter" "database_subnet_ids" {
    name = "/${var.project_name}/${var.environment_name}/database_subnet_ids"
}