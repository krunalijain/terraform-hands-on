provider "aws" {
    region = "us-east-1"
}

module "ec2-instance" {
  source = "./modules"
  ami_value = "ami-053b0d53c278bcc80" # replace this with actual ami value
  instance_type_value = "t2.micro"
}