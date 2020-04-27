variable "vip_ip" {
  type        = string
  description = "the ip for the vip"
}

variable "pks_env" {
  type        = string
  description = "env name"
}

variable "cluster_name" {
  type        = string
  description = "cluster name"
}

variable "backend_service_config" {
  type        = map(string)
  description = "Describes port(key=port) and service type (key=servicetype) for the backend services"
}

variable "k8s_masters" {
  description = "The list of masters"
  type        = list(string)
}