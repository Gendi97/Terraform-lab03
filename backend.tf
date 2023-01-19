terraform {
  backend "s3" {
    bucket = "lab03-terra"
    key    = "terra-lab03.tfstate"
    region = "us-east-1"

  }
}
