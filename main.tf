resource "null_resource" "resourceHello" {
  count = 3000
  provisioner "local-exec" {
    command = "echo $ENV"
    environment = {
      ENV = "Hello World!"
    }
  }
}
