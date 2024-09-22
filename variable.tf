variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
  
}

variable "public_subnet_1_cidr" {
  description = "The CIDR block for the public subnet"
  type        = string
  default     = "10.0.1.0/24"
}

variable "public_subnet_2_cidr" {
  description = "The CIDR block for the public subnet"
  type        = string
  default     = "10.0.3.0/24"
}

variable "private_subnet_1_cidr" {
  description = "The CIDR block for the private subnet"
  type        = string
  default     = "10.0.2.0/24"
}

variable "private_subnet_2_cidr" {
  description = "The CIDR block for the private subnet"
  type        = string
  default     = "10.0.4.0/24"
}

variable "avaliability_zone_1" {
  description = "The availability zone for the public subnet"
  type        = string
  default     = "us-east-1a"
}

variable "avaliability_zone_2" {
  description = "The availability zone for the public subnet"
  type        = string
  default     = "us-east-1b"
}

variable "region" {
  description = "The region in which the VPC will be created"
  type        = string
  default     = "us-east-1"
}

variable "route_table_cidr" {
  description = "The CIDR block for the route table"
  type        = string
  default     = "0.0.0.0/0"
}

variable "key_pair" {
  description = "The key pair name for SSH access to EC2 instances"
  type        = string
  default     = "~/.ssh/terraform_key.pub"
}

variable "ami" {
  description = "The AMI ID for the EC2 instances"
  type        = string
  default     = "ami-042e8287309f5df03"
}

variable "instance_type" {
  description = "The instance type for the EC2 instances"
  type        = string
  default     = "t2.micro"
}