variable "resource_group" {
  type = string
  description = "The name of the resource group"
}

variable "location" {
  type = string
  description = "The name of the location"
  default = "eastus"
}
variable "vnet_name" {
  type = string
  description = "The name of the vnet name"
}

variable "sg_name" {
  type = string
  description = "The name of the sg"
}
variable "packer_resource_group_name" {
  type = string
  description = "The name of the packer_resource_group_name"

}
variable "packer_image_name" {
  type = string
  description = "The name of the Packer image"
  default = "test-rg"
}
variable "admin_password" {
  type = string
  description = "The name of the resource group"

}

