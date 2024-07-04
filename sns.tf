resource "aws_sns_topic" "omni-pb-add-milestone-error-notification" {
  name = "omni-pb-add-milestone-error-notification-${var.env}"
}

resource "aws_sns_topic_subscription" "omni_pb_add_milestone_emails" {
  for_each  = { for idx, email in var.omni_pb_add_milestone_emails : idx => email }
  topic_arn = aws_sns_topic.omni-pb-add-milestone-error-notification.arn
  protocol  = "email"
  endpoint  = each.value
}

resource "aws_sns_topic" "omni-live-rt-replication-movement-order-rt-ddb-to-sns" {
  name = "omni-live-rt-replication-movement-Order-rt-ddb-to-sns-${var.env}"
}

resource "aws_sns_topic" "omni-live-rt-replication-movement-rt-ddb-to-sns" {
  name = "omni-live-rt-replication-movement-rt-ddb-to-sns-${var.env}"
}

resource "aws_sns_topic" "omni-live-rt-replication-orders-rt-ddb-to-sns" {
  name = "omni-live-rt-replication-orders-rt-ddb-to-sns-${var.env}"
}

resource "aws_sns_topic" "omni-live-rt-replication-stop-rt-ddb-to-sns" {
  name = "omni-live-rt-replication-stop-rt-ddb-to-sns-${var.env}"
}






