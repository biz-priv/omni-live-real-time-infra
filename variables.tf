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

variable "omni_pb_214_add_milestone_db_name" {
  type    = string
  nullable = false
}

variable "omni_pb_rt_movement_db_name" {
  type    = string
  nullable = false
}

variable "omni_pb_rt_movement_order_db_name" {
  type    = string
  nullable = false
}

variable "omni_pb_rt_orders_db_name" {
  type    = string
  nullable = false
}

variable "omni_pb_rt_stop_db_name" {
  type    = string
  nullable = false
}

variable "omni_pb_add_milestone_emails" {
  type    = list(string)
  nullable = false
}