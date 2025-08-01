module "ec2_instance" {
  source                 = "terraform-aws-modules/ec2-instance/aws"
  name                   = "${local.ec2_name}-vpn"
  ami                    = data.aws_ami.centos8.id
  instance_type          = "t3.small"
  vpc_security_group_ids = [data.aws_ssm_parameter.vpn_sg_id.value]
  subnet_id              = data.aws_subnet.selected.id
  user_data = file("openvpn.sh")

  tags = merge(
    var.comman_tags,
    {
      Component = "vpn"
    },

    {
      Name = "${local.ec2_name}-vpn"
    }
  )
}