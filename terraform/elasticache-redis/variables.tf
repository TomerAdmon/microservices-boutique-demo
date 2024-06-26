variable "region" {
  type        = string
  description = "AWS region"
}


variable "public_subnet_ids" {
  type        = list(string)
  description = "Public subnet IDs"
}

variable "private_subnet_ids" {
  type        = list(string)
  description = "Private subnet IDs"
}

variable "vpc_cidr" {
  type        = string
  description = "VPC CIDR"
}

variable "vpc_id" {
  type        = string
  description = "VPC ID"
}

variable "vpc_default_security_group_id" {
  type        = string
  description = "VPC SG ID"
}

variable "availability_zones" {
  type        = list(string)
  description = "Availability zone IDs"
}

variable "cluster_size" {
  type        = number
  description = "Number of nodes in cluster"
}

variable "instance_type" {
  type        = string
  description = "Elastic cache instance type"
}

variable "family" {
  type        = string
  description = "Redis family"
}

variable "engine_version" {
  type        = string
  description = "Redis engine version"
}

variable "at_rest_encryption_enabled" {
  type        = bool
  description = "Enable encryption at rest"
}

variable "transit_encryption_enabled" {
  type        = bool
  description = "Enable TLS"
}

variable "cloudwatch_metric_alarms_enabled" {
  type        = bool
  description = "Boolean flag to enable/disable CloudWatch metrics alarms"
}

variable "sg_name" {
  type        = string
  default     = ""
  description = "Name to give to created security group"
}