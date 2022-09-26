terraform {
  backend "s3" {
    encrypt = true    
    bucket = "bellame-terraform"
    dynamodb_table = "terrbellame"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}