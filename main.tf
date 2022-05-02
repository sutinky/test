resource "null_resource" "resourceHello" {
  count = 1500
  provisioner "local-exec" {
    command = "echo $ENV"
    environment = {
      ENV = "Hello World!"
    }
  }
}
