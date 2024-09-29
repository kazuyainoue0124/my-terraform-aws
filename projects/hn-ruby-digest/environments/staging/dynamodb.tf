resource "aws_dynamodb_table" "dynamodb" {
  name         = "RegisteredEmails-staging"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "Email"

  attribute {
    name = "Email"
    type = "S"
  }

  tags = {
    Environment = "staging"
    Project     = "HN Ruby Digest"
  }
}
