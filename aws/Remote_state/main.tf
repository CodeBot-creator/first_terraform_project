provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "web" {
  count         = 2
  ami           = "ami-0c55b159cbfafe1f0" # Update to your preferred AMI
  instance_type = "t2.micro"
  tags = {
    Name = "Terraform-Instance-${count.index + 1}"
  }
}
