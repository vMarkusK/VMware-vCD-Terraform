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

resource "vcd_vapp_vm" "tf-vapp-add-1" {
  vapp_name     = "${vcd_vapp.tf-vapp.name}"
  name          = "tf-vapp-add-1"
  catalog_name  = "${var.vcd_catalog}"
  template_name = "Ubuntu 16.04 LTS"
  memory        = 2048
  cpus          = 1

  ip           = "172.20.0.100"
}

resource "vcd_vapp_vm" "tf-vapp-add-2" {
  vapp_name     = "${vcd_vapp.tf-vapp.name}"
  name          = "tf-vapp-add-2"
  catalog_name  = "${var.vcd_catalog}"
  template_name = "Ubuntu 16.04 LTS"
  memory        = 2048
  cpus          = 1

  ip           = "172.20.0.101"
}

resource "vcd_vapp" "tf-vapp-neu" {
  name          = "tf-vapp-neu"
  network_name = "${vcd_network.tf-net.name}"

}

resource "vcd_vapp_vm" "tf-vapp-neu-add-1" {
  vapp_name     = "${vcd_vapp.tf-vapp-neu.name}"
  name          = "tf-vapp-neu-add-1"
  catalog_name  = "${var.vcd_catalog}"
  template_name = "Ubuntu 16.04 LTS"
  memory        = 2048
  cpus          = 1

  network_name = "${vcd_network.tf-net.name}"
  ip           = "172.20.0.110"
}