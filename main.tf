resource "null_resource14234" "resource3" {
  count = 10
  provisioner "local-exec" {
    command = "echo $ENV"
    environment = {
      ENV = "Hello World!"
    }
  }
 
  triggers = {
    test = format("example+%s", timestamp())

