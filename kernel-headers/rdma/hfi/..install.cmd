cmd_out2/include/rdma/hfi/.install := /bin/sh ../scripts/headers_install.sh ./out2/include/rdma/hfi ../include/uapi/rdma/hfi hfi1_user.h; /bin/sh ../scripts/headers_install.sh ./out2/include/rdma/hfi ../include/rdma/hfi ; /bin/sh ../scripts/headers_install.sh ./out2/include/rdma/hfi ./include/generated/uapi/rdma/hfi ; for F in ; do echo "$(pound)include <asm-generic/$$F>" > ./out2/include/rdma/hfi/$$F; done; touch out2/include/rdma/hfi/.install
