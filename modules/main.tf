module "s3-mod" {
  source = "../s3"
  bucketName = "priyam-bucket2"
  acl-value =  "private"
}

module "ec2-mod" {
  source = "../ec2"
  instance_type =  "t2.micro"
  instanceName = "priyam-instance2"
}