cmd_out2/include/scsi/.install := /bin/sh ../scripts/headers_install.sh ./out2/include/scsi ../include/uapi/scsi cxlflash_ioctl.h scsi_bsg_fc.h scsi_ioctl.h scsi_netlink.h scsi_netlink_fc.h sg.h; /bin/sh ../scripts/headers_install.sh ./out2/include/scsi ../include/scsi ; /bin/sh ../scripts/headers_install.sh ./out2/include/scsi ./include/generated/uapi/scsi ; for F in ; do echo "$(pound)include <asm-generic/$$F>" > ./out2/include/scsi/$$F; done; touch out2/include/scsi/.install
