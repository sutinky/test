output "instance_ip_addr6" {
  value = "./test_file_7_special_!@#$%^&*()_+={}|[]\\:\";'<>?,./.txt"
}
output "instance_ip_addr5" {
  value = "\\ P This is test file number with 2special characters TEST TEAM || motor-car |SEPARATE MODULE| \\ P"
}

output "single" {
  value = "lorem4wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww"
}
output "with_newline" {
  value = "lorem1 \n ipsum2  \n ipsum33 \n ipsum4 \n ${null_resource.resourceHello.id}"
}
output "multi" {
  value = <<-EOT
    This is test file number 1 with special characters !@#$%^&*()_+={}|[]\\:\";'<>?,./

    Here is a snippet of Excel VBA code:
    Sub ExampleMacro()11
        Dim ws As Worksheet
        Set ws = ThisWorkbook.Sheets("Sheet1")
        ws.Range("A1").Value = "Hello, World!"
    End Sub

    End of the content for test file number 1.
    EOT
}

output "instance_ip_addr4" {
  value = "\\ P This is test file number with 1special characters TEST TEAM || motor-car |SEPARATE MODULE| \\ P"
  sensitive = true
}
resource "null_resource" "resourceHello" {
  count = 1
}



terraform {
    required_providers {
        scalr = {
            source = "scalr/scalr"
            version= "1.0.4"
        }
    }
}
resource "scalr_variable" "example1" {
  key          = "name1"
  value        = "my_value_name11"
  category     = "terraform"
  description  = "variable description"
  workspace_id = "ws-v0ogs50gsham9q8ch"
}
resource "scalr_variable" "example2" {
  key          = "name2"
  value        = "my_value_name"
  category     = "terraform"
  description  = "variable description"
  workspace_id = "ws-v0ogs50gsham9q8ch"
}
resource "scalr_variable" "example3" {
  key          = "name3"
  value        = "my_value_name"
  category     = "terraform"
  description  = "variable description"
  workspace_id = "ws-v0ogs50gsham9q8ch"
}
resource "scalr_variable" "example4" {
  key          = "name4"
  value        = "my_value_name"
  category     = "terraform"
  description  = "variable description"
  workspace_id = "ws-v0ogs50gsham9q8ch"
}
resource "scalr_variable" "example5" {
  key          = "name5"
  value        = "my_value_name"
  category     = "terraform"
  description  = "variable description"
  workspace_id = "ws-v0ogs50gsham9q8ch"
}
resource "scalr_variable" "example6" {
  key          = "name6"
  value        = "my_value_name"
  category     = "terraform"
  description  = "variable description"
  workspace_id = "ws-v0ogs50gsham9q8ch"
}
resource "scalr_variable" "example7" {
  key          = "name7"
  value        = "my_value_name"
  category     = "terraform"
  description  = "variable description"
  workspace_id = "ws-v0ogs50gsham9q8ch"
}
resource "scalr_variable" "example8" {
  key          = "name8"
  value        = "my_value_name"
  category     = "terraform"
  description  = "variable description"
  workspace_id = "ws-v0ogs50gsham9q8ch"
}
/*
provider "local" {}
resource "local_file" "test_file_5" {
  #count = 8
  filename = "${path.module}/test_file_${count.index}_special_!@#$%^&*()_+={}|[]\\:\";'<>?,./.txt"
  content  = "This is test file number ${count.index} with special characters TEST TEAM || motor-car |SEPARATE MODULE|" 

  #filename = "${path.module}/test_file__special_!@#$%^&*()_+={}|[]\\:\";'<>?,./.txt"
  #content  = "This is test file number  with special characters TEST TEAM || motor-car |SEPARATE MODULE|"
}

resource "local_file" "test_file" {
  count = 1000
  filename = "${path.module}/test_file_${count.index}.txt"
  content  = "This is test file number ${count.index}"
}



resource "local_file" "test_file2" {
  count = 10
  filename = "${path.module}/test_file_${count.index}_special_!@#$%^&*()_+={}|[]\\:\";'<>?,./.txt"
  content  = "This is test file number ${count.index} with special characters !@#$%^&*()_+={}|[]\\:\";'<>?,./"
}

resource "local_file" "test_file3" {
  count = 5
  filename = "${path.module}/test_file_${count.index}_special_!@#$%^&*()_+={}|[]\\:\";'<>?,./.txt"
  content  = <<-EOT
    This is test file number ${count.index} with special characters !@#$%^&*()_+={}|[]\\:\";'<>?,./

    Here is a snippet of Excel VBA code:
    Sub ExampleMacro()
        Dim ws As Worksheet
        Set ws = ThisWorkbook.Sheets("Sheet1")
        ws.Range("A1").Value = "Hello, World!"
    End Sub

    End of the content for test file number ${count.index}.
    EOT
}

resource "local_file" "test_file4" {
  count = 2
  filename = "${path.module}/test_file_${count.index}.txt"
  content  = element([
    "Normal content",
    "<script>alert('XSS');</script>",
    "SELECT * FROM users WHERE username = 'admin' --",
    "' OR '1'='1",
    "<img src='x' onerror='alert(1)'>",
    "<svg onload=alert(1)>",
    "1; DROP TABLE users",
    "eval('alert(\"XSS\")')",
    "\"/><script>alert(1)</script>",
    "<!--[if gte IE 4]><script>alert('XSS')</script><![endif]-->",
    "OR 1=1"
  ], count.index)
}

resource "local_file" "test_file_long_2000_chars" {
  filename = "${path.module}/test_file_long.txt"
  content  = <<-EOT
    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
  EOT
}

resource "local_file" "test_file_long_1000_chars" {
  filename = "${path.module}/test_file_long.txt"
  content  = <<-EOT
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
  EOT
}

resource "local_file" "test_file_long_1000_chars2" {
  filename = "${path.module}/test_file_long.txt"
  content  = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum"
}

resource "local_file" "test_file_with_block" {
  filename = "${path.module}/test_file_with_block.txt"
  content  = <<-EOT
    Web:
          URL                   : https://alfiia-immortal.testenv.scalr.dev
  EOT
}*/
/*
resource "null_resource" "resourceHello" {
  count = 7
}

terraform {
    required_providers {
        scalr = {
            source = "scalr/scalr"
            version= "1.0.4"
        }
    }
}
resource "scalr_variable" "example1" {
  key          = "name3"
  value        = "my_value_name"
  category     = "terraform"
  description  = "variable description"
  workspace_id = "ws-v0oevrtaii578fssc"
}
*/

