output "vpc_id" {
  value = aws_vpc.myvpc.id
}
output "pubsub1_id" {
  value = aws_subnet.first-public-subnet.id
}
output "pubsub2_id" {
  value = aws_subnet.second-public-subnet.id
}
output "prisub1_id" {
  value = aws_subnet.first-private-subnet.id
}
output "prisub2_id" {
  value = aws_subnet.second-private-subnet.id
}