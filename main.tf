resource "null_resource" "resourceHello" {
  count = 10000
  #provisioner "local-exeс" {
    #command = "echo Hello World!"
  #}
}
