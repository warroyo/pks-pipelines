variable "vip_ip" {
  type        = string
  description = "the ip for the vip"
}

variable "cluster_name" {
  type        = string
  description = "cluster name"
}


variable "dns_zone" {
  type        = string
  description = "dns zone name"
}

variable "tenant_id" {
  type        = string
  description = "tenant id"
}


variable "cidr" {
  type        = string
  description = "cidr"
}
