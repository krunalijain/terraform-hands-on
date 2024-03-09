provider "aws" {
    region = "us-east-1"  # region as per your preference
}

resource "aws_instance" "example" {
    ami = "ami-07d9b9ddc6cd8dd30" # can take it from AWS > EC2 > Launch Instance > Select any AMI (Ubuntu, RedHat, etc.) > grab the ami ID.
    instance_type = "t2.micro"
    subnet_id = "your-subnet-id" # Eg: subnet-0aab3d3790f07570c
    key_name = "aws-login" # create a key-pair (.pem / .ppk).
}
