cmd_out2/include/linux/hdlc/.install := /bin/sh ../scripts/headers_install.sh ./out2/include/linux/hdlc ../include/uapi/linux/hdlc ioctl.h; /bin/sh ../scripts/headers_install.sh ./out2/include/linux/hdlc ../include/linux/hdlc ; /bin/sh ../scripts/headers_install.sh ./out2/include/linux/hdlc ./include/generated/uapi/linux/hdlc ; for F in ; do echo "$(pound)include <asm-generic/$$F>" > ./out2/include/linux/hdlc/$$F; done; touch out2/include/linux/hdlc/.install
