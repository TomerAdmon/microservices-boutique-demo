output "public_subnet_ids" {
  value       = module.subnets.public_subnet_ids
  description = "Public subnet IDs"
}

output "private_subnet_ids" {
  value       = module.subnets.private_subnet_ids
  description = "Private subnet IDs"
}

output "vpc_cidr" {
  value       = module.vpc.vpc_cidr_block
  description = "VPC CIDR"
}

output "vpc_id" {
  value       = module.vpc.vpc_id
  description = "VPC ID"
}

output "vpc_default_security_group_id" {
  value       = module.vpc.vpc_default_security_group_id
  description = "VPC SG ID"
}