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
    Application = "Live Power broker Updates"
    CreatedBy   = "BizCloudExperts"
    Environment = var.env
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

  tags = {
    Application = "Live Power broker Updates"
    CreatedBy   = "BizCloudExperts"
    Environment = var.env
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

  tags = {
    Application = "Live Power broker Updates"
    CreatedBy   = "BizCloudExperts"
    Environment = var.env
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
    Application = "Live Power broker Updates"
    CreatedBy   = "BizCloudExperts"
    Environment = var.env
  }
}

resource "aws_dynamodb_table" "omni-pb-214-add-milestone" {
  name             = "omni-pb-rt-214-add-milestone-${var.env}"
  billing_mode     = "PAY_PER_REQUEST"
  hash_key         = "Housebill"
  range_key        = "StatusCode"
  stream_enabled   = true
  stream_view_type = "NEW_AND_OLD_IMAGES"

  attribute {
    name = "Housebill"
    type = "S"
  }

  attribute {
    name = "StatusCode"
    type = "S"
  }

  tags = {
    Application = "Live Power broker Updates"
    CreatedBy   = "BizCloudExperts"
    Environment = var.env
  }
}
