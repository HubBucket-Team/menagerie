provider "random" {
}

variable "pet_count" {
  default = "1"
}

resource "random_pet" "module_pets" {
  count = var.pet_count
}

output "module_output" {
  value = random_pet.module_pets.*.id
}

