module "create_sg" {
    source = "./modules/create_SG"
    sg_name = var.root_sg_name
}

module "create_pem" {
    source = "./modules/create_pem_key"
    key_name = var.root_key_name
    key_path = var.root_key_path
}

module "create_ec2_2" {
    source = "./modules/create_EC2"
    ami_id = var.root_ami_id
    instance_type = var.root_instance_type
    ec2_pemkey = module.create_pem.key_pair_name
    security_groups_name = module.create_sg.sequrity_group_name
    tag_name = var.root_tag_name
}