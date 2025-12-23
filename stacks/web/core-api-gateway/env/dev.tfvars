env                = "dev"
cors_allow_origins = ["*"]
cors_allow_methods = ["OPTIONS", "GET"]
cors_allow_headers = [
  "Content-Type",
  "Authorization",
  "x-amz-date",
  "x-api-key",
  "x-amz-security-token"
]
cors_max_age_seconds = 3600