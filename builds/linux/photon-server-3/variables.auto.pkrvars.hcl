# Maintainer: code@rainpole.io
# Packer variables for VMware Photon OS 3.0.

##################################################################################
# VARIABLES
##################################################################################

# HTTP Endpoint for Kickstart

http_directory = "../../../configs/linux/photon-server"
http_file      = "ks.json"

# Virtual Machine Settings

vm_guest_os_family          = "linux" 
vm_guest_os_vendor          = "photon"
vm_guest_os_member          = "server" 
vm_guest_os_version         = "3"
vm_guest_os_type            = "vmwarePhoton64Guest" 
vm_version                  = 15
vm_firmware                 = "bios"
vm_cpu_sockets              = 2
vm_cpu_cores                = 1
vm_mem_size                 = 8096
vm_disk_size                = 40960
vm_disk_controller_type     = ["pvscsi"]
vm_network_card             = "vmxnet3"
vm_boot_wait                = "2s"

# ISO Objects

iso_file     = "iso-linux-photon-server-3.iso"
iso_checksum = "93d0cde8da51f9208713d895b5b85b86980d2a72e710f55f0e65bc82c299dd9a7ebedc8f30d5f4d18c1a389c76a961e8a14b02416692204d31d77e1e4792f37d"

# Scripts

shell_scripts = ["../../../scripts/linux/photon-server-cleanup.sh"]