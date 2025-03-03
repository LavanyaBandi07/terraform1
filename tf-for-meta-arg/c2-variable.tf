#create varibales 
variable "gcp_project" {
  description = "this variable for gcp project "
  type = string
  default = "maximal-centaur-447108-u6"
}

variable "gcp_region" {
  description = "this is for variable for region"
  type = string
  default = "us-central1"
}

variable "machine_type" {
  description = "this variable for vm instance type"
  type = string
  default = "e2-micro"
}