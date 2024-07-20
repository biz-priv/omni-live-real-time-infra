resource "aws_ssm_parameter" "omni-pb-rt-movement-dynamodb-name" {
  name  = "/omni-pb-rt/${var.env}/movement/db"
  type  = "String"
  value = aws_dynamodb_table.omni-pb-rt-movement.name

  tags = {
    Application = "Live Real Time Updates"
    CreatedBy   = "BizCloudExperts"
    Environment = var.env
    STAGE       = var.env
    Name        = "omni-pb-rt-movement-var.env"
  }
}

resource "aws_ssm_parameter" "movement-originstop-index" {
  name  = "/omni-pb-rt/${var.env}/movement-originstopIndex/ddb.index"
  type  = "SecureString"
  value = element(aws_dynamodb_table.omni-pb-rt-movement.global_secondary_index[*].name, 1)

  tags = {
    Application = "Live Real Time Updates"
    CreatedBy   = "BizCloudExperts"
    Environment = var.env
    STAGE       = var.env
    Name        = "omni-pb-rt-movement-originstop-index-var.env"
  }
}

resource "aws_ssm_parameter" "movement-deststop-index" {
  name  = "/omni-pb-rt/${var.env}/movement-deststop/ddb.index"
  type  = "SecureString"
  value = element(aws_dynamodb_table.omni-pb-rt-movement.global_secondary_index[*].name, 0)

  tags = {
    Application = "Live Real Time Updates"
    CreatedBy   = "BizCloudExperts"
    Environment = var.env
    STAGE       = var.env
    Name        = "omni-pb-rt-movement-deststop-index-var.env"
  }
}

resource "aws_ssm_parameter" "omni-pb-rt-movement-order-dynamodb-name" {
  name  = "/omni-pb-rt/${var.env}/movement-order/db"
  type  = "String"
  value = aws_dynamodb_table.omni-pb-rt-movement-order.name

  tags = {
    Application = "Live Real Time Updates"
    CreatedBy   = "BizCloudExperts"
    Environment = var.env
    STAGE       = var.env
    Name        = "omni-pb-rt-movement-order-var.env"
  }
}

resource "aws_ssm_parameter" "movement-order-index" {
  name  = "/omni-pb-rt/${var.env}/movement-order/ddb.index"
  type  = "SecureString"
  value = element(aws_dynamodb_table.omni-pb-rt-movement-order.global_secondary_index[*].name, 0)

  tags = {
    Application = "Live Real Time Updates"
    CreatedBy   = "BizCloudExperts"
    Environment = var.env
    STAGE       = var.env
    Name        = "omni-pb-rt-movement-order-index-var.env"
  }
}

resource "aws_ssm_parameter" "omni-pb-rt-orders-dynamodb-name" {
  name  = "/omni-pb-rt/${var.env}/orders/db"
  type  = "String"
  value = aws_dynamodb_table.omni-pb-rt-orders.name

  tags = {
    Application = "Live Real Time Updates"
    CreatedBy   = "BizCloudExperts"
    Environment = var.env
    STAGE       = var.env
    Name        = "omni-pb-rt-orders-var.env"
  }
}

resource "aws_ssm_parameter" "omni-pb-rt-stop-dynamodb-name" {
  name  = "/omni-pb-rt/${var.env}/stop/db"
  type  = "String"
  value =  aws_dynamodb_table.omni-pb-rt-stop.name

  tags = {
    Application = "Live Real Time Updates"
    CreatedBy   = "BizCloudExperts"
    Environment = var.env
    STAGE       = var.env
    Name        = "omni-pb-rt-stop-var.env"
  }
}

resource "aws_ssm_parameter" "stop-index" {
  name  = "/omni-pb-rt/${var.env}/stop/ddb.index"
  type  = "SecureString"
  value = element(aws_dynamodb_table.omni-pb-rt-stop.global_secondary_index[*].name, 0)

  tags = {
    Application = "Live Real Time Updates"
    CreatedBy   = "BizCloudExperts"
    Environment = var.env
    STAGE       = var.env
    Name        = "omni-pb-rt-stop-index-var.env"
  }
}

resource "aws_ssm_parameter" "movement-streamArn" {
  name  = "/omni-pb-rt/${var.env}/movement/ddb.streamArn"
  type  = "String"
  value = aws_dynamodb_table.omni-pb-rt-movement.stream_arn

  tags = {
    Application = "Live Real Time Updates"
    CreatedBy   = "BizCloudExperts"
    Environment = var.env
    STAGE       = var.env
    Name        = "omni-pb-rt-movement-var.env"
  }
}

resource "aws_ssm_parameter" "movement-order-streamArn" {
  name  = "/omni-pb-rt/${var.env}/movement-order/ddb.streamArn"
  type  = "String"
  value = aws_dynamodb_table.omni-pb-rt-movement-order.stream_arn

  tags = {
    Application = "Live Real Time Updates"
    CreatedBy   = "BizCloudExperts"
    Environment = var.env
    STAGE       = var.env
    Name        = "omni-pb-rt-movement-var.env"
  }
}

