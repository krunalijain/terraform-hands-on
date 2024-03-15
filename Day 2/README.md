# Project Variabels and Condintional Expressions

## Variables
Variables are like params, setting values to variable names.
There are 3 types of variables: Input, Output, & Local.
For detailed info on Variables refer [Terraform Variables Documentation](https://developer.hashicorp.com/terraform/language/values)

## variables.tf Vs .tfvars file
`variables.tf` file will declare a variable.
`.tfvars` file will assign a value.
Terraform overrides the default value assigned to the variable
 
### Example:
This is your `variables.tf` file

```hcl
variable "instance_type" {
 type = string
 default = "t2.micro"
 description = "EC2 instance type"
}
```

And this is your `.tfvars` or `terraform.tfvars` file

```
instance_type = "t2.large"
```
Now when you will excecute the command "terraform apply", it wil take the value from the `terraform.tfvars` file as `instance_type = "t2.large"`.

[Ref](https://spacelift.io/blog/terraform-tfvars) used for variables.tf Vs terraform.tfvars


Even if you don't declare a variable in `variables.tf` file, and have set it in `.tfvars` file. You'll just get a warning, but you can run the code by fetching it from `.tfvars` file.

## Setting of Variables
I created a `main.tf` file, where I didn't hardcoded the values this time.
Created another 2 files `varibales.tf` and `provider.tf` to store the vars and provider info.
Later we can fetch it in `main.tf` file.

### To Set a CIDR Variable 

```hcl
variable "cidr"{
default = "10.0.0.0/16"
}
```

### To set a Provider in `provider.tf` file
The provider block specifies provider configuration information, such as authentication, alias, and cloud regions. 

```hcl
provider "aws" {
  # Configuration options
  region = "us-east-1"
}
```

### Setting up `required_provider`
The required_providers block specifies provider dependency information. 

```hcl
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.11.0"
    }
  }
}
```

### Fetching declared Vars in `main.tf`

```hcl
resource "aws_vpc" "my-vpc" {
  cidr_block = var.cidr
}
```
