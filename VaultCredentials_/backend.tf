terraform {
  backend "s3" {
    bucket = "VaultCreds"
    key    = "path/to/my/key"
    region = "us-east-1"
  }
}