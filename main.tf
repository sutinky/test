/*
resource "null_resource" "resourceHello" {
  count = 1
}
*/
/*
resource "random_uuid" "test" {
  count = 2
}
resource "random_password" "password" {
  count = var.pass_count
  length           = 16
  special          = true
  override_special = "!#$%&*()-_=+[]{}<>:?"
}
variable "pass_count"{
  type = string
  default = "5"
}
*/

terraform {
    required_providers {
        scalr = {
            source = "scalr/scalr"
            version= "1.0.4"
        }
    }
}

resource "scalr_workspace" "cli-driven" {
  count = 1
  name            = "ws-cli-from-provider"
  environment_id  = "env-svrcnchebt61e30"
}
/*
resource "scalr_variable" "example1" {
  key          = "name1"
  value        = "my_value_name11"
  category     = "terraform"
  description  = "variable description"
  workspace_id = "ws-v0oja79opa0p61m52"
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
