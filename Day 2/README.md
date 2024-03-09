# Project Variabels and Condintional Expressions

## Setting of Variables
I created a `main.tf` file, where I didn't hardcoded the values this time.
Created another 2 files `varibales.tf` and `provider.tf` to store the vars and provider info.
Later we can fetch it in `main.tf` file.

### To Set a CIDR Variable 

```
variable "cidr"{
default = "10.0.0.0/16"
}
```

### To set a Provider in `provider.tf` file
The provider block specifies provider configuration information, such as authentication, alias, and cloud regions. 

```
provider "aws" {
  # Configuration options
  region = "us-east-1"
}
```

### Setting up `required_provider`
The required_providers block specifies provider dependency information. 

```
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

```
resource "aws_vpc" "my-vpc" {
  cidr_block = var.cidr
}
```
