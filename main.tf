// 
resource "random_pet" "my_pet" {
  count  = "${var.pet_count}"
  prefix = "${length(var.prefix_list) != 0 ? element(concat(var.prefix_list, list("")), count.index) : var.default_prefix}"
}

module "zoo" {
  source    = "./modules/zoo"
  pet_count = "${var.pet_count}"
}

