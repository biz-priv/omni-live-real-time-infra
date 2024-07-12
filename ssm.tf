resource "aws_ssm_parameter" "omni-pb-214-add-milestone-dynamodb-name" {
  name  = "/omni-pb-214/${var.env}/add-milestone/db"
  type  = "String"
  value = aws_dynamodb_table.omni-pb-214-add-milestone.name

  tags = {
    Application = "omni-live-pb-updates"
    CreatedBy   = "BizCloudExperts"
    Environment = var.env
    STAGE       = var.env
  }
}

resource "aws_ssm_parameter" "omni-pb-rt-movement-dynamodb-name" {
  name  = "/omni-pb-rt/${var.env}/movement/db"
  type  = "String"
  value = aws_dynamodb_table.omni-pb-rt-movement.name

  tags = {
    Application = "Live Real Time Updates"
    CreatedBy   = "BizCloudExperts"
    Environment = var.env
    STAGE       = var.env
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
  }
}



resource "aws_ssm_parameter" "add-milestone-streamArn" {
  name  = "/omni-pb-rt/${var.env}/214-add-milestone/ddb.streamArn"
  type  = "String"
  value = aws_dynamodb_table.omni-pb-214-add-milestone.stream_arn

  tags = {
    Application = "Real Time Updates"
    CreatedBy   = "BizCloudExperts"
    Environment = var.env
    STAGE       = var.env
  }
}

resource "aws_ssm_parameter" "omni-pb-error-topic" {
  name  = "/omni-pb-rt/${var.env}/error-notification/arn"
  type  = "String"
  value = aws_sns_topic.omni-pb-add-milestone-error-notification.name

  tags = {
    Application = "omni-live-pb-updates"
    CreatedBy   = "BizCloudExperts"
    Environment = var.env
    STAGE       = var.env
  }
}

resource "aws_ssm_parameter" "omni-ivia-add-milestone-console-url" {
  name  = "/omni-ivia/${var.env}/addMilestone/console/url"
  type  = "String"
  value = var.omni_ivia_addMilestone_console_url

  tags = {
    Application = "Real Time Updates"
    CreatedBy   = "BizCloudExperts"
    Environment = var.env
    STAGE       = var.env
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
  }
}