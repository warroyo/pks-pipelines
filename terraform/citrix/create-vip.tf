provider "citrixadc" {
    insecure_skip_verify = true
}

resource "citrixadc_lbvserver" "master-lb" {
  name = "${var.pks_env}-${var.cluster_name}-masters-lb"
  ipv46 = var.vip_ip
  port = "8443"
  servicetype = "TCP"
  lbmethod = "ROUNDROBIN"
}


resource "citrixadc_servicegroup" "master-sg" {
  servicegroupname = "${var.pks_env}-${var.cluster_name}-masters-sg"
  lbvservers       = ["${citrixadc_lbvserver.master-lb.name}"]
  servicetype      = "TCP"
  clttimeout       = "${var.backend_service_config["clttimeout"]}"
  servicegroupmembers = formatlist(
    "%s:%s",
    var.k8s_masters,
    var.backend_service_config["backend_port"],
  )
}