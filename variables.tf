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