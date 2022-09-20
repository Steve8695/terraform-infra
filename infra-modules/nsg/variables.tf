variable "sg_name" {
  type = string
  description = "The name of the sg name"
  default = "target-sg"
}

variable "resource_group" {
  type = string
  description = "The name of the resource group"
  default = "test-rg"
}

variable "location" {
  default = "eastus"
}
