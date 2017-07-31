resource "aws_security_group" "main_security_group" {
	name        = "${var.Str_secgroup_name}"
	description ="tf-sg-${var.Str_secgroup_name}"
	vpc_id      = "${var.Str_vpc_id}"
}

resource "aws_security_group_rule" "${var.Str_type}_${var.Str_protocol}_service" {
	security_group_id = "${aws_security_group.main_security_group.id}"
        from_port	  = "${var.Lst_from_port}"
	to_port		  = "${var.Lst_to_port}"
	protocol	  = "${var.Str_protocol}"
	cidr_blocks	  = "${var.Lst_cidr_blocks}"
	type		  = "${var.Str_type}"
	count		  = "${var.Str_num_of_secgroup}"
}
