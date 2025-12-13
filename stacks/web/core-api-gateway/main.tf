resource "aws_apigatewayv2_api" "http_api" {
  name          = "${locals.environment}-apigateway-http"
  protocol_type = "HTTP"

  tags = merge(locals.tags, {
  })
}

resource "aws_apigatewayv2_stage" "stage" {
  api_id      = aws_apigatewayv2_api.http_api.id
  name        = locals.environment
  auto_deploy = true

  tags = merge(locals.tags, {
  })
}

output "invoke_url" {
  description = "Stage invoke URL"
  value       = aws_apigatewayv2_stage.stage.invoke_url
}
