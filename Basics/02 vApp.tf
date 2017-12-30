# VMware vCloud Director vApp Variables (Blank)
variable "vcd_catalog" {
    description = "vCD Catalog Name"
}

# VMware vCloud Director vApp Ressource Definition
resource "vcd_vapp" "tf-vapp" {
  name          = "tf-vapp"
  catalog_name  = "${var.vcd_catalog}"
  template_name = "Ubuntu 16.04 LTS"
  memory        = 2048
  cpus          = 2

  network_name = "${vcd_network.tf-net.name}"

}
