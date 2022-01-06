resource "aws_iam_user" "dev" {
  name = var.iam_user
  path = "/system/"
}
