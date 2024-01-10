terraform {
  backend "s3" {
    bucket = "aliia-bucket"
    dynamoDB_table = "lock-state"
    key    = "ohio/terraform.tfstate"
    region = "us-east-2"
  }
}
