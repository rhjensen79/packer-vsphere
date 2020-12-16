# Maintainer: code@rainpole.io
# Packer variables for CentOS Server 7.

##################################################################################
# VARIABLES
##################################################################################

# HTTP Endpoint for Kickstart

http_directory = "../../../configs/linux/centos-server"
http_file      = "ks-v7.cfg"

# Virtual Machine Settings

vm_guest_os_family          = "linux" 
vm_guest_os_vendor          = "centos"
vm_guest_os_member          = "server" 
vm_guest_os_version         = "7"
vm_guest_os_type            = "centos7_64Guest" 
vm_version                  = 15
vm_firmware                 = "bios"
vm_cdrom_type               = "sata"
vm_cpu_sockets              = 2
vm_cpu_cores                = 1
vm_mem_size                 = 8096
vm_disk_size                = 40960
vm_disk_controller_type     = ["pvscsi"]
vm_network_card             = "vmxnet3"
vm_boot_wait                = "2s"

# ISO Objects

iso_file     = "iso-linux-centos-server-7.iso"
iso_checksum = "b154432d3414243493244050469ae18e92f550dfd5fc7aa7e2e45afb455838e3b5a4c35a2c37a541a5d42f4e028196e7e3b3462abf22ef873557f3ca5d3fa68b"

# Scripts

shell_scripts = ["../../../scripts/linux/centos-server-cleanup.sh"]