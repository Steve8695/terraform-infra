variable "packer_resource_group_name" {
  description = "Name of the resource group in which the Packer image will be created"
  default     = "packerGroup"
}

variable "packer_image_name" {
  description = "Name of the Packer image"
  default     = "myPackerImage"
}

variable "vm-name" {
  description = "VM name"
  type = string
}

variable "location" {
  description = "VM launch location"
  type = string
}

variable "resource_group" {
  description = "Name of the resource group in which the resources will be created"
  default     = "myResourceGroup"
}

variable "subnet" {
  description = "User name to use as the admin account on the VMs that will be part of the VM scale set"
  default     = "subnet1"
}

variable "size" {
  description = "VM Size"
  type = string
}

variable "admin_user" {
  description = "VM admin username"
  type = string
  default     = "azureuser"
}

variable "admin_password" {
  description = "VM admin password"
  type = string
}
