terraform {
  backend "s3" {
    bucket         = ""
    key            = ""
    region         = "us-west-1"
    access_key     = ""
    secret_key     = ""
    dynamodb_table = "<table name>"
  }
}