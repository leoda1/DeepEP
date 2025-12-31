export LD_LIBRARY_PATH=/usr/lib/x86_64-linux-gnu/nvshmem/12:$LD_LIBRARY_PATH
MASTER_ADDR=10.1.3.201 MASTER_PORT=29501 WORLD_SIZE=2 RANK=0 \
python /workspace/liuda/fault/DeepEP/tests/test_low_latency.py --pressure-test 2>&1 | tee /workspace/liuda/fault/DeepEP/internode_test_node1.log
# nsys profile -t cuda,nvtx,oshmem -o test_run1 --duration 60 python /workspace/liuda/fault/DeepEP/tests/test_low_latency.py --pressure-test  2>&1 | tee /workspace/liuda/fault/DeepEP/internode_test_node1.log
# export CUDA_VISIBLE_DEVICES=0
# export LIB_LIBRARY_PATH=/workspace/liuda/iw/VCCL/build/lib:$LIB_LIBRARY_PATH
# export NVSHMEM_DEBUG=INFO
# export CUDA_VISIBLE_DEVICES=0
# python /workspace/liuda/fault/DeepEP/tests/test_internode.py --skip-combine 2>&1 | tee /workspace/liuda/fault/DeepEP/internode_test_node1.log
# export CUDA_LAUNCH_BLOCKING=1