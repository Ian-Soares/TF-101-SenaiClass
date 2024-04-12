module "vpc1" {
    source = "./modules/network"
}

module "vpc2" {
  source = "./modules/network"
  vpc_cidr_block = "192.168.0.0/16"
  subnet_cidr_block = "192.168.1.0/24"
  tags = {
    Name = "vpc-prod"
    Environment = "prod"
  }
}

module "instance1" {
    source = "./modules/compute"
    ec2_subnet_id = module.vpc1.subnet_id
    tags = {
        Name = "fernas-machine"
        Environment = "dev"
    }
}