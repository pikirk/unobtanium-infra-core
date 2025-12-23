variable "env" {
  type        = string
  description = "Environment suffix for resources. Allowed: dev, stage, prod."

  validation {
    condition     = contains(["dev", "stage", "prod"], var.env)
    error_message = "env must be one of: dev, stage, prod."
  }
}

############################################
# HTTP API CORS configuration
############################################
variable "cors_allow_origins" {
  description = "Allowed origins for CORS (HTTP API). Use explicit domains in prod."
  type        = list(string)
  default     = ["*"]
}

variable "cors_allow_methods" {
  description = "Allowed methods for CORS preflight."
  type        = list(string)
  default     = ["GET", "OPTIONS"]
}

variable "cors_allow_headers" {
  description = "Allowed headers for CORS preflight."
  type        = list(string)
  default = [
    "content-type",
    "authorization",
    "x-amz-date",
    "x-api-key",
    "x-amz-security-token"
  ]
}

variable "cors_max_age_seconds" {
  description = "How long browsers can cache preflight results."
  type        = number
  default     = 3600
}
