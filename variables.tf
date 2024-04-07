variable "access_key"{
 description="Access key"
 default = "AKIAUQ7A24A4"
}


variable "secret_key"{
 description="secret key"
 default = "c25saboisisyk6Hahig78t/Tvi"
}


variable "ami"{
 description="Amazon Machine Image value"
 default = "ami-0fe630eb857a6ec83"
}


variable "instance_type"{
   description="Amazon Instance Type"
   default = "t2.micro"
}

variable "instances_count"{
	description="Total No.of Instances"
	default = "1"
}

variable "key_name"{
	description="key name"
	default = "linux"
}
variable "region" {
  description = "The AWS region where resources will be provisioned"
  default     = "us-east-1"  # You can specify a default value
}

variable "availability_zones" {
  description = "A list of availability zones to distribute resources across"
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b", "us-east-1c"]
}


variable "vpc_security_group_ids" {
  description = "List of security group IDs"
  type        = set(string)
  default     = ["sg-0e3c7027a4d3404"]  # You can specify a default value
}


variable "subnet_id" {
  description = "subenet id"
  default     = "subnet-02c32361c3fbd9b" # You can specify a default value
}

variable "tags" {
  description = "A map of tags to apply to resources"
  type        = map(string)
  default     = {
    Environment = "Production"
    Project     = "MyProject"
    Owner       = "Narsimha"
  }
}
