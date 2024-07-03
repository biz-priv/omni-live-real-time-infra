resource "aws_sns_topic" "omni-pb-add-milestone-error-notification" {
  name = "omni-pb-add-milestone-error-notification-${var.env}"
}

resource "aws_sns_topic_subscription" "omni_pb_add_milestone_emails" {
  for_each  = { for idx, email in var.omni_pb_add_milestone_emails : idx => email }
  topic_arn = aws_sns_topic.omni-pb-add-milestone-error-notification.arn
  protocol  = "email"
  endpoint  = each.value
}

resource "aws_sns_topic" "omni-live-rt-replication-movement-Order-RT-ddb-to-sns" {
  name = "omni-live-rt-replication-movement-Order-RT-ddb-to-sns-${var.env}"
}

resource "aws_sns_topic" "omni-live-rt-replication-movement-RT-ddb-to-sns" {
  name = "omni-live-rt-replication-movement-RT-ddb-to-sns-${var.env}"
}

resource "aws_sns_topic" "omni-live-rt-replication-orders-RT-ddb-to-sns" {
  name = "omni-live-rt-replication-orders-RT-ddb-to-sns-${var.env}"
}

resource "aws_sns_topic" "omni-live-rt-replication-stop-RT-ddb-to-sns" {
  name = "omni-live-rt-replication-stop-RT-ddb-to-sns-${var.env}"
}






