resource "proxmox_vm_qemu" "test_terra" {
    name = "test-terra-1"
    desc = "Ubuntu server"
    vmid = "1002"
    target_node = "pve"

    agent = 1

    clone = "ubuntu-2204-template"
    cores = 2
    sockets = 1
    cpu = "host"
    memory = 2048

    network{
        bridge = "vmbr1"
        model = "virtio"
    }
    disk {
        storage = "local-lvm"
        type = "virtio"
        size = "20G"
    }
  
}