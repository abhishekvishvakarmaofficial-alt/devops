## Project Structure
```bash
terraform-project/
│
├── env/
│   └── dev/
│       ├── main.tf
│       ├── provider.tf
│       ├── variables.tf
│       └── terraform.tfvars
│
├── infra/
│   ├── vpc/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   └── outputs.tf
│   │
│   └── instance/
│       ├── main.tf
│       ├── variables.tf
│       └── outputs.tf
│
└── README.md
```

# Resource Creation Flow
```bash
main.tf
   │
   ├── module.vpc
   │      │
   │      ├── VPC
   │      ├── Subnet
   │      ├── Internet Gateway
   │      └── Route Table
   │
   └── module.instance
          │
          ├── Security Group
          └── EC2 Instance
```
# Deployment Steps
```bash
cd env/dev

terraform init

terraform validate

terraform plan

terraform apply --auto-approve
```

Why use Modules?
Reusability
Easy Maintenance
Standardization
Less Code Duplication
How module communicates with another module?

Using Outputs and Inputs   
```bash       
subnet_id = module.vpc.subnet_id
vpc_id    = module.vpc.vpc_id
```

This is a complete beginner-to-intermediate Terraform modular project that creates:

✅ VPC
✅ Public Subnet
✅ Internet Gateway
✅ Route Table
✅ Security Group
✅ EC2 Instance

using reusable Terraform modules.