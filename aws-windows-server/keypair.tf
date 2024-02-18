#You will need to generate key pair locally i.e ssh-keygen -t rsa -b 2048 -m PEM -f krogio  

resource "aws_key_pair" "key" {
  key_name   = "key"
  public_key = file("${path.module}/krogio.pub") 
}