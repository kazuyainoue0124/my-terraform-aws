variable "environment" {
  description = "デプロイ環境 (staging, production)"
  type        = string
}

variable "function_name_suffix" {
  description = "Lambda 関数の名前"
  type        = string
}

variable "source_file" {
  description = "Lambda 関数のソースコード"
  type        = string
}

variable "handler" {
  description = "Lambda 関数のハンドラ"
  type        = string
  default     = "lambda_function.lambda_handler"
}

variable "runtime" {
  description = "Lambda ランタイム"
  type        = string
  default     = "ruby3.3"
}

variable "env_variables" {
  description = "Lambda 関数の環境変数"
  type        = map(string)
  default     = {}
}
