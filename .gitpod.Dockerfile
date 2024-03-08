# .gitpod.Dockerfile

FROM gitpod/workspace-full:latest

USER gitpod

# Install AWS CLI
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && \
    unzip awscliv2.zip && \
    sudo ./aws/install && \
    rm -rf awscliv2.zip aws

# Install Terraform
RUN sudo apt-get update && \
    sudo apt-get install -y unzip && \
    curl -o /tmp/terraform.zip https://releases.hashicorp.com/terraform/0.15.0/terraform_0.15.0_linux_amd64.zip && \
    unzip /tmp/terraform.zip -d /tmp && \
    sudo mv /tmp/terraform /usr/local/bin/ && \
    rm /tmp/terraform.zip
