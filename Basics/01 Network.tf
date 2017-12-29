# VMware vCloud Director Network Variables (Blank)
variable "vcd_edge" {
    description = "vCD Tenant Edge Gateway"
}

# VMware vCloud Director Network Resource Definition
resource "vcd_network" "tf-net" {
  name         = "my-tf-net"
  edge_gateway = "${var.vcd_edge}"
  gateway      = "172.20.0.1"

  static_ip_pool {
    start_address = "172.20.0.100"
    end_address   = "172.20.0.200"
  }
}
