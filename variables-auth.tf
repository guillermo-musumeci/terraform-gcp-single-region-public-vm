# Google Cloud connection & authentication and Application configuration | variables-auth.tf

# GCP authentication file
variable "gcp_auth_file" {
  type        = string
  description = "GCP authentication file"
}

# define GCP project name
variable "app_project" {
  type        = string
  description = "GCP project name"
}

# define application name
variable "app_name" {
  type        = string
  description = "Application name"
}

# define application domain
variable "app_domain" {
  type        = string
  description = "Application domain"
}

# define application environment
variable "app_environment" {
  type        = string
  description = "Application environment"
}

variable "source_ranges" {
  type = list(string)
}
variable "image" {
  type    = string
  default = "debian-12-bookworm-v20230609"
}
