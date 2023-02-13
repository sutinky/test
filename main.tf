resource "null_resource" "resourceHello" {
  count = 2
  #provisioner "local-exeс" {
    #command = "echo Hello World!"
  #}
}

variable "false" {
  default = true
  sensitive = true
}
variable "boolean" {
  default = true
  sensitive = true
}

variable "number" {
  default = 12
  sensitive = true
}

variable "float" {
  default = 15.55
  sensitive = true
}

