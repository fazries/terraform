module "ec2_instance" {
	   source = "ec2_module/base"
	   #Str_instance_type = "${var.Str_instance_type}"
	   Str_instance_name = "${var.instance_name}"
           #Map_ami_id	     = "${var.Map_ami_id}"
	   Str_subnet_id     = "${var.subnet_id}"
           Str_num_instance = "${var.num_instance}"
	}
