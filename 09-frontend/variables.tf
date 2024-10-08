variable "project_name" {
  default = "expense"
}

variable "environment" {
  default = "dev"
}

variable "common_tags" {
  default = {
    Project = "expense"
    Environment = "dev"
    Terraform = "true"
    component = "frontend"
  }
}



variable "zone_name" {
  default = "rlsu.shop"
}