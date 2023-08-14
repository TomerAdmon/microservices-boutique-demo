variable "region" {
  type        = string
  description = "AWS region"
  default     = "us-east-1"
}

variable "original_vpc_id" {
  type        = string
  default     = "vpc-0b00f9158084c620b"
  description = "EKS existing VPC"
}

variable "peer_vpc_id" {
  type        = string
  default =    "vpc-0bd13902c0281abc2"
}

variable "vpc_peering_name" {
  type        = string
  default =    "my-new-peering"
}