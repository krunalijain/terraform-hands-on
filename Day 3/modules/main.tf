provider "aws" {
    region = "us-east-1"
}

resource "aws-insatcne" "example" {
    ami = var.ami_value
    instance_type = var.instance_type_vlaue
}