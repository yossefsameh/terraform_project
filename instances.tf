###BASION SERVER

resource "aws_instance" "basion-server" {
  ami                       =  var.ami_id
  instance_type             = "t2.micro"
  subnet_id = module.mynetwork.pubsub1_id
  #availability_zone = 
  associate_public_ip_address = true
  #key_name = aws_key_pair.bastion-key.key_name
  key_name = data.aws_key_pair.my-test-key.key_name
  vpc_security_group_ids = [aws_security_group.allow-ssh.id]

  tags = {
    Name ="basion-server"
  }
}
data "aws_key_pair" "my-test-key" {
    tags = {
        Name = "test_key"
    }
}
# resource "aws_key_pair" "bastion-key" {
#   key_name   = "bastion-key"
#   #public_key = file("~/testkey.pub")

# }


###APPLICATION SERVER

resource "aws_instance" "app-server" {
  ami                       =  var.ami_id
  instance_type             = "t2.micro"
  subnet_id = module.mynetwork.prisub1_id
  key_name = data.aws_key_pair.my-test-key.key_name
  vpc_security_group_ids = [aws_security_group.allow-ssh-http.id]

  tags = {
    Name ="app-server"
  }
}

resource "null_resource" "test_null" {
    provisioner "local-exec" {
    command = "echo The bastion's public IP address is ${aws_instance.basion-server.public_ip}"
  }
}