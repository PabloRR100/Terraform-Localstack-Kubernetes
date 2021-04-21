
variable "region" {
    default = "us-east-1"
}

variable "instance_name" {
  description = "Value of the Name tag for the EC2 instance"
  type        = string
  default     = "ExampleInstance"
}

variable "instance_ami" {
  description = "Version of the AMI to use for the EC2 isntance"
  type        = string
  default     = "ami-a1b2c3d4"
}