provider "vault" {
  address = var.vault_address 
  token = data.aws_ssm_parameter.token.value
}
# Configure the AWS Provider
provider "aws" {
  region = var.region
}


resource "aws_s3_bucket" "terraform_state" {
  bucket = "terraform-up-and-running-state"

  # Prevent accidental deletion of this S3 bucket
  lifecycle {
    prevent_destroy = true
  }
}
