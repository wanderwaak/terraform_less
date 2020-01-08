provider "aws" {
  access_key = "AKIAW4BBEBHQDQZ4OFLB"
  secret_key = "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"
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
