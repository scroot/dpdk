# Package

version       = "0.1.0"
author        = "Kean Sum Ooi"
description   = "Nim bindings to DPDK"
license       = "Apache"

# Dependencies

requires "nim >= 0.16.0"

skipDirs = @["logs"]

skipFiles = @["dpdk-16.07.2.tar.xz", "instC_DPDK.sh", "uninstC_DPDK.sh"]

##  pre uninstall hook to installl dpdk 16.07.2
#before install:
#  exec "./instC_DPDK.sh"
#  
## post uninstall hook uninstalll dpdk 16.07.2
#after uninstall:
#  exec "./uninstC_DPDK.sh"

task info, "Installs C DPDK library":
  echo "This installs the Nim bindings (wrapper Nim include files) to the C DPDK library.\n"
  echo "The C DPDK 16.07.2 library is also installed along with the Nim bindings"
  echo "Tested to work using nim 0.16.0"
  echo "Any bugs found, please email me: keansum <at> gmail <dot> com"
 

