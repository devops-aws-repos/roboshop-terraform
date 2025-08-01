variable "comman_tags" {
  type = map(any)
  default = {
    Project     = "Roboshop"
    Environment = "Dev"
    Terraform   = "true"
  }
}

variable "project_name" {
  type    = string
  default = "roboshop"
}

variable "environment_name" {
  type    = string
  default = "dev"
}