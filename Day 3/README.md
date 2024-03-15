# Modules
## What are Modules in Terraform?
Modules in Terraform help us in segregating the code in different files. 
For example: we can have multiple files like - `variables.tf`; `outputs.tf`; `providers.tf` and so on.. for different code blocks.

In this  `Day 3` folder, I have demonstrated a example script on how we can use Modules.

## How to use Modules?
I created a folder name `modules` -> then created multiple files: `main.tf`; `variables.tf` & `outputs.tf`.
 
In `main.tf` file under `modules` folder, we can set a `required_provider`.
And then we can call those modules in root directory's `main.tf` file.

```
module "ec2-instance" {
  source = "./modules"
  ami_value = "ami-053b0d53c278bcc80" # replace this with actual ami value
  instance_type_value = "t2.micro"
}
```
 
