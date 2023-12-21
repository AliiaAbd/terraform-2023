data "aws_ami" "amazon" {
  most_recent      = true
  owners           = ["137112412989"]

  filter {
    name   = "name"
    values = ["al2023-ami-2023.*-x86_64"]
  }

  filter {
    name   = "architecture"
    values = ["x86_64"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

}



# data "aws_ami" "amazon" {
#   most_recent = true

#   filter {
#     name   = "name"
#     values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
#   }

#   filter {
#     name   = "virtualization-type"
#     values = ["hvm"]
#   }

#   owners = ["099720109477"] # Canonical
# }

resource "aws_instance" "hw" {
  ami           = data.aws_ami.amazon.id
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.allow_tls.id]
  key_name= aws_key_pair.deployer.key_name
  user_data = file ("apache.sh")
  tags = {
    Name = "Homework-ec2"
  }
}
resource "aws_instance" "manual-instance" {
  name= "manual-instance"  
#   % terraform import aws_instance.web i-12345678 need to run this command but chnage to your instance name and ID
 
}


resource "aws_security_group" "launch-wizard-1" {
    name = "launch-wizard-1" 
    # % terraform import aws_security_group.elb_sg sg-903004f8 (same here)
 
}