terraform {
  required_providers {
    torque = {
      source = "QualiTorque/torque"
    }
  }
}

provider "torque" {}

resource "torque_introspection_resource" "data_power_link" {
    display_name = "Data Power"
    image = "https://d1ddbn3t5ac25u.cloudfront.net/blueprint_icons/5ed74291-4b35-44cc-b1fe-d416e3ef80e2"
    introspection_data = {Address = "10.12.55.3", Mode = "Linked"}
}

resource "torque_introspection_resource" "f5_firewall_route" {
    display_name = "F5 Rule"
    image = "https://d1ddbn3t5ac25u.cloudfront.net/blueprint_icons/1da3df9d-13f9-4fa8-8e0d-098008b204ce"
    introspection_data = {Rule = "firewall_inbound_776", Instance = "Testing_lab"}
}

resource "torque_introspection_resource" "Leumi_endpoint" {
    display_name = "Testing Device"
    image = "https://d1ddbn3t5ac25u.cloudfront.net/blueprint_icons/66a61c1b-45a7-4b76-a7ee-6fc7d99d0419"
    introspection_data = {Farm = "Perfecto", Type = "Iphone 12 pro", Location = "Israel"}
}

resource "torque_introspection_resource" "Leumi_endpoint" {
    display_name = "Backend Services"
    image = "https://d1ddbn3t5ac25u.cloudfront.net/blueprint_icons/66a61c1b-45a7-4b76-a7ee-6fc7d99d0419"
    introspection_data = {Address = "10.12.55.10", API = "v1.4"}
}
