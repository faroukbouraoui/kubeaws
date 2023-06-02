
variable "AWS_REGION" {
	default = "us-east-1"
}
variable "AWS_SECRET_KEY" {
    default = "d5CGu9RxQ4UXqobuOx6pJl64hotJWziq9bSQajQp" 
}

variable "AWS_ACCESS_KEY" {
    default = "ASIAZWTTRWH6FWOZ6BV5" 
}

variable "AWS_SESSION_TOKEN" {
    default = "FwoGZXIvYXdzEAQaDDGG3v2r+Igp31brPSLAAc5Tu23zfUQBqjbvOdfHCUzPGKgwfpDY25r+B5M4xSJXSeeQVXz9MoxqsFbM2+KDqbTEQEFW3IKxGBN5o//bZfezj/2qWiFaMHwdbKIzwyYiCgiYJvx5JJYZg6+akeK0kVq2ctVSPKU1020CU8AwJwCMCNl3ugdH7zyNKODJLTTmSdxdaICbW40yOlN+ZYwSAQtIh9FHyFTcK7FbHLn4Xmo/1S4w+ZNA1HM6EVMFBvZKfQ7Bb/vGmSHAEPFWPL56gyjw64mjBjIt2A0qQU1R1K64mk/+Hhz6YXrvcNeKa3vaYQXVbwb3v9pNonnZ99a3w1iE5FW9"
}
# If you are using diffrent region (other than us-east-1) please find ubuntu 18.04 ami for that region and change here.
variable "ami_id" {
    type = string
    default = "ami-0d73480446600f555"
}

variable "availability_zones" {
  type    = list(string)
  default = ["us-east-1a", "us-east-1b", "us-east-1c"]
}

variable "vpc_cidr" {
    type = string
    default = "10.0.0.0/16"
}

variable "private_subnets" {
    type = list(string)
    default = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
}

variable "public_subnets" {
    type = list(string)
    default = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]
}

variable "master_node_count" {
    type = number
    default = 3
}

variable "worker_node_count" {
    type = number
    default = 3
}

variable "ssh_user" {
    type = string
    default = "ubuntu"
}

variable "master_instance_type" {
    type = string
    default = "t3.small"
}

variable "worker_instance_type" {
    type = string
    default = "t3.micro"
}
