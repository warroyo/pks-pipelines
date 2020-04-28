
provider "infoblox"{
    INFOBLOX_USERNAME = var.infoblox_user
    INFOBLOX_SERVER = var.infoblox_server
    INFOBLOX_PASSWORD = var.infoblox_password
}
resource "infoblox_a_record" "master_dns"{
  ip_addr= var.vip_ip
  network_view_name="${var.pks_env}-${var.cluster_name}-masters"
  zone= var.dns_zone
}