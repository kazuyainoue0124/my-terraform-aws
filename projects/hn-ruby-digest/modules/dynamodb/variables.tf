variable "table_name" {
  description = "DynamoDB テーブルの名前"
  type        = string
}

variable "environment" {
  description = "デプロイ環境 (staging, production)"
  type        = string
}

variable "billing_mode" {
  description = "テーブルの課金モード (PROVISIONED or PAY_PER_REQUEST)"
  type        = string
  default     = "PAY_PER_REQUEST"
}

variable "hash_key" {
  description = "ハッシュキーの属性名"
  type        = string
}

variable "hash_key_type" {
  description = "ハッシュキーの属性型 (S, N, B)"
  type        = string
}

variable "tags" {
  description = "DynamoDB テーブルに適用するタグ"
  type        = map(string)
  default     = {}
}
