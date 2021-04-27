# main.tf

terraform {
  backend "local" {}
}

# Adjusto to Localstack configuration
provider "aws" {
  access_key                  = "mock_access_key"
  secret_key                  = "mock_secret_key"
  region                      = var.region
  s3_force_path_style         = true
  skip_credentials_validation = true
  skip_metadata_api_check     = true
  skip_requesting_account_id  = true

  endpoints {
    dynamodb       = var.localstack_entry_point
    ec2            = var.localstack_entry_point
    s3             = var.localstack_entry_point
    sns            = var.localstack_entry_point
    sqs            = var.localstack_entry_point
  }
}

# Create s3 bucket
resource "aws_s3_bucket" "bucket_id" {
  bucket = "my-test-bucket"
  acl    = "public-read"
}

# Create 3 ec2 instance
resource "aws_instance" "app_1" {
  ami           = var.instance_ami
  instance_type = "t2.micro"
  tags = {
    Name = "${var.instance_name}-1"
  }
}

resource "aws_instance" "app_2" {
  ami           = var.instance_ami
  instance_type = "t2.micro"
  tags = {
    Name = "${var.instance_name}-2"
  }
}
