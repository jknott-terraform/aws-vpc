variable "region" {
  type = string
  description = "The AWS region"
  default = "us-east-1"
}


variable "prefix" {
  default = "engineering"
  description = "The name of our department"
}

variable "environment" {
  default = "development"
  description = "The name of our environment"
}

