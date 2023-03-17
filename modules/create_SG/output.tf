output "sg_id" {
  value = aws_security_group.allow_tls.id
}

output "sequrity_group_name" {
  value = var.sg_name
}