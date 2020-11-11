provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "demo-s3" {
  bucket = var.storage_nname
  versioning {
    enabled    = true
    mfa_delete = false
  }
}

variable "storage_nname" {
  default = "storage202011111144"
}
