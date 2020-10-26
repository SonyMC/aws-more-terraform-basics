# User variable
variable "environment" {
  type    = string # any, number, bool, list, map, set , object, tuple, string
  default = "DEV"
}

# User variable
variable "iam_user_name_prefix" {
  type    = string # any, number, bool, list, map, set , object, tuple, string
  default = "django_machan"
}

# Provider info
provider "aws" {
  region  = "us-east-1"
  version = "~> 2.46"
}

# Define IAM user
resource "aws_iam_user" "my_iam_users" {
  count = 1
  name  = "${var.environment}_${var.iam_user_name_prefix}_${count.index}"
}



