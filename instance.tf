resource "aws_instance" "ram-1" {
  ami           = "ami-0166fe664262f664c" # Replace with your AMI ID          
  instance_type = "t2.micro"
  key_name      = ""
  vpc_security_group_ids = [aws_security_group.vinaysg.id]
  subnet_id     = aws_subnet.vinaypsubnet1.id
  associate_public_ip_address = true
  user_data     = file("wp-data.sh")

  tags = {
    Name = "tf vinay"
  }
}
