cmd_/home/llamashere/TWRP/device/lge/judyln/kernel-headers//include/linux/netfilter/ipset/.install := /bin/sh scripts/headers_install.sh /home/llamashere/TWRP/device/lge/judyln/kernel-headers//include/linux/netfilter/ipset ./include/uapi/linux/netfilter/ipset ip_set.h ip_set_bitmap.h ip_set_hash.h ip_set_list.h; /bin/sh scripts/headers_install.sh /home/llamashere/TWRP/device/lge/judyln/kernel-headers//include/linux/netfilter/ipset ./include/linux/netfilter/ipset ; /bin/sh scripts/headers_install.sh /home/llamashere/TWRP/device/lge/judyln/kernel-headers//include/linux/netfilter/ipset ./include/generated/uapi/linux/netfilter/ipset ; for F in ; do echo "$(pound)include <asm-generic/$$F>" > /home/llamashere/TWRP/device/lge/judyln/kernel-headers//include/linux/netfilter/ipset/$$F; done; touch /home/llamashere/TWRP/device/lge/judyln/kernel-headers//include/linux/netfilter/ipset/.install
