ec2_name_1 = "node_1"
ec2_name_2 = "node_2"
ec2_name_3 = "MariaDB"

sg_name = "kay_sg"
RDS_PASSWORD ="kay_rds"
username = "kitskat"

ec2_ami = "ami-04f7efe62f419d9f5"
ec2_instance_type = "t2.micro"
aws_region = "eu-west-1"
ec2_key_name   = "Kitskat2023"
env="sit"

dev_default_tags_1 = {
  "Name"  = "Finance Department SIT"
  "owner" = "Mr Jones"
  "status" = "critical"
  "created_by" = "HR Team"
  "weekendshutdown" = "confirmed"
  "Created Date"      = "28/07/2023"
}

dev_default_tags_2 = {
  "Name"  = "Marketing Department SIT"
  "owner" = "Mr James"
  "status" = "Non-critical"
  "created_by" = "ADMIN Team"
  "weekendshutdown" = "Waiting confirmation"
  "Created Date"      = "28/07/2023"
}

sit_default_tags = {
  "Name"  = "Legal Department SIT"
  "owner" = "Mr Jimmy"
  "status" = "Non-critical"
  "created_by" = "IT Team"
  "weekendshutdown" = "Waiting confirmation"
  "Created Date"      = "28/07/2023"
}
