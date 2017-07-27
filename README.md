# Our first AWS configuration for Terraform

An inintial configuration for Terraform

## Usage

```
$ terraform plan
$ terraform apply
```

## Using module EC2 
You can use this in your terraform template with the following steps.
  1. Adding a module resource to your template, e.g main.tf
  
	module "ec2_instance" {
	   source = "ec2_module/base"
	   instance_type = "${var.Str_instance_type}"
	   instance_name = "${var.Str_instance_name}"
           ami_id	 = "${var.Map_ami_id[0]}"
	   subnet_id     = "${var.Str_subnet_id}"
           number_of_instance = "${var.Str_num_instance}"
	}

  2. Setting values for the following variables, either through terraform.tfvars or -var argument on the CLI
        Str_secret_key
	Str_access_key
	Str_instance_type
	Str_instance_name 
	Str_num_instance
	Str_subnet_id
	Lst_security_group_ids_
	Map_tags

## Using module SecurityGroups
You can use this in your terraform template with the following steps.
  1. Adding a module resource to your template, e.g main.tf
  
	module "security_group" {
	   source = "security_group/base"

  2. Setting values for the following variables, either through terraform.tfvars or -var argument on the CLI
	Str_subnet_id

## License

MIT
