resource "aws_sqs_queue" "omni_live_rt_queue_deadletter" {
  name = "omni-live-rt-dlq-${var.env}"
  visibility_timeout_seconds = 900
  tags = {
    Application = "Live Real Time Updates"
    CreatedBy   = "BizCloudExperts"
    Environment = var.env
    STAGE       = var.env
    Name        = "omni-live-rt-dlq-${var.env}"
  }
}

resource "aws_sqs_queue" "omni_live_rt_queue" { 
  name = "omni-live-rt-queue-${var.env}"
  visibility_timeout_seconds = 900
  redrive_policy = jsonencode({
    maxReceiveCount     = 3
    deadLetterTargetArn = aws_sqs_queue.omni_live_rt_queue_deadletter.arn
  })

  tags = {
    Application = "Live Real Time Updates"
    CreatedBy   = "BizCloudExperts"
    Environment = var.env
    STAGE       = var.env
    Name        = "omni-live-rt-queue-${var.env}"
  }
}

resource "aws_sqs_queue_policy" "queue_policy" {
  queue_url = aws_sqs_queue.omni_live_rt_queue.id

  policy = jsonencode({
    Version = "2012-10-17"
    Id      = "example-ID"
    Statement = [
      {
        Sid    = "example-statement-ID"
        Effect = "Allow"
        Principal = {
          Service = "s3.amazonaws.com"
        }
        Action   = "SQS:SendMessage"
        Resource = aws_sqs_queue.omni_live_rt_queue.arn
        Condition = {
          StringEquals = {
            "aws:SourceAccount" = var.aws_account_number
          }
          ArnLike = {
            "aws:SourceArn" = "arn:aws:s3:::dms-dw-etl-lvlp"
          }
        }
      }
    ]
  })
}