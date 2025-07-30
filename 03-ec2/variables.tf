variable "comman_tags" {
    type = map 
    default = {
        Project = "Roboshop"
        Environment = "Dev"
        Terraform = "true"
    }
}

variable "project_name" {
    type = string
    default = "roboshop"
}

variable "environment_name" {
    type = string
    default = "dev"
}