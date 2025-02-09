resource "aws_dynamodb_table" "omni-pb-rt-orders" {
  name             = "omni-pb-rt-orders-${var.env}"
  billing_mode     = "PAY_PER_REQUEST"
  hash_key         = "id"
  stream_enabled   = true
  stream_view_type = "NEW_AND_OLD_IMAGES"

  attribute {
    name = "id"
    type = "S"
  }

  tags = {
    Application = "Live Real Time Updates"
    CreatedBy   = "BizCloudExperts"
    Environment = var.env
    Name = "omni-pb-rt-orders-${var.env}"
  }
}


resource "aws_dynamodb_table" "omni-pb-rt-movement" {
  name             = "omni-pb-rt-movement-${var.env}"
  billing_mode     = "PAY_PER_REQUEST"
  hash_key         = "id"
  stream_enabled   = true
  stream_view_type = "NEW_AND_OLD_IMAGES"

  attribute {
    name = "id"
    type = "S"
  }

  attribute {
    name = "origin_stop_id"
    type = "S"
  }

  attribute {
    name = "dest_stop_id"
    type = "S"
  }

  global_secondary_index {
    name            = "OriginStopIndex"
    hash_key        = "origin_stop_id"
    projection_type = "ALL" 
  }

  global_secondary_index {
    name            = "DestStopIndex"
    hash_key        = "dest_stop_id"
    projection_type = "ALL" 
  }

  tags = {
    Application = "Live Real Time Updates"
    CreatedBy   = "BizCloudExperts"
    Environment = var.env
    Name = "omni-pb-rt-movement-${var.env}"
  }
}

resource "aws_dynamodb_table" "omni-pb-rt-stop" {
  name             = "omni-pb-rt-stop-${var.env}"
  billing_mode     = "PAY_PER_REQUEST"
  hash_key         = "id"
  stream_enabled   = true
  stream_view_type = "NEW_AND_OLD_IMAGES"

  attribute {
    name = "id"
    type = "S"
  }

  attribute {
    name = "order_id"
    type = "S"
  }

  global_secondary_index {
    name            = "order_id-index"
    hash_key        = "order_id"
    projection_type = "ALL" 
  }

  tags = {
    Application = "Live Real Time Updates"
    CreatedBy   = "BizCloudExperts"
    Environment = var.env
    Name = "omni-pb-rt-stop--${var.env}"
  }
}

resource "aws_dynamodb_table" "omni-pb-rt-movement-order" {
  name             = "omni-pb-rt-movement-order-${var.env}"
  billing_mode     = "PAY_PER_REQUEST"
  hash_key         = "id"
  stream_enabled   = true
  stream_view_type = "NEW_AND_OLD_IMAGES"

  attribute {
    name = "id"
    type = "S"
  }

  attribute {
    name = "movement_id"
    type = "S"
  }

  global_secondary_index {
    name            = "movement_id-index"
    hash_key        = "movement_id"
    projection_type = "ALL" 
  }

  tags = {
    Application = "Live Real Time Updates"
    CreatedBy   = "BizCloudExperts"
    Environment = var.env
    Name = "omni-pb-rt-movement-order-${var.env}"
  }
}

resource "aws_dynamodb_table" "omni-live-realtime-failed-records-table" {
  name             = "omni-live-realtime-failed-records-${var.env}"
  billing_mode     = "PAY_PER_REQUEST"
  hash_key         = "UUid"
  stream_enabled   = true
  stream_view_type = "NEW_AND_OLD_IMAGES"

  attribute {
    name = "UUid"
    type = "S"
  }
  attribute {
    name = "Status"
    type = "S"
  }

  global_secondary_index {
    name            = "Status-index"
    hash_key        = "Status"
    projection_type = "ALL"
  }  


  tags = {
    Application = "Live Real Time Updates"
    CreatedBy   = "BizCloudExperts"
    Environment = var.env
    STAGE       = var.env
    Name = "omni-live-realtime-failed-records-table-${var.env}"
  }
}