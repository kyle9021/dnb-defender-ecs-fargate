# Cloudwatch log group and S3 Bucket to store logs from the service
resource "aws_cloudwatch_log_group" "fargate" {
  name = "/ecs/${var.env_name}-${var.app_name}"
}

resource "aws_s3_bucket" "fargate" {
  bucket        = "dnb-prisma-fargate"
  acl           = "private"
  force_destroy = "true"
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "aws:kms"
      }
    }
  }
  versioning {
    enabled = true
  }
}
