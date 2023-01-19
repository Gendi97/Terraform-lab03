# # resource "aws_lb_target_group_attachment" "Private_attachment3" {
# #   target_group_arn = aws_lb_target_group.private_target.arn
# #   target_id        = aws_instance.public1.id
# #   port             = 80
# # }
# # resource "aws_lb_target_group_attachment" "Private_attachment4" {
# #   target_group_arn = aws_lb_target_group.private_target.arn
# #   target_id        = aws_instance.public2.id
# #   port             = 80
# # }

# # aws_lb.lp_private.dns_name
# resource "aws_lb" "lp_private" {
#   name               = "lp--private"
#   internal           = true
#   load_balancer_type = "application"
#   subnets            = [module.network.praivate_subnet1_id, module.network.praivate_subnet2_id]
#   security_groups    = [aws_security_group.alb_Public.id]
#   enable_deletion_protection = false
#   # tags = {
#   #   Name = "lp_private"
#   # }
# }

# resource "aws_lb_listener" "private_listener" {
#   load_balancer_arn = aws_lb.lp_private.arn
#   port              = "80"
#   protocol          = "HTTP"
#   default_action {
#     type             = "forward"
#     target_group_arn = aws_lb_target_group.private_target.arn             
#   }
# }
# # resource "aws_lb_target_group_attachment" "Private_attachment4" {
# #   target_group_arn = aws_lb_target_group.private_target.arn
# #   target_id        = aws_instance.public2.id
# #   port             = 80
# # }

# # aws_lb.lp_private.dns_name
# resource "aws_lb_target_group" "private_target" {
#   name     = "private--target"
#   port     = 80
#   protocol = "HTTP"
#   vpc_id   = module.network.vpc_main_id
# }

# resource "aws_lb_target_group_attachment" "Private_attachment1" {
#   target_group_arn = aws_lb_target_group.private_target.arn
#   target_id        = aws_instance.private1.id
#   port             = 80
# }

# resource "aws_lb_target_group_attachment" "Private_attachment2" {
#   target_group_arn = aws_lb_target_group.private_target.arn
#   target_id        = aws_instance.private2.id 
#   port             = 80
# }





# #  ----------------------------------------------
# # PUBLIC ALP  
# resource "aws_lb" "lp_public" {
#   name               = "lp--public"
#   internal           = false
#   load_balancer_type = "application"
#   subnets            = [module.network.public_subnet1_id, module.network.public_subnet2_id]
#   security_groups    = [aws_security_group.alb_Public.id]
#   enable_deletion_protection = false
#   # tags = {
#   #   Name = "lp_public"
#   # }
# }

# resource "aws_lb_listener" "public_listener" {
#   load_balancer_arn = aws_lb.lp_public.arn
#   port              = "80"
#   protocol          = "HTTP"
#   default_action {
#     type             = "forward"
#     target_group_arn = aws_lb_target_group.public_target.arn             
#   }
# }


# resource "aws_lb_target_group" "public_target" {
#   name     = "public--target"
#   port     = 80
#   protocol = "HTTP"
#   vpc_id   = module.network.vpc_main_id
# }

# resource "aws_lb_target_group_attachment" "Public_attachment1" {
#   target_group_arn = aws_lb_target_group.public_target.arn
#   target_id        = aws_instance.public1.id
#   port             = 80
# }
# # resource "aws_lb_target_group_attachment" "Public_attachment2" {
# #   target_group_arn = aws_lb_target_group.public_target.arn
# #   target_id        = aws_instance.public2.id
# #   port             = 80
# # }