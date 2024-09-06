resource "aws_sns_topic" "omni-live-rt-replication-movement-order-rt-ddb-to-sns" {
  name = "omni-live-rt-replication-movement-Order-rt-ddb-to-sns-${var.env}"

  tags = {
    Application = "Live Real Time Updates"
    CreatedBy   = "BizCloudExperts"
    Environment = var.env
    STAGE       = var.env
    Name        = "omni-live-rt-replication-movement-Order-rt-ddb-to-sns-${var.env}"
  }
}

resource "aws_sns_topic" "omni-live-rt-replication-movement-rt-ddb-to-sns" {
  name = "omni-live-rt-replication-movement-rt-ddb-to-sns-${var.env}"

  tags = {
    Application = "Live Real Time Updates"
    CreatedBy   = "BizCloudExperts"
    Environment = var.env
    STAGE       = var.env
    Name        = "omni-live-rt-replication-movement-rt-ddb-to-sns-${var.env}"
  }
}

resource "aws_sns_topic" "omni-live-rt-replication-orders-rt-ddb-to-sns" {
  name = "omni-live-rt-replication-orders-rt-ddb-to-sns-${var.env}"

  tags = {
    Application = "Live Real Time Updates"
    CreatedBy   = "BizCloudExperts"
    Environment = var.env
    STAGE       = var.env
    Name        = "omni-live-rt-replication-orders-rt-ddb-to-sns-${var.env}"
  }
}

resource "aws_sns_topic" "omni-live-rt-replication-stop-rt-ddb-to-sns" {
  name = "omni-live-rt-replication-stop-rt-ddb-to-sns-${var.env}"

  tags = {
    Application = "Live Real Time Updates"
    CreatedBy   = "BizCloudExperts"
    Environment = var.env
    STAGE       = var.env
    Name        = "omni-live-rt-replication-stop-rt-ddb-to-sns-${var.env}"
  }
}

resource "aws_sns_topic" "omni-live-rt-replication-callin-rt-ddb-to-sns" {
  name = "omni-live-rt-replication-callin-rt-ddb-to-sns-${var.env}"

  tags = {
    Application = "Live Real Time Updates"
    CreatedBy   = "BizCloudExperts"
    Environment = var.env
    STAGE       = var.env
    Name        = "omni-live-rt-replication-callin-rt-ddb-to-sns-${var.env}"
  }
}
