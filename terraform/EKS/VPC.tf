module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "my-vpc"
  cidr = "15.0.0.0/16"

  azs             = ["us-east-1a", "us-east-1b"]
  private_subnets = ["15.0.1.0/24", "15.0.2.0/24", "15.0.3.0/24"]
  public_subnets  = ["15.0.101.0/24", "15.0.102.0/24", "15.0.103.0/24"]

  #enable_nat_gateway = false
  #enable_vpn_gateway = true

  tags = {
    Terraform = "true"
    Environment = "dev"
  }
}