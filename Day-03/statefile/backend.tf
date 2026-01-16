terraform {
  backend "s3" {
    bucket         = "payel-s3-demo-xyz" # change this
    key            = "payel/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "terraform-lock"
  }
}
