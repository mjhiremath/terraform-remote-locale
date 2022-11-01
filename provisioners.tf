resource "aws_instance" "testVM" {
  ami = "ami-00b3e95ade0a05b9b"
  instance_type = "t2.micro"

  provisioner "local-exec" {
    command = "echo ${self.id} >> myvmid"
  }
}