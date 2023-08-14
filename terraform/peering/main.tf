terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~>4.0"
    }
  }
}

provider "aws" {
  region = var.region
}

## VPC vpc-0b00f9158084c620b
## eksctl-eks-dev-cluster/VPC

data "aws_vpc" "selected" {
  id = var.original_vpc_id
}

## rtb-00993454e6733ccf2
## eksctl-eks-dev-cluster/PublicRouteTable

resource "aws_vpc_peering_connection" "vpc_to_vpc" {
  peer_vpc_id = var.peer_vpc_id 
  vpc_id = data.aws_vpc.selected.id 
  auto_accept = true
    tags = {
    Name = var.vpc_peering_name
  }
}

data "aws_route_tables" "rts" {
  vpc_id = var.original_vpc_id
}

resource "aws_route" "peering_routes" {
  count                     = length(data.aws_route_tables.rts.ids)
  route_table_id            = tolist(data.aws_route_tables.rts.ids)[count.index]
  destination_cidr_block    = data.aws_vpc.selected.cidr_block
  vpc_peering_connection_id = aws_vpc_peering_connection.vpc_to_vpc.id
}

