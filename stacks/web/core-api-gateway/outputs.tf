output "http_api_id" {
  description = "Identifier of the HTTP API Gateway"
  value       = aws_apigatewayv2_api.http_api.id
}

output "http_api_name" {
  description = "Name of the HTTP API Gateway"
  value       = aws_apigatewayv2_api.http_api.name
}

output "http_api_invoke_url" {
  description = "Invoke URL for the deployed HTTP API"
  value       = aws_apigatewayv2_stage.deployment_stage.invoke_url
}
