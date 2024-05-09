resource "aws_ssm_parameter" "omni-pb-214-add-milestone-dynamodb-name" {
  name  = "/omni-pb-214/${var.env}/add-milestone/db"
  type  = "String"
  value = var.omni_pb_214_add_milestone_db_name

  tags = {
    Application = "omni-coe-table"

    CreatedBy   = "BizCloudExperts"
    Environment = var.env
    STAGE       = var.env
  }
}

resource "aws_ssm_parameter" "omni-pb-rt-movement-dynamodb-name" {
  name  = "/omni-pb-rt/${var.env}/movement/db"
  type  = "String"
  value = var.omni_pb_rt_movement_db_name

  tags = {
    Application = "omni-coe-table"

    CreatedBy   = "BizCloudExperts"
    Environment = var.env
    STAGE       = var.env
  }
}

resource "aws_ssm_parameter" "omni-pb-rt-movement-order-dynamodb-name" {
  name  = "/omni-pb-rt/${var.env}/movement-order/db"
  type  = "String"
  value = var.omni_pb_rt_movement_order_db_name

  tags = {
    Application = "omni-coe-table"

    CreatedBy   = "BizCloudExperts"
    Environment = var.env
    STAGE       = var.env
  }
}

resource "aws_ssm_parameter" "omni-pb-rt-orders-dynamodb-name" {
  name  = "/omni-pb-rt/${var.env}/orders/db"
  type  = "String"
  value = var.omni_pb_rt_orders_db_name

  tags = {
    Application = "omni-coe-table"

    CreatedBy   = "BizCloudExperts"
    Environment = var.env
    STAGE       = var.env
  }
}

resource "aws_ssm_parameter" "omni-pb-rt-stop-dynamodb-name" {
  name  = "/omni-pb-rt/${var.env}/stop/db"
  type  = "String"
  value = var.omni_pb_rt_stop_db_name

  tags = {
    Application = "omni-coe-table"

    CreatedBy   = "BizCloudExperts"
    Environment = var.env
    STAGE       = var.env
  }
}