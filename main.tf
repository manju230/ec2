provider "aws" {
    region = "ap-south-1"
}

resource "aws_instance" "webapp" {
     ami = "ami-0a5b0c3ca9452f414"
     instance_type = "t2.micro"
     subnet_id = "subnet-01f99bd1078deccd8"
     key_name = "Golden Key"
     security_groups = ["sg-0df46f203da7e25a2"]
     disable_api_termination = "true"
tags = {
    Name = "Manjunath"
    OS = "windows"
    Terraform = "yes"
}
}