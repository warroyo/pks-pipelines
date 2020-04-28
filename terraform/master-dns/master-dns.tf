
provider "infoblox"{
}
resource "infoblox_a_record" "master_dns"{
  ip_addr= var.vip_ip
  network_view_name="${var.pks_env}-${var.cluster_name}-masters"
  zone= var.dns_zone
}