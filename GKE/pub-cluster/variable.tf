#create varibales 
variable "gcp_project" {
  description = "this variable for gcp project "
  type        = string
  default     = "maximal-centaur-447108-u6"
}

variable "gcp_region" {
  description = "this is for variable for region"
  type        = string
  default     = "us-central1"
}

variable "gcp_zone" {
  description = "this is for variable for region"
  type        = string
  default     = "us-central1-a"
}

variable "environment" {
  type    = string
  default = "dev"

}
variable "bussiness_devission" {
  type    = string
  default = "naresh"
}
variable "machine_type" {
  type    = string
  default = "e2-micro"

}


