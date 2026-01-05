resource "aws_vpc" "expense" {
  cidr_block = var.vpc_cidr
  enable_dns_hostnames = var.enable_dns_hostnames
  instance_tenancy = "default"


  tags = merge(
    var.common_tags,
   {
    Name = local.resource_name
   }
  )
}