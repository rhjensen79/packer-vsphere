# Maintainer: code@rainpole.io

# Packer input variables for all builds.

##################################################################################
# VARIABLES
##################################################################################

# Credentials

vcenter_username = "administrator@vsphere.local"
vcenter_password = "VMware9!"
build_username   = "rainpole"
build_password   = "R@in!$aG00dThing."

# vSphere Objects

vcenter_insecure_connection     = true
vcenter_server                  = "cmpvc1.cmplab.dk"
vcenter_datacenter              = "cmp"
vcenter_cluster                 = "cmp"
vcenter_datastore               = "CMP"
vcenter_network                 = "VLAN100"
vcenter_folder                  = "Packer"
vcenter_content_library         = "CMP"

# ISO Objects

iso_datastore = "[CMP] " # The [SPACE] is required.
iso_path      = "ISO"