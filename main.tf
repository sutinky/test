resource "null_resource" "resourceHello" {
  count = 1
  #provisioner "local-exeс" {
    #command = "echo Hello World!"
  #}
}

output "instance_ip_addr" {
  value = 'lorem'
}
