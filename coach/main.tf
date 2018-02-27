terraform {
  required_version = ">= 0.8"
}

provider "aws" {
  region = "ap-northeast-1"
}

resource "aws_instance" "coach-test" {
  ami           = "ami-33c25b55"
  instance_type = "t2.large"
  vpc_security_group_ids = ["sg-12283977"]

  tags {
    Name = "coach-test-1-updated"
  }
}
