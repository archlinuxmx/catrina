resource "vultr_reserved_ip" "catrina" {
  label   = "catrina"
  region  = "mex"
  ip_type = "v4"

  lifecycle {
    prevent_destroy = true
  }
}
