terraform {
  required_version = ">=0.13.0"

  required_providers {
    proxmox = {
        source = "telmate/proxmox"
        version = "2.9.11"
    }
  }
}

variable "proxmox_api_url" {
    type = string
}

variable "proxmox_api_token_id" {
    type = string
    sensitive = true
}

variable "proxmox_api_token_secret" {
    type = string
    sensitive = true
}

provider "proxmox" {
  
}