/*
resource "scalr_variable" "magic_animals_list" {
  key          = "magic_animals_list"
  value        = jsonencode(["unicorn", "dragon", "phoenix", "griffin", "thestral", "dog"])
  category     = "terraform"
  description  = "variable description"
  workspace_id = "ws-v0od3j4dts3fmfvik"
  hcl          = true
}

resource "scalr_variable" "array_in_object_in_array" {
  key          = "array_in_object_in_array"
  value        = jsonencode([{name = ["unicorn", "dragon"]}])
  category     = "terraform"
  description  = "variable description"
  workspace_id = "ws-v0od3j4dts3fmfvik"
  hcl          = true
}
*/
/*
#In this example, the magic_animals_list variable is defined as a list of strings representing magic animals. The resulting list will be ["unicorn", "dragon", "phoenix", "griffin"].
variable "magic_animals_list" {
  type    = list(string)
  default = ["unicorn", "dragon", "phoenix", "griffin", "thestral", "dog"]
}
#In this example, the magic_animals variable is a list of objects. Each object represents a magic animal and contains attributes such as name, power, element, and description. The default value provides a list of four magic animals with their respective attributes.
variable "magic_animals" {
  type = list(object({
    name       = string
    power      = string
    element    = string
    description = string
  }))
  default = [
    {
      name        = "unicorn"
      power       = "sparkle"
      element     = "light"
      description = "A mystical creature with a single horn on its forehead."
    },
    {
      name        = "dragon"
      power       = "fire"
      element     = "fire"
      description = "A powerful creature with the ability to breathe fire."
    },
    {
      name        = "phoenix"
      power       = "rebirth"
      element     = "fire"
      description = "A legendary bird that is reborn from its own ashes."
    },
    {
      name        = "griffin"
      power       = "majesty"
      element     = "air"
      description = "A majestic creature with the body of a lion and the head of an eagle."
    }
  ]
}

resource "null_resource" "string" {
  provisioner "local-exec" {
    command = "echo ${var.string}"
  }
}

resource "null_resource" "string_eot" {
  provisioner "local-exec" {
    command = "echo ${var.string_eot}"
  }
}

resource "null_resource" "string_eot2" {
  provisioner "local-exec" {
    command = "echo ${var.string_eot2}"
  }
}

#In this example, the magic_animals_set variable is defined as a set of strings representing magic animals. The resulting set will be ["unicorn", "dragon", "phoenix", "griffin"]
variable "magic_animals_set" {
  type    = set(string)
  default = ["unicorn", "dragon", "phoenix", "griffin", "black cat"]
}
#In this example, the magic_animals_map variable is defined as a map of strings representing magic animals and their associated qualities. The resulting map will be { "unicorn" = "sparkle", "dragon" = "fire", "phoenix" = "rebirth", "griffin" = "majesty" }.
variable "magic_animals_map" {
  type    = map(string)
  default = {
    unicorn  = "none"
    dragon   = "sleep"
    phoenix  = "eat"
    griffin  = "none"
  }
}
#In this example, the magic_animal_object variable is defined as an object with three attributes: name, element, and power. The resulting object will be { "name" = "Mermaid", "element" = "Water", "power" = "Enchanting Voice" }.
variable "magic_animal_object" {
  type = object({
    name    = string
    element = string
    power   = string
  })
  default = {
    name    = "MODULE VERSION Small Mermaid"
    element = "Water"
    power   = "Enchanting Voice"
  }
}
#In this example, the magic_animal_tuple variable is defined as a tuple that contains three magical animal attributes: name, element, and power. The resulting tuple will be ["Centaur", "Earth", "Archery"].
variable "magic_animal_tuple" {
  type    = tuple([string, string, string])
  default = ["Usual Centaur", "Big Earth", "Non-Archery-Dry-check-on-222staging"]
}

variable "list_untyped" {
  default = ["a", 15, true]
}

variable "boolean" {
  type = bool
  default = false
}

variable "true" {
  default = "true"
}
variable "string" {
  default = "test"
  description  = <<-EOT
                        request.method.lower() == 'get'
                        && request.path.matches('^.+\\.(?:css
|html|ico|js|json|png|svg|ttf|woff|woff2|yaml|yml)$')
                        || request.path.startsWith('/.well-kn
own/')
                    EOT
}

variable "string_eot" {
  default = <<-EOT
                        {request.method.lower() == 'get'
                        && request.path.matches('^.+\\.(?:css
|html|ico|js|json|png|svg|ttf|woff|woff2|yaml|yml)$')
                        || request.path.startsWith('/.well-kn
own/')
                    EOT
}

variable "string_eot2" {
  default = <<EOT
                        ]request.method.lower() == 'get'
                        && request.path.matches('^.+\\.(?:css
|html|ico|js|json|png|svg|ttf|woff|woff2|yaml|yml)$')
                        || request.path.startsWith('/.well-kn
own/')
                    EOT
}

variable "undefined" {
  default = "undefined"
}

variable "null" {
  default = "null"
}

variable "nullable" {
  default = null
}
variable "number" {
  type = number
  sensitive = true
  default = 123
}

variable "Infinity" {
  default = "Infinity"
}

variable "object_in_array" {
  default = [
    {
      name = "unicorn"
    }
  ]
}

variable "array_in_object" {
  default = {
      name = "unicorn2"
      power = ["unicorn", "dragon"]
    }
}

variable "array_in_array" {
  default = [
    ["unicorn", "dragon"],
  ]
}

variable "object_in_object" {
  default = {
    name = "unicorn3"
    power = {
        name = "magic"
    }
  }
}

variable "truth" {
  default = "true"
  sensitive = true
}

variable "array_in_object_in_array" {
  default = [
    {
      name = ["unicorn", "dragon"]
    }
  ]
}


output "instance_ip_addr" {
  value = "lorem"
}
*/
