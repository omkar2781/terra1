provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "web" {
  count         = 2
  ami           = "ami-064519b8c76274859"  # Replace with a valid AMI ID for your region
  instance_type = "t2.micro"

  tags = {
    Name = "webserver-instance-${count.index + 1}"
  }
}
