resource "aws_s3_bucket_notification" "omni-live-rt-updates-s3-bucket-notification" {
  bucket = aws_s3_bucket.omni-live-rt-updates-s3-bucket.id
  count  = length(var.sqs_queue_name)
  eventbridge = true

  queue {
    queue_arn     = aws_sqs_queue.omni_live_rt_queue[0].arn
    events        = ["s3:ObjectCreated:*"]
    filter_suffix = ".json"
    filter_prefix = "${var.env}/fullLoad/dbjson/${var.s3_notification_table_name[0]}"
  }
  queue {
    queue_arn     = aws_sqs_queue.omni_live_rt_queue[1].arn
    events        = ["s3:ObjectCreated:*"]
    filter_suffix = ".csv"
    filter_prefix = "${var.env}/fullLoad/dbjson/${var.s3_notification_table_name[1]}"
  }

  depends_on = [
    aws_sqs_queue.omni_live_rt_queue
  ]
}