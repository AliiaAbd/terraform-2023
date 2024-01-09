provider "aws" {
  region = "us-east-2"
}

resource "aws_vpc" "group-1" {
  cidr_block = "10.0.0.0/16"
}