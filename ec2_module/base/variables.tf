variable "Str_access_key" {
   description = "The AWS access key."
}

variable "Str_secret_key" {
   description = "The AWS secret key."
}

variable "Lst_region" {
   description = "The AWS region."
   default     = [
                  "ap-southeast-1",
                  "ap-southeast-2"
                 ]
}

variable "Map_ami_id" {
   description = "The AMI to be use"
   default     = {
    		 ap-southeast-1 = "ami-5d72ff3e" //ubuntu
    		 ap-southeast-2 = "ami-24959b47" //centos
  }
}

variable "Str_instance_type" {
   description = "The AMI instance type"
   default     = "t2.micro"
}

varibale "Str_instance_name" {
   description = "The instance name"
}

varibale "Str_subnet_id" {
   description = "The subnet for the instance"
}

variable "Str_num_instance" {
   description = "Number of instances to make"
   default     = 1
}

variable "Lst_security_group_ids" {
   description = "List of security group IDs."
}

variable "Map_tags" {
   default = {
    created_by  = "terraform"
   }
}
