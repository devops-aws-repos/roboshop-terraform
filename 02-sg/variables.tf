variable "comman_tags" {
  type = map(any)
  default = {
    Project     = "Roboshop"
    Environment = "Dev"
    Terraform   = "true"
  }
}

variable "sg_tags" {
  default = {}
}

variable "project_name" {
  type    = string
  default = "roboshop"
}

variable "environment_name" {
  type    = string
  default = "dev"
}

variable "mongodb_sg_ingress_rules" {
  default = [
    {
      description = "Allow port 80"
      from_port   = 80
      to_port     = 80
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    },

    {
      description = "Allow port 22"
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  ]
}