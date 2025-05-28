provider "aws" {
  region     = var.aws_region
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}

resource "aws_instance" "jackpot" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name  # Optional: use for SSH

  tags = {
    Name = "terraform-jackpot"
  }
}
