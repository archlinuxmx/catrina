##########################
# project wide variables #
##########################
variable "vultr_api_key" {
  type      = string
  sensitive = true
}

######################
# instance variables #
######################
variable "hostname" {
  default = "catrina"
  type    = string
}

variable "label" {
  default = "catrina"
  type    = string
}

variable "os_id" {
  default = "535"
  type    = string
}

variable "plan" {
  default = "vhf-3c-8gb"
  type    = string
}

variable "region" {
  default = "mex"
  type    = string
}

variable "tag" {
  default = "archlinuxmx"
  type    = string
}

############
# firewall #
############
variable "irc_port" {
  default = "6697"
  type    = string
}

variable "tor_port" {
  default = "9001"
  type    = string
}

variable "ssh_port" {
  type = string
}

variable "znc_port" {
  type = string
}
