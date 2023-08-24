
variable "ec2_ami" {
  description = "This is a variable to manage ec2 AMI type"
  type        = string
  default     = "ami-04f7efe62f419d9f5"
}

variable "ec2_instance_type" {
  description = "This is a variable to manage ec2 instance type"
  type        = string
  default     = "t2.micro"
}

# variable "ec2_key_name" {
#   description = "This is a variable to manage ec2 key name"
#   type        = string
#   default     = "Kitskat2023"
# }

# variable "ec2_name_1" {
#   description = "This is a variable to manage ec2 key name"
#   type        = string
#   default     = "node_01"
# }

# variable "ec2_name_2" {
#   description = "This is a variable to manage ec2 key name"
#   type        = string
#   default     = "node_02"
# }

# variable "ec2_name_3" {
#   description = "This is a variable to manage ec2 key name"
#   type        = string
#   default     = "MariaDB_01"
# }

# variable "sg_name" {
#   description = "This is a variable to manage ec2 key name"
#   type        = string
#   default     = "kay_sg"
# }

variable "subnet" {
  description = "This is a variable to manage ec2 key name"
  type        = list(any)
  default     = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
}

# variable "public_ip" {
#   description = "This is a variable to manage ec2 key name"
#   type        = string
#   default     = "10.0.3.0/24"
# }

variable "availability_zone" {
  description = "This is a variable to manage ec2 key name"
  type        = list(any)
  default     = ["eu-west-1a", "eu-west-1b", "eu-west-1c"]
}

variable "ec2_dev_public_ip_1" {
  description = "This is a variable to manage ec2 key name"
  type        = string
  default     = "aws_instance.Marketing_Node.public_ip"
}

variable "ec2_dev_public_ip_2" {
  description = "This is a variable to manage ec2 key name"
  type        = string
  default     = "aws_instance.Finance_Node.public_ip"
}

variable "ec2_sit_public_ip_3" {
  description = "This is a variable to manage ec2 key name"
  type        = string
  default     = "aws_instance.Legal_Node.public_ip"
}
variable "dev_default_tags_1" {
  description = "This variable is declared here to manage ec2 tags"
  type        = map(any)
  default = {
    "Name"        = "Node_1"
    "Dept"        = "Accounting"
    "can destroy" = "yes"
  }
}

variable "dev_default_tags_2" {
  description = "This variable is declared here to manage ec2 tags"
  type        = map(any)
  default = {
    "Name"        = "Node_2"
    "Dept"        = "Finance"
    "can destroy" = "yes"
  }
}

variable "sit_default_tags" {
  description = "This variable is declared here to manage ec2 tags"
  type        = map(any)
  default = {
    "Name"        = "MariaDB"
    "Dept"        = "Legal"
    "can destroy" = "yes"
  }
}

# variable "bucket" {
#   description = "This is a variable to manage ec2 bucket name"
#   type        = string
#   default     = "kits-test5b"
# }

# variable "key" {
#   description = "This is a variable to manage ec2 bucket name"
#   type        = string
#   default     = "dev/terraform.tfstate"
# }

variable "bucket" {}
variable "key" {}
variable "env" {}
variable "ec2_name_1" {}
variable "ec2_name_2" {}
variable "ec2_name_3" {}
variable "sg_name" {}

# variable "ec2_instance_type" {}
# variable "default_tags" {}
# variable "ec2_ami" {}
# variable "aws_region" {}
# variable "RDS_PASSWORD" {}
# variable "RDS_USERNAME" {}
# variable "ec2_key_name" {}