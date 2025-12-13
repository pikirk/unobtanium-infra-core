variable "env" {
  type        = string
  description = "Environment suffix for resources. Allowed: dev, stage, prod."

  validation {
    condition     = contains(["dev", "stage", "prod"], var.env)
    error_message = "env must be one of: dev, stage, prod."
  }
}
