access_key = "AKIAUQ7A24A4UCHDGM2A"
secret_key = "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"
ami             = "ami-0fe630eb857a6ec83"
instance_type   = "t2.micro"
instances_count = 1
key_name        = "linux"
region          = "us-east-1"
availability_zones = ["us-east-1a", "us-east-1b", "us-east-1c"]
vpc_security_group_ids = ["sg-0e3c7027a4d340be4"]
subnet_id       = "subnet-02c32361c453fbd9b"

tags = {
  Environment = "Production"
  Project     = "MyProject"
  Owner       = "Narsimha"
}
