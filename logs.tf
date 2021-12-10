# Cloudwatch log group and S3 Bucket to store logs from the service
resource "aws_cloudwatch_log_group" "fargate" {
  name = "/ecs/${var.env_name}-${var.app_name}"
  tags = {
    yor_trace = "83171f35-a6ef-4d20-bc15-7d89af94beb1"
  }
}

resource "aws_s3_bucket" "fargate" {
  bucket        = "dnb-prisma-fargate"
  acl           = "private"
  force_destroy = "true"
  tags = {
    yor_trace = "d458dd8b-1cca-45e0-98df-76601fd8e7bd"
  }
}
