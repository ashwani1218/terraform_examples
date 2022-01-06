variable "instancetype" {
  default = "t2.micro"
}

variable "iam_user" {
  type        = string
  description = "dev user"
  default     = "dev"
}
