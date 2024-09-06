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