resource "aws_ssm_parameter" "stop-streamArn" {
  name  = "/omni-pb-rt/${var.env}/stop/ddb.streamArn"
  type  = "String"
  value = aws_dynamodb_table.omni-pb-rt-stop.stream_arn

  tags = {
    Application = "Live Real Time Updates"
    CreatedBy   = "BizCloudExperts"
    Environment = var.env
    STAGE       = var.env
    Name        = "omni-pb-rt-stop-var.env"
  }
}

resource "aws_ssm_parameter" "orders-streamArn" {
  name  = "/omni-pb-rt/${var.env}/orders/ddb.streamArn"
  type  = "String"
  value = aws_dynamodb_table.omni-pb-rt-orders.stream_arn

  tags = {
    Application = "Live Real Time Updates"
    CreatedBy   = "BizCloudExperts"
    Environment = var.env
    STAGE       = var.env
    Name        = "omni-pb-rt-orders-var.env"
  }
}

resource "aws_ssm_parameter" "omni-live-rt-replication-movement-order-rt-ddb-to-sns" {
  name  = "/omni-live-rt-replication/${var.env}/movement-order-rt-ddb-to-sns/arn"
  type  = "String"
  value = aws_sns_topic.omni-live-rt-replication-movement-order-rt-ddb-to-sns.name

  tags = {
    Application = "Live Real Time Updates"
    CreatedBy   = "BizCloudExperts"
    Environment = var.env
    STAGE       = var.env
    Name        = "omni-live-rt-replication-movement-order-rt-ddb-var.env"
  }
}

resource "aws_ssm_parameter" "omni-live-rt-replication-movement-rt-ddb-to-sns" {
  name  = "/omni-live-rt-replication/${var.env}/movement-rt-ddb-to-sns/arn"
  type  = "String"
  value = aws_sns_topic.omni-live-rt-replication-movement-rt-ddb-to-sns.name

  tags = {
    Application = "Live Real Time Updates"
    CreatedBy   = "BizCloudExperts"
    Environment = var.env
    STAGE       = var.env
    Name        = "omni-live-rt-replication-movement-rt-ddb-sns-var.env"
  }
}

resource "aws_ssm_parameter" "omni-live-rt-replication-orders-rt-ddb-to-sns" {
  name  = "/omni-live-rt-replication/${var.env}/orders-rt-ddb-to-sns/arn"
  type  = "String"
  value = aws_sns_topic.omni-live-rt-replication-orders-rt-ddb-to-sns.name

  tags = {
    Application = "Live Real Time Updates"
    CreatedBy   = "BizCloudExperts"
    Environment = var.env
    STAGE       = var.env
    Name        = "omni-live-rt-replication-orders-rt-ddb-sns-var.env"
  }
}

resource "aws_ssm_parameter" "omni-live-rt-replication-stop-rt-ddb-to-sns" {
  name  = "/omni-live-rt-replication/${var.env}/stop-rt-ddb-to-sns/arn"
  type  = "String"
  value = aws_sns_topic.omni-live-rt-replication-stop-rt-ddb-to-sns.name

  tags = {
    Application = "Live Real Time Updates"
    CreatedBy   = "BizCloudExperts"
    Environment = var.env
    STAGE       = var.env
    Name        = "omni-live-rt-replication-stop-rt-ddb-sns-var.env"
  }
}

resource "aws_ssm_parameter" "omni-live-realtime-failed-records-table-name" {
  name  = "/omni-live-realtime/${var.env}/failed-records/ddb.tableName"
  type  = "String"
  value = aws_dynamodb_table.omni-live-realtime-failed-records-table.name

  tags = {
    Application = "Live Real Time Updates"
    CreatedBy   = "BizCloudExperts"
    Environment = var.env
    STAGE       = var.env
    Name        = "omni-live-realtime-failed-records-var.env"
  }
}

resource "aws_ssm_parameter" "failed-records-index" {
  name  = "/omni-live-realtime/${var.env}/failed-records/ddb.index"
  type  = "SecureString"
  value = element(aws_dynamodb_table.omni-live-realtime-failed-records-table.global_secondary_index[*].name, 0)

  tags = {
    Application = "Live Real Time Updates"
    CreatedBy   = "BizCloudExperts"
    Environment = var.env
    STAGE       = var.env
    Name        = "omni-pb-rt-stop-index-var.env"
  }
}

resource "aws_ssm_parameter" "omni-live-realtime-failed-records-table-streamArn" {
  name  = "/omni-live-realtime/${var.env}/failed-records/ddb.streamArn"
  type  = "SecureString"
  value = aws_dynamodb_table.omni-live-realtime-failed-records-table.stream_arn

  tags = {
    Application = "Live Real Time Updates"
    CreatedBy   = "BizCloudExperts"
    Environment = var.env
    STAGE       = var.env
    Name        = "omni-live-realtime-failed-records-var.env"
  }
}