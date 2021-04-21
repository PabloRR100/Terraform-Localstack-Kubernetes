# main.tf

terraform {
  backend "local" {}
}

provider "aws" {
  access_key                  = "mock_access_key"
  secret_key                  = "mock_secret_key"
  region                      = var.region
  s3_force_path_style         = true
  skip_credentials_validation = true
  skip_metadata_api_check     = true
  skip_requesting_account_id  = true

  endpoints {
    dynamodb       = "http://localhost:4566"
    ec2            = "http://localhost:4566"
    s3             = "http://localhost:4566"
    sns            = "http://localhost:4566"
    sqs            = "http://localhost:4566"
  }
}

resource "aws_s3_bucket" "bucket_id" {
  bucket = "my-test-bucket"
  acl    = "public-read"
}

resource "aws_instance" "app" {
  ami           = var.instance_ami
  instance_type = "t2.micro"
  tags = {
    Name = var.instance_name
  }
}
