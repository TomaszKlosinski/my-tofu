provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "my_instance" {
  ami           = "ami-0c55b159cbfafe1f0"  # Amazon Linux 2 AMI (us-east-1)
  instance_type = "t2.micro"
  tags = {
    Name = "my-instance"
  }
}
