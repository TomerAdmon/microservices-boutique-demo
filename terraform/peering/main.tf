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
  id = var.peer_vpc_id
}

data "aws_vpc" "original" {
  id = var.original_vpc_id
}

## rtb-00993454e6733ccf2
## eksctl-eks-dev-cluster/PublicRouteTable

resource "aws_vpc_peering_connection" "vpc_to_vpc" {
  peer_vpc_id = var.peer_vpc_id 
  vpc_id = var.original_vpc_id 
  auto_accept = true
    tags = {
    Name = var.vpc_peering_name
  }

  requester {
    allow_remote_vpc_dns_resolution = true
  }

  accepter {
    allow_remote_vpc_dns_resolution = true
  }

}

data "aws_route_tables" "rts_original" {
  vpc_id = var.original_vpc_id
}

data "aws_route_tables" "rts_new" {
  vpc_id = var.peer_vpc_id
}

#requester
resource "aws_route" "peering_routes1" {
  count                     = length(data.aws_route_tables.rts_original.ids)
  route_table_id            = tolist(data.aws_route_tables.rts_original.ids)[count.index]
  destination_cidr_block    = data.aws_vpc.selected.cidr_block
  vpc_peering_connection_id = aws_vpc_peering_connection.vpc_to_vpc.id
}

#accepter
resource "aws_route" "peering_routes2" {
  count                     = length(data.aws_route_tables.rts_new.ids)
  route_table_id            = tolist(data.aws_route_tables.rts_new.ids)[count.index]
  destination_cidr_block    = data.aws_vpc.original.cidr_block
  vpc_peering_connection_id = aws_vpc_peering_connection.vpc_to_vpc.id
}
