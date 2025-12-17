resource "aws_apigatewayv2_api" "http_api" {
  name          = "${local.env}-apigateway-http"
  description   = "API Gateway for ${local.env} environment"
  protocol_type = "HTTP"

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
