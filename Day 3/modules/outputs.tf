
## this will print the public IP address once the EC2 instance has been initialized and active. 
output "public-ip-address" {
  value = aws_instance.example.public_ip
}