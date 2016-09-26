resource "aws_instance" "ec2_inst-gemv2-zip_ms" {
    ami = "ami-7abd0209"
	
    instance_type = "t2.micro"
	
	user_data = "${template_file.ec2-userdata.rendered}"
	
    tags {
        Name = "GEMv2.ZIP.ms"
    }
}