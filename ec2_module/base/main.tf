provider "aws"{
   access_key = "${var.Str_access_key}"
   secret_key = "${var.Str_secret_key}"
   region     = "${var.Lst_region[0]}"
}

resource "aws_instance" "ec2_instance" {
   ami           = "${lookup(var.Map_ami_id, var.Lst_region[0])}"
     /*
       Perform lookup into ami_id based on the key of Lst_region[0] 
     */
   instance_type = "${var.Str_instance_type}"
   count         = "${var.Str_num_instance}"
   subnet_id     = "${var.Str_subnet_id}"
   vpc_security_group_ids = ["${var.Lst_security_group_ids}"]
     /*
       Get the list of security group ids
     */
   tags {
      created_by = "${lookup(var.Map_tags,"created_by")}"  
      /*
        Take the instance_name input variable and add
        the count index to the name., e.g.
        "test-host-web-1"
      */
      Name       = "${var.Str_instance_name}-${count.index}" 
  }
}
