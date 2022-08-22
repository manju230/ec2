resource "aws_eip" "eip" {
  instance = aws_instance.webapp.id
  vpc      = true
}