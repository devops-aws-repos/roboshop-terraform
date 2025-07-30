module "roboshop" {
    #source = "../terraform-aws-vpc"
    source = "git::https://github.com/devops-aws-repos/terraform-aws-vpc.git?ref=main"
    project_name = var.project_name
    environment_name = var.environment_name
    comman_tags = var.comman_tags
    vpc_tags = var.vpc_tags

    #public_subnets
    public_subnets_cidr = var.public_subnets_cidr
    
    #private_subnets
    private_subnets_cidr = var.private_subnets_cidr

    #database subnets
    database_subnets_cidr = var.database_subnets_cidr

    #peering
    is_peering_required = var.is_peering_required
}