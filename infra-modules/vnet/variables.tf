variable "vnet" {
  type = string
  description = "The name of the vnet"
  default = "test-rg"
}

variable "vnet_address_space" {
  default = ["10.0.0.0/16"]
}


variable "location" {
  default = "eastus"
}

variable "subnet_name" {
  default = "Subnet-1"
}
variable "subnet_prefix" {
  default = ["10.0.1.0/24"]
}

variable "resource_group" {
  type = string
  description = "The name of the rg"
}
