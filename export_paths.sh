#!/bin/bash

# Define the path to your custom rdma-core build
SCENIC_LIB_PATH="/home/hmaximili/cyt_rdma_driver/sw/rdma-core/build/lib"

# Export the paths so ib_write_bw finds your custom user-space provider
export LD_LIBRARY_PATH="${SCENIC_LIB_PATH}:${LD_LIBRARY_PATH}"
export RDMA_PROVIDER_PATH="${SCENIC_LIB_PATH}"

echo "✅ SCENIC RDMA environment variables exported!"
echo "   LD_LIBRARY_PATH    = $LD_LIBRARY_PATH"
echo "   RDMA_PROVIDER_PATH = $RDMA_PROVIDER_PATH"