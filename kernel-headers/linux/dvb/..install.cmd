cmd_out2/include/linux/dvb/.install := /bin/sh ../scripts/headers_install.sh ./out2/include/linux/dvb ../include/uapi/linux/dvb audio.h ca.h dmx.h frontend.h net.h osd.h version.h video.h; /bin/sh ../scripts/headers_install.sh ./out2/include/linux/dvb ../include/linux/dvb ; /bin/sh ../scripts/headers_install.sh ./out2/include/linux/dvb ./include/generated/uapi/linux/dvb ; for F in ; do echo "$(pound)include <asm-generic/$$F>" > ./out2/include/linux/dvb/$$F; done; touch out2/include/linux/dvb/.install
