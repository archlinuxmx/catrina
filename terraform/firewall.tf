resource "vultr_firewall_group" "catrina" {
  description = "catrina's firewall"
}

resource "vultr_firewall_rule" "irc_port_ipv4" {
  firewall_group_id = vultr_firewall_group.catrina.id
  protocol          = "tcp"
  ip_type           = "v4"
  subnet            = "0.0.0.0"
  subnet_size       = 0
  port              = var.irc_port
}

resource "vultr_firewall_rule" "irc_port_ipv6" {
  firewall_group_id = vultr_firewall_group.catrina.id
  protocol          = "tcp"
  ip_type           = "v6"
  subnet            = "::"
  subnet_size       = 0
  port              = var.irc_port
}

resource "vultr_firewall_rule" "ssh_port_ipv4" {
  firewall_group_id = vultr_firewall_group.catrina.id
  protocol          = "tcp"
  ip_type           = "v4"
  subnet            = "0.0.0.0"
  subnet_size       = 0
  port              = var.ssh_port
}

resource "vultr_firewall_rule" "ssh_port_ipv6" {
  firewall_group_id = vultr_firewall_group.catrina.id
  protocol          = "tcp"
  ip_type           = "v6"
  subnet            = "::"
  subnet_size       = 0
  port              = var.ssh_port
}

resource "vultr_firewall_rule" "tor_port_ipv4" {
  firewall_group_id = vultr_firewall_group.catrina.id
  protocol          = "tcp"
  ip_type           = "v4"
  subnet            = "0.0.0.0"
  subnet_size       = 0
  port              = var.tor_port
}

resource "vultr_firewall_rule" "tor_port_ipv6" {
  firewall_group_id = vultr_firewall_group.catrina.id
  protocol          = "tcp"
  ip_type           = "v6"
  subnet            = "::"
  subnet_size       = 0
  port              = var.tor_port
}

resource "vultr_firewall_rule" "znc_port_ipv4" {
  firewall_group_id = vultr_firewall_group.catrina.id
  protocol          = "tcp"
  ip_type           = "v4"
  subnet            = "0.0.0.0"
  subnet_size       = 0
  port              = var.znc_port
}

resource "vultr_firewall_rule" "znc_port_ipv6" {
  firewall_group_id = vultr_firewall_group.catrina.id
  protocol          = "tcp"
  ip_type           = "v6"
  subnet            = "::"
  subnet_size       = 0
  port              = var.znc_port
}
