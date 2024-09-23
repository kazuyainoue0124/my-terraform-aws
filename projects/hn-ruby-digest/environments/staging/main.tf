module "registered_emails" {
  source        = "../../modules/dynamodb"
  table_name    = "RegisteredEmails"
  environment   = "staging"
  hash_key      = "Email"
  hash_key_type = "S"
  billing_mode  = "PAY_PER_REQUEST"
  tags = {
    Environment = "staging"
    Project     = "HN Ruby Digest"
  }
}
