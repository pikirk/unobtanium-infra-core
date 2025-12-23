resource "aws_apigatewayv2_api" "http_api" {
  name          = "${local.env}-apigateway-http"
  description   = "API Gateway for ${local.env} environment"
  protocol_type = "HTTP"

  cors_configuration {
    allow_origins = var.cors_allow_origins
    allow_methods = var.cors_allow_methods
    allow_headers = var.cors_allow_headers
    max_age       = var.cors_max_age_seconds
  }

  tags = merge(local.tags, {
  })
}

resource "aws_apigatewayv2_stage" "deployment_stage" {
  api_id      = aws_apigatewayv2_api.http_api.id
  name        = local.env
  description = "API stage container for ${local.env} environment"
  auto_deploy = true

  tags = merge(local.tags, {
  })
}

output "invoke_url" {
  description = "Deployed invoke URL for API Gateway"
  value       = aws_apigatewayv2_stage.deployment_stage.invoke_url
}
