### gcp project variable
variable "gcp_project" {
  type    = string
  default = "maximal-centaur-447108-u6"

}

##  gcp_region 

# GCP Region
variable "gcp_region1" {
  description = "Region in which GCP Resources to be created"
  type        = string
  default     = "us-central1"
}
variable "gcp_zone" {
  description = "this is for variable for region"
  type        = string
  default     = "us-central1-a"
}
# GCP Compute Engine Machine Type
variable "machine_type" {
  description = "Compute Engine Machine Type"
  type        = string
  default     = "e2-small"
}


# Environment Variable
variable "environment" {
  description = "Environment Variable used as a prefix"
  type        = string
  default     = "dev"
}

# Business Division
variable "business_divsion" {
  description = "Business Division in the large organization this Infrastructure belongs"
  type        = string
  default     = "sap"
}





