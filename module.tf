module "network" {
  source ="./network"
  cidr_block_vpc = var.cidr_block_vpc
}

# resource "aws_lb_target_group_attachment" "tg-att1" {
#   target_group_arn = module.load_blaancer2.aws_lb_target
#   for_each = tomap({ key1 = module.ec2_m1.aws_instance_ec2_pu_id , key2 =module.ec2_m2.aws_instance_ec2_pu_id})
#   target_id = each.key
#   port             = 80
# }
# resource "aws_lb_target_group_attachment" "tg-att2" {
#   target_group_arn = module.load_blaancer1.aws_lb_target
#   for_each = tomap({key3 = module.ec2_m1.aws_instance_ec2_pv_id , key4 = module.ec2_m2.aws_instance_ec2_pv_id})
#   target_id = each.key
#   port             = 80
# }