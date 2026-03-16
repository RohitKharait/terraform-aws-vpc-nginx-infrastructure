# terraform-aws-vpc-nginx-infrastructure

# Terraform AWS VPC + NGINX Infrastructure

This project provisions a complete AWS VPC infrastructure with an EC2 instance running NGINX using Terraform.

---

## 🏗️ Infrastructure Overview

- VPC with public and private subnets
- Internet Gateway for public internet access
- Public and private route tables
- Security Group allowing SSH (port 22) and HTTP (port 80)
- EC2 instance with NGINX installed via user_data
- Remote state stored in S3

---

## 📁 Project Structure
```
terraform-aws-vpc-nginx-infrastructure/
├── provider.tf
├── variables.tf
├── main.tf
├── outputs.tf
└── backend.tf
```

---

## ⚙️ Prerequisites

- Terraform installed
- AWS CLI configured
- AWS account with IAM user
- S3 bucket for remote state
- Key pair created in AWS

---

## 🚀 Usage

**Clone the repository**
```bash
git clone https://github.com/RohitKharait/terraform-aws-vpc-nginx-infrastructure.git
cd terraform-aws-vpc-nginx-infrastructure
```

**Update backend.tf with your S3 bucket name**
```hcl
terraform {
  backend "s3" {
    bucket  = "your-bucket-name"
    key     = "vpc-nginx/terraform.tfstate"
    region  = "us-east-1"
    encrypt = true
  }
}
```

**Update variables.tf with your key pair name**
```hcl
variable "key_name" {
  default = "your-key-pair-name"
}
```

**Initialize Terraform**
```bash
terraform init
```

**Preview changes**
```bash
terraform plan
```

**Apply infrastructure**
```bash
terraform apply
```

**Access NGINX**
```
http://<ec2_public_ip>
```

**Destroy infrastructure**
```bash
terraform destroy
```

---

## 📌 Variables

| Variable | Description | Default |
|----------|-------------|---------|
| vpc_cidr | VPC CIDR block | 10.0.0.0/16 |
| public_subnet_cidr | Public subnet CIDR | 10.0.1.0/24 |
| private_subnet_cidr | Private subnet CIDR | 10.0.2.0/24 |
| ami_id | EC2 AMI ID | ami-06b527a1e4cb6f265 |
| instance_type | EC2 instance type | t3.micro |
| key_name | AWS key pair name | terraform |
| environment | Environment name | dev |

---

## 📤 Outputs

| Output | Description |
|--------|-------------|
| website_url | NGINX website URL |
| ec2_public_ip | EC2 public IP address |
| vpc_id | VPC ID |

---

## 🛠️ Tech Stack

- Terraform
- AWS VPC
- AWS EC2
- AWS S3
- NGINX

---

## 👨‍💻 Author

Rohit Kharait
- GitHub: [@RohitKharait](https://github.com/RohitKharait)
