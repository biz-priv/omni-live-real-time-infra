variable "env" {
  type     = string
  nullable = false
}

variable "region" {
  type     = string
  nullable = false
}

variable "aws_account_number" {
  type     = string
  nullable = false
}

variable "created_by" {
  type     = string
  nullable = false
}

variable "omnidev_email" {
  type    = string
  nullable = false
}

variable "omni_noreply_email" {
  type    = string
  nullable = false
}

variable "omni_lvlp_bucket" {
  type    = string
  nullable = false
}

variable "sqs_queue_name" {
  type     = list(any)
  nullable = false
}

variable "sqs_deadletter_queue_name" {
  type     = list(any)
  nullable = false
}

variable "s3_notification_table_name" {
  type     = list(any)
  nullable = false
}

variable "sqs_queue_arn_ssm_name" {
  type     = list(any)
  nullable = false
}

variable "sqs_deadletter_queue_arn_ssm_name" {
  type     = list(any)
  nullable = false
}