
provider "infoblox"{
}
resource "infoblox_a_record" "master_dns"{
  ip_addr = var.vip_ip
  vm_name = var.cluster_name
  zone= var.dns_zone
  tenant_id = var.tenant_id
  cidr = var.cidr
}