variable "env" {
  description = "Environment name (dev, staging, prod)"
  type        = string
  default     = "dev"
}

variable "lambda_artifacts_bucket_name" {
  description = "Name of S3 bucket for Lambda deployment artifacts"
  type        = string
  default     = "engraver-lambda-artifacts"
}