# Write a hcl code to get IP address for the instance created in the compute.terraform {
output "jenkins_ip_address" {
  value = "${aws_instance.jenkins-instance.public_ip}"
}
  