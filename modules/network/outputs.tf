output "vpc_id" {
    value = aws_vpc.main.id
}

output "subnet_id" {
    value = aws_subnet.main.id
}

output "vpc_cidr_block" {
    value = aws_vpc.main.cidr_block
}