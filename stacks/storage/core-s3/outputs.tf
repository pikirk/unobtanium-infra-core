output "lambda_artifacts_bucket_name" {
  description = "Name of the S3 bucket for Lambda artifacts"
  value       = aws_s3_bucket.lambda_artifacts.id
}

output "lambda_artifacts_bucket_arn" {
  description = "ARN of the S3 bucket for Lambda artifacts"
  value       = aws_s3_bucket.lambda_artifacts.arn
}