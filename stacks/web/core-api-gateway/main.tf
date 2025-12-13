resource "aws_apigatewayv2_api" "http_api" {
  name          = "${local.env}-apigateway-http"
  protocol_type = "HTTP"

  tags = merge(local.tags, {
  })
}

resource "aws_apigatewayv2_stage" "deployment_stage" {
  api_id      = aws_apigatewayv2_api.http_api.id
  name        = local.env
  auto_deploy = true

  tags = merge(local.tags, {
  })
}

output "invoke_url" {
  description = "Stage invoke URL"
  value       = aws_apigatewayv2_stage.deployment_stage.invoke_url
}
