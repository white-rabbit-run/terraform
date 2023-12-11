resource "aws_internet_gateway" "vpc_gw" {
  vpc_id = aws_vpc.vpc.id

  tags = merge({ Name = "Internet Gateway" }, local.common_tags)
}
