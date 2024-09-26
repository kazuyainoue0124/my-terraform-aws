data "aws_iam_policy_document" "assume_role" {
  statement {
    effect = "Allow"

    principals {
      type        = "Service"
      identifiers = ["lambda.amazonaws.com"]
    }

    actions = ["sts:AssumeRole"]
  }
}

resource "aws_iam_role" "iam_for_lambda" {
  name               = "iam_for_lambda_${var.environment}"
  assume_role_policy = data.aws_iam_policy_document.assume_role.json
}

data "archive_file" "lambda" {
  type        = "zip"
  source_file = var.source_file
  output_path = "${path.module}/../lambda_function_payload_${var.environment}.zip"
}

resource "aws_lambda_function" "hn_ruby_digest" {
  filename         = data.archive_file.lambda.output_path
  function_name    = "hn_ruby_digest_${var.environment}"
  role             = aws_iam_role.iam_for_lambda.arn
  handler          = var.handler
  source_code_hash = data.archive_file.lambda.output_base64sha256
  runtime          = var.runtime

  environment {
    variables = var.env_variables
  }
}
