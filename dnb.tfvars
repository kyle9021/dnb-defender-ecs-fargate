//version = "0.0.3"
region            = "us-west-1"
app_name          = "dvwa-fargate"
az_count          = 1
vpc_id            = "vpc-0c53ed7a68bc45132" 
image_name        = "vulnerables/web-dvwa"
cpu_units         = 256
ram_units         = 512
task_group_family = "dnb-family"
cidr_bit_offset   = 248
container_port    = 80 
container_pc_defender_port    = 81 
https_enabled     = true
env_name          = "prisma" 
environment       = [
    {
      name: "NAME"
      value: "TEST"
    }
  ]
//cert_arn          = aws_acm_certificate.cert.arn
vpc_cidr = "10.0.0.0/24"

# Public subnet ids
public_subnet_ids = ["subnet-004088b860eca186d", "subnet-0609d6ad13f8558a6"]

#private subnet ids
private_subnet_ids = ["subnet-06ea96ac32893896e", "subnet-0c439fe7154242b3c"]

