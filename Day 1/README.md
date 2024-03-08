## Install Terraform
Run these commands in your terminal to install Terraform on your system.
Refer to this [page](https://developer.hashicorp.com/terraform/install) to install as per your OS 
For Linux: 
````
wget -O- https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt update && sudo apt install terraform
```

## Instal AWS and Conigure on your CLI
To install aws on your CLI, visit this [page](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html) for appropriate commands as per your OS.

For Linux:
```
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
```

## To Configure AWS on your terminal

1) Go to your AWS account (IAM user account is preferred).
2) At the top right corner > under Security Credentials > Create Access Key
3) In your terminal run `aws configure` command
4) Enter the Access Key and Secret Access Key with `us-east-1` as your default region (whichever is preferred by you) and default output format as `json`.
5) To verify - run `aws s3 ls` > it should list out the s3 buckets available on your AWS account.

