# VMware vCloud Director Firewall  Ressource Definition
resource "vcd_firewall_rules" "fw" {
  edge_gateway   = "${var.vcd_edge}"
  default_action = "drop"

  rule {
    description      = "allow-http"
    policy           = "allow"
    protocol         = "tcp"
    destination_port = "80"
    destination_ip   = "any"
    source_port      = "any"
    source_ip        = "172.20.0.0/24"
  }

  rule {
    description      = "allow-https"
    policy           = "allow"
    protocol         = "tcp"
    destination_port = "443"
    destination_ip   = "any"
    source_port      = "any"
    source_ip        = "172.20.0.0/24"
  }

  rule {
    description      = "allow-ntp"
    policy           = "allow"
    protocol         = "udp"
    destination_port = "123"
    destination_ip   = "any"
    source_port      = "any"
    source_ip        = "${vcd_vapp_vm.tf-vapp-add-1.ip}"
  }
}