provider "aws" {
    region = "us-east-1"  
}

resource "aws_instance" "foo" {
 count = "1"
  ami           = "ami-051f7e7f6c2f40dc1" 
  instance_type = "t2.micro"
  vpc_security_id = ["vpc-05610161337ced20f"]
  subnet_id = "subnet-06c715564ef8dee6d"
  tags = {
      Name = "TF-Instance"
  }
}
