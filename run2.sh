export MPI_HOME=/usr/local/mpi
export CUDA_HOME=/usr/local/cuda
export PYTHONPATH=/workspace/liuda/fault/DeepEP:$PYTHONPATH
export NVSHMEM_HOME=/workspace/liuda/output/nvshmem
export LD_LIBRARY_PATH="${NVSHMEM_HOME}/lib:$CUDA_HOME/lib64:$MPI_HOME/lib:$LD_LIBRARY_PATH"
export NVSHMEM_IBGDA_ENABLE_FAULT_TOLERANCE=1
export NVSHMEM_IBGDA_ENABLE_MULTI_PORT=1
export CUDA_LAUNCH_BLOCKING=1
MASTER_ADDR=10.1.3.201 MASTER_PORT=29501 WORLD_SIZE=2 RANK=1 \
python /workspace/liuda/fault/DeepEP/tests/test_low_latency.py --skip-combine --pressure-test 2>&1 | tee /workspace/liuda/fault/DeepEP/internode_test_node2.log
# python /workspace/liuda/fault/DeepEP/tests/test_internode.py --skip-combine 2>&1 | tee /workspace/liuda/fault/DeepEP/internode_test_node2.log
# export NVSHMEM_DEBUG=INFO