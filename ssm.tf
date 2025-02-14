resource "aws_ssm_parameter" "omni-pb-rt-movement-dynamodb-name" {
  name  = "/omni-pb-rt/${var.env}/movement/db"
  type  = "String"
  value = aws_dynamodb_table.omni-pb-rt-movement.name

  tags = {
    Application = "Live Real Time Updates"
    CreatedBy   = "BizCloudExperts"
    Environment = var.env
    STAGE       = var.env
    Name        = "omni-pb-rt-movement-${var.env}"
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
    Name        = "omni-pb-rt-movement-originstop-index-${var.env}"
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
    Name        = "omni-pb-rt-movement-deststop-index-${var.env}"
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
    Name        = "omni-pb-rt-movement-order-${var.env}"
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
    Name        = "omni-pb-rt-movement-order-index-${var.env}"
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
    Name        = "omni-pb-rt-orders-${var.env}"
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
    Name        = "omni-pb-rt-stop-${var.env}"
  }
}

resource "aws_ssm_parameter" "omni-pb-rt-users-dynamodb-name" {
  name  = "/omni-pb-rt/${var.env}/users/db"
  type  = "String"
  value =  aws_dynamodb_table.omni-pb-rt-users.name

  tags = {
    Application = "Live Real Time Updates"
    CreatedBy   = "BizCloudExperts"
    Environment = var.env
    STAGE       = var.env
    Name        = "/omni-pb-rt/${var.env}/users/db"
  }
}

resource "aws_ssm_parameter" "omni-pb-rt-other-charge-dynamodb-name" {
  name  = "/omni-pb-rt/${var.env}/other-charge/db"
  type  = "String"
  value =  aws_dynamodb_table.omni-pb-rt-other-charge.name

  tags = {
    Application = "Live Real Time Updates"
    CreatedBy   = "BizCloudExperts"
    Environment = var.env
    STAGE       = var.env
    Name        = "/omni-pb-rt/${var.env}/other-charge/db"
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
    Name        = "omni-pb-rt-stop-index-${var.env}"
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
    Name        = "omni-pb-rt-movement-${var.env}"
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
    Name        = "omni-pb-rt-movement-${var.env}"
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
    Name        = "omni-pb-rt-stop-${var.env}"
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
    Name        = "omni-pb-rt-orders-${var.env}"
  }
}

resource "aws_ssm_parameter" "omni-live-rt-replication-movement-order-rt-ddb-to-sns" {
  name  = "/omni-live-rt-replication/${var.env}/movement-order-rt-ddb-to-sns/arn"
  type  = "String"
  value = aws_sns_topic.omni-live-rt-replication-movement-order-rt-ddb-to-sns.arn

  tags = {
    Application = "Live Real Time Updates"
    CreatedBy   = "BizCloudExperts"
    Environment = var.env
    STAGE       = var.env
    Name        = "omni-live-rt-replication-movement-order-rt-ddb-${var.env}"
  }
}

resource "aws_ssm_parameter" "omni-live-rt-replication-movement-rt-ddb-to-sns" {
  name  = "/omni-live-rt-replication/${var.env}/movement-rt-ddb-to-sns/arn"
  type  = "String"
  value = aws_sns_topic.omni-live-rt-replication-movement-rt-ddb-to-sns.arn

  tags = {
    Application = "Live Real Time Updates"
    CreatedBy   = "BizCloudExperts"
    Environment = var.env
    STAGE       = var.env
    Name        = "omni-live-rt-replication-movement-rt-ddb-sns-${var.env}"
  }
}

resource "aws_ssm_parameter" "omni-live-rt-replication-orders-rt-ddb-to-sns" {
  name  = "/omni-live-rt-replication/${var.env}/orders-rt-ddb-to-sns/arn"
  type  = "String"
  value = aws_sns_topic.omni-live-rt-replication-orders-rt-ddb-to-sns.arn

  tags = {
    Application = "Live Real Time Updates"
    CreatedBy   = "BizCloudExperts"
    Environment = var.env
    STAGE       = var.env
    Name        = "omni-live-rt-replication-orders-rt-ddb-sns-${var.env}"
  }
}

resource "aws_ssm_parameter" "omni-live-rt-replication-stop-rt-ddb-to-sns" {
  name  = "/omni-live-rt-replication/${var.env}/stop-rt-ddb-to-sns/arn"
  type  = "String"
  value = aws_sns_topic.omni-live-rt-replication-stop-rt-ddb-to-sns.arn

  tags = {
    Application = "Live Real Time Updates"
    CreatedBy   = "BizCloudExperts"
    Environment = var.env
    STAGE       = var.env
    Name        = "omni-live-rt-replication-stop-rt-ddb-sns-${var.env}"
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
    Name        = "omni-live-realtime-failed-records-${var.env}"
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
    Name        = "omni-pb-rt-stop-index-${var.env}"
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
    Name        = "omni-live-realtime-failed-records-${var.env}"
  }
}

resource "aws_ssm_parameter" "omni-realtime-omnidev-email" {
  name  = "/omni-realtime/${var.env}/omni-dev/email"
  type  = "String"
  value = var.omnidev_email

  tags = {
    Application = "Real Time Updates"
    CreatedBy   = "BizCloudExperts"
    Environment = var.env
    STAGE       = var.env
  }
}

