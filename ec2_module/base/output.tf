// Output the ID of the instance created
   output "ec2_instance_id" {
    value = "${aws_instance.ec2_instance.id}"
}
