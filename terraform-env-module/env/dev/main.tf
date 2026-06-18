module "vpc" {
  source = "../../infra/vpc"

  vpc_name           = "dev-vpc"
  vpc_cidr           = "10.0.0.0/16"
  public_subnet_cidr = "10.0.1.0/24"
}

module "instance" {
  source = "../../infra/instance"

  ami_id        = var.ami_id
  instance_type = var.instance_type

  subnet_id = module.vpc.subnet_id
  vpc_id    = module.vpc.vpc_id
}
