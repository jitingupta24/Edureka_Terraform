provider "aws" {
    region = "us-east-2"
      
}

resource "aws_instance" "my-vm" {
    ami = "ami-024e6efaf93d85776"
    instance_type = "t2.micro"
    

user_data = <<-EOF
#!/bash/bin
apt-get update -y
sudo apt-get install nginx -y
sudo systemctl enable nginx
sudo systemctl start nginx
EOF

    tags = {
      Name = "TF_VM"
    }
  
}
