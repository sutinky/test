resource "null_resource" "resourceHello" {
  count = 30000
  provisioner "local-exec" {
    command = "echo $ENV"
    environment = {
      ENV = "Hello World!"
    }
  }
}
