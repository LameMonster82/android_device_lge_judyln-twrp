cmd_out2/include/rdma/.install := /bin/sh ../scripts/headers_install.sh ./out2/include/rdma ../include/uapi/rdma cxgb3-abi.h cxgb4-abi.h ib_user_cm.h ib_user_mad.h ib_user_sa.h ib_user_verbs.h mlx4-abi.h mlx5-abi.h mthca-abi.h nes-abi.h ocrdma-abi.h rdma_netlink.h rdma_user_cm.h rdma_user_rxe.h; /bin/sh ../scripts/headers_install.sh ./out2/include/rdma ../include/rdma ; /bin/sh ../scripts/headers_install.sh ./out2/include/rdma ./include/generated/uapi/rdma ; for F in ; do echo "$(pound)include <asm-generic/$$F>" > ./out2/include/rdma/$$F; done; touch out2/include/rdma/.install
