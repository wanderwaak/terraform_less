provider "aws" {
  access_key = ""
  secret_key = ""
  region     = "eu-central-1"
}

resource "aws_instance" "my_Ubuntu" {
  count         = 3
  ami           = "ami-0cc0a36f626a4fdf5"
  instance_type = "t3.micro"
}

resource "aws_instance" "my_AWS_linux" {
  ami           = "ami-0d4c3eabb9e72650a"
  instance_type = "t3.micro"
}
