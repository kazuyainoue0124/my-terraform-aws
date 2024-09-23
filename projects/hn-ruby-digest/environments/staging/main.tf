resource "aws_dynamodb_table" "registered_emails" {
  name         = "RegisteredEmails"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "Email"

  attribute {
    name = "Email"
    type = "S"
  }

  tags = {
    Project     = "HN Ruby Digest"
    Environment = "staging"
  }
}