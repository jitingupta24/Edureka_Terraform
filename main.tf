provider "aws" {
    region = "us-east-1"
      
}

resource "aws_instance" "my-vm" {
    ami = "ami-053b0d53c279acc90"
    instance_type = "t2.micro"
    vpc_security_group_ids = ["sg-01e9e2afe946219ef"]
    subnet_id = "subnet-01b0d89c1e613e35b"

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
