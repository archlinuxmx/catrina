resource "vultr_instance" "catrina" {
  enable_ipv6       = true
  hostname          = var.hostname
  firewall_group_id = vultr_firewall_group.catrina.id
  label             = var.label
  os_id             = var.os_id
  plan              = var.plan
  region            = var.region
  reserved_ip_id    = vultr_reserved_ip.catrina.id
  tag               = var.tag

  provisioner "file" {
    source      = "../ansible"
    destination = "/tmp"

    connection {
      type     = "ssh"
      user     = "root"
      password = vultr_instance.catrina.default_password
      host     = self.main_ip
    }
  }

  provisioner "remote-exec" {
    inline = [
      "sed -i 's/^#ParallelDownloads = 5/ParallelDownloads = 15/' /etc/pacman.conf",
      "while fuser /var/lib/pacman/db.lck > /dev/null; do echo 'The package database is locked' && sleep 1; done",
      "pacman -Sy reflector --noconfirm",
      "reflector --country us,mx --latest 15 --protocol https --sort rate --save /etc/pacman.d/mirrorlist --verbose",
      "pacman -Su --noconfirm",
      "pacman -S ansible --noconfirm",
    ]

    connection {
      type     = "ssh"
      user     = "root"
      password = vultr_instance.catrina.default_password
      host     = self.main_ip
    }
  }
}
