terraform {
  backend "s3" {
    bucket         = "your-s3-bucket-name"
    key            = "terraform/ec2-demo/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}