resource "aws_ssm_parameter" "omni-realtime-no-reply-email" {
  name  = "/omni-realtime/${var.env}/omni-no-reply/email"
  type  = "String"
  value = var.omni_noreply_email

  tags = {
    Application = "Real Time Updates"
    CreatedBy   = "BizCloudExperts"
    Environment = var.env
    STAGE       = var.env
  }
}

resource "aws_ssm_parameter" "omni-realtime-lvlp-s3-bucket" {
  name  = "/omni-realtime/${var.env}/lvlp/s3-bucket"
  type  = "String"
  value = var.omni_lvlp_bucket

  tags = {
    Application = "Real Time Updates"
    CreatedBy   = "BizCloudExperts"
    Environment = var.env
    STAGE       = var.env
  }
}

resource "aws_ssm_parameter" "omni-pb-rt-callin-dynamodb-name" {
  name  = "/omni-pb-rt/${var.env}/callin/ddb.name"
  type  = "String"
  value = aws_dynamodb_table.omni-pb-rt-callin.name

  tags = {
    Application = "Live Real Time Updates"
    CreatedBy   = "BizCloudExperts"
    Environment = var.env
    STAGE       = var.env
    Name        = "omni-pb-rt-callin-${var.env}"
  }
}

resource "aws_ssm_parameter" "callin-streamArn" {
  name  = "/omni-pb-rt/${var.env}/callin/ddb.streamArn"
  type  = "String"
  value = aws_dynamodb_table.omni-pb-rt-callin.stream_arn

  tags = {
    Application = "Live Real Time Updates"
    CreatedBy   = "BizCloudExperts"
    Environment = var.env
    STAGE       = var.env
    Name        = "omni-pb-rt-callin-${var.env}"
  }
}

resource "aws_ssm_parameter" "omni-live-rt-replication-callin-rt-ddb-to-sns" {
  name  = "/omni-live-rt-replication/${var.env}/callin-rt-ddb-to-sns/arn"
  type  = "String"
  value = aws_sns_topic.omni-live-rt-replication-callin-rt-ddb-to-sns.arn

  tags = {
    Application = "Live Real Time Updates"
    CreatedBy   = "BizCloudExperts"
    Environment = var.env
    STAGE       = var.env
    Name        = "omni-live-rt-replication-callin-rt-ddb-sns-${var.env}"
  }
}

resource "aws_ssm_parameter" "callin-index" {
  name  = "/omni-pb-rt/${var.env}/callin/ddb.index"
  type  = "SecureString"
  value = element(aws_dynamodb_table.omni-pb-rt-callin.global_secondary_index[*].name, 0)

  tags = {
    Application = "Live Real Time Updates"
    CreatedBy   = "BizCloudExperts"
    Environment = var.env
    STAGE       = var.env
    Name        = "omni-pb-rt-callin-index-${var.env}"
  }
}

resource "aws_ssm_parameter" "sqs_queue_arn" {
  count = length(var.sqs_queue_arn_ssm_name)
  name  = element(var.sqs_queue_arn_ssm_name, count.index)
  type  = "SecureString"
  value = aws_sqs_queue.omni_live_rt_queue[count.index].arn

  tags = {
    Application = "Live Real Time Updates"
    CreatedBy   = "BizCloudExperts"
    Environment = var.env
    STAGE       = var.env
    Name        = element(var.sqs_queue_arn_ssm_name, count.index)
  }
}

resource "aws_ssm_parameter" "sqs_dlq_arn" {
  count = length(var.sqs_deadletter_queue_arn_ssm_name)
  name  = element(var.sqs_deadletter_queue_arn_ssm_name, count.index)
  type  = "SecureString"
  value = aws_sqs_queue.omni_live_rt_queue_deadletter[count.index].arn

  tags = {
    Application = "Live Real Time Updates"
    CreatedBy   = "BizCloudExperts"
    Environment = var.env
    STAGE       = var.env
    Name        = element(var.sqs_deadletter_queue_arn_ssm_name, count.index)
  }
}

resource "aws_ssm_parameter" "omni_pb_wt_finalise_cost_sqs_arn" {
  name  = "/omni-pb-wt-updates/${var.env}/finalise-cost/sqs.arn"
  type  = "String"
  value = aws_sqs_queue.omni_live_finalize_cost_queue.arn

  tags = {
    Application = "Omni PB WT Updates"
    CreatedBy   = var.created_by
    Environment = var.env
    STAGE       = var.env
    Name        = "/omni-pb-wt-updates/${var.env}/finalise-cost/sqs.arn"
  }
}

resource "aws_ssm_parameter" "omni_pb_wt_finalise_cost_status_table" {
  name  = "/omni-pb-wt-updates/${var.env}/finalise-cost/dynamoDb.tableName"
  type  = "String"
  value = aws_dynamodb_table.omni_pb_wt_finilise_cost_status_table.name

  tags = {
    Application = "Omni PB WT Updates"
    CreatedBy   = var.created_by
    Environment = var.env
    STAGE       = var.env
    Name        = "/omni-pb-wt-updates/${var.env}/finalise-cost/sqs.arn"
  }
}

resource "aws_ssm_parameter" "omni_pb_wt_finalise_cost_sqs_url" {
  name  = "/omni-pb-wt-updates/${var.env}/finalise-cost/sqs.url"
  type  = "String"
  value = aws_sqs_queue.omni_live_finalize_cost_queue.url

  tags = {
    Application = "Omni PB WT Updates"
    CreatedBy   = var.created_by
    Environment = var.env
    STAGE       = var.env
    Name        = "/omni-pb-wt-updates/${var.env}/finalise-cost/sqs.url"
  }
}



