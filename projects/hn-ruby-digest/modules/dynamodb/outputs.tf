output "table_arn" {
  description = "DynamoDB テーブルの ARN"
  value       = aws_dynamodb_table.dynamodb.arn
}

output "table_name" {
  description = "DynamoDB テーブルの名前"
  value       = aws_dynamodb_table.dynamodb.name
}
