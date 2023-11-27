output "instance_ids" {
  value = values(aws_instance.Instance)[*].id
}