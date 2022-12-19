resource "aws_instance" "app_server1" {
ami = "ami-0b0dcb5067f052a63"
instance_type = "t2.micro"
tags = {
  "Name" = "Harish_Tfstate_Cloud_Test"
}
}

resource "time_sleep" "small_pause" {
  create_duration = "60s"
}
