resource "aws_eip" "my_eip" {
  vpc = true
}

resource "aws_eip" "my_eip" {
  provider = aws.mumbai
  vpc      = true
}