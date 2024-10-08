resource "aws_sqs_queue" "omni_live_rt_queue" {
  count                      = length(var.sqs_queue_name)
  name                       = element(var.sqs_queue_name, count.index)
  visibility_timeout_seconds = 900
  redrive_policy = jsonencode({
    deadLetterTargetArn = aws_sqs_queue.omni_live_rt_queue_deadletter[count.index].arn
    maxReceiveCount     = 3
  })

  tags = {
    Application = "Live Real Time Updates"
    CreatedBy   = "BizCloudExperts"
    Environment = var.env
    STAGE       = var.env
    Name        = element(var.sqs_queue_name, count.index)
  }
}

resource "aws_sqs_queue_policy" "omni_live_rt_queue" {
  count     = length(var.sqs_queue_name)
  queue_url = aws_sqs_queue.omni_live_rt_queue[count.index].id

  policy = <<POLICY
    {
  "Version": "2012-10-17",
  "Id": "example-ID",
  "Statement": [
    {
      "Sid": "example-statement-ID",
      "Effect": "Allow",
      "Principal": {
        "Service": "s3.amazonaws.com"
      },
      "Action": "SQS:SendMessage",
      "Resource": "${aws_sqs_queue.omni_live_rt_queue[count.index].arn}",
      "Condition": {
        "StringEquals": {
          "aws:SourceAccount": "${var.aws_account_number}"
        },
        "ArnLike": {
          "aws:SourceArn": "arn:aws:s3:::dms-dw-etl-lvlp"
        }
      }
    }
  ]
}
POLICY
}


resource "aws_sqs_queue" "omni_live_rt_queue_deadletter" {
  count                      = length(var.sqs_deadletter_queue_name)
  name                       = element(var.sqs_deadletter_queue_name, count.index)
  visibility_timeout_seconds = 900
  tags = {
    Application = "Live Real Time Updates"
    CreatedBy   = "BizCloudExperts"
    Environment = var.env
    STAGE       = var.env
    Name        = element(var.sqs_deadletter_queue_name, count.index)
  }
}

resource "aws_sqs_queue" "omni_live_finalize_cost_queue" {
  name                       = "omni-pb-wt-finalise-cost-status-queue-${var.env}"
  visibility_timeout_seconds = 900

  tags = {
    Application = "Live Real Time Updates"
    CreatedBy   = "BizCloudExperts"
    Environment = var.env
    STAGE       = var.env
    Name        = "omni-pb-wt-finalise-cost-status-queue-${var.env}"
  }
}

data "aws_iam_policy_document" "omni_live_finalize_cost_queue_policy" {
  policy_id = "${aws_sqs_queue.omni_live_finalize_cost_queue.arn}/SQSDefaultPolicy"
  statement {
    sid    = "Allow SNS publish to SQS"
    effect = "Allow"
    principals {
      type        = "AWS"
      identifiers = ["*"]
    }
    actions = [
      "SQS:SendMessage",
    ]
    resources = [
      aws_sqs_queue.omni_live_finalize_cost_queue.arn
    ]
    condition {
      test     = "ArnEquals"
      variable = "aws:SourceArn"
      values = [
        "arn:aws:sns:us-east-1:${var.aws_account_number}:omni-live-rt-replication-orders-rt-ddb-to-sns-${var.env}"
      ]
    }
  }
}

resource "aws_sqs_queue_policy" "omni_live_finalize_cost_queue_policy" {
  queue_url = aws_sqs_queue.omni_live_finalize_cost_queue.id
  policy    = data.aws_iam_policy_document.omni_live_finalize_cost_queue_policy.json
}

resource "aws_sns_topic_subscription" "omni_pb_rt_orders_sns_subscription" {
  topic_arn = "arn:aws:sns:us-east-1:${var.aws_account_number}:omni-live-rt-replication-orders-rt-ddb-to-sns-${var.env}"
  protocol  = "sqs"
  endpoint  = aws_sqs_queue.omni_live_finalize_cost_queue.arn

  filter_policy = jsonencode(
    {
      ready_to_bill = [
        "Y",
      ]
    }
  )
}