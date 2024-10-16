module "infra" {
  source = "./module/infra"

  for_each      = var.components
  instance_type = each.value["instance_type"]
  name          = each.value["name"]
  sg            = var.sg
  zone_id       = var.zone_id
}
