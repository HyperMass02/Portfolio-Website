provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "web" {
  ami           = "ami-0c02fb55956c7d316" # Amazon Linux 2 (update per region)
  instance_type = "t2.micro"

  tags = {
    Name = "GitHubActionsEC2"
  }
}