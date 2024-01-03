resource "null_resource" "resourceHello" {
  count = 8000
  #provisioner "local-exeс" {
    #command = "echo Hello World!"
  #}
}

output "instance_ip_addr" {
  value = "lorem"
}
