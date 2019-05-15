// 
resource "random_pet" "my_pet" {
  count  = var.pet_count
  prefix = length(var.prefix_list) != 0 ? element(var.prefix_list, count.index) : var.default_prefix
}

module "zoo" {
  source    = "./modules/zoo"
  pet_count = var.pet_count
}

