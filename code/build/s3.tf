provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "dev-"

  tags = {
    Environment          = "Dev"
    yor_name             = "dev_s3"
    yor_trace            = "9f09b67d-473b-4a37-a6cc-13d50344dcab"
    git_commit           = "9b3faf29cf1980a2fd6cdc2a9cb5312dd6e07ecc"
    git_file             = "code/build/s3.tf"
    git_last_modified_at = "2025-05-15 13:12:03"
    git_last_modified_by = "159279687+ztiefu@users.noreply.github.com"
    git_modifiers        = "159279687+ztiefu"
    git_org              = "ztiefu"
    git_repo             = "prisma-cloud-devsecops-workshop"
  }
}

resource "aws_s3_bucket_ownership_controls" "dev_s3" {
  bucket = aws_s3_bucket.dev_s3.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}
