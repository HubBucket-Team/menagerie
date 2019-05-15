output "zoo" {
  value = module.zoo.module_output
}

output "pet" {
  value = random_pet.my_pet.*.id
}

