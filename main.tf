resource "null_resource" "resourceHello" {
  count = 20000
  provisioner "local-exeс" {
    command = "echo Hello World!"
  }
}
