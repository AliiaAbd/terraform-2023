terraform {
  backend "s3" {
    bucket = "hello-aliia"
    dynamoDB_table = "lock-state"
    key    = "ohio/terraform.tfstate"
    region = "us-east-2"
  }
}
