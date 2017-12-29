# VMware vCloud Director Provider Variables (Blank)
variable "vcd_user" {
    description = "vCD Tenant User"
}
variable "vcd_pass" {
   description = "vCD Tenant Password"
}
variable "vcd_org" {
   description = "vCD Tenant Org"
}
variable "vcd_url" {
   description = "vCD Tenant URL"
}
variable "vcd_vdc" {
   description = "vCD Tenant VDC"
}

# Configure the VMware vCloud Director Provider
provider "vcd" {
  user                 = "${var.vcd_user}"
  password             = "${var.vcd_pass}"
  org                  = "${var.vcd_org}"
  url                  = "${var.vcd_url}"
  vdc                  = "${var.vcd_vdc}"
}