export LD_LIBRARY_PATH=/usr/lib/x86_64-linux-gnu/nvshmem/12:$LD_LIBRARY_PATH
MASTER_ADDR=10.1.3.201 MASTER_PORT=29501 WORLD_SIZE=2 RANK=1 \
python /workspace/liuda/fault/DeepEP/tests/test_low_latency.py --pressure-test 2>&1 | tee /workspace/liuda/fault/DeepEP/internode_test_node2.log
# export NVSHMEM_DEBUG=INFO
# export CUDA_VISIBLE_DEVICES=1
# export LIB_LIBRARY_PATH=/workspace/liuda/iw/VCCL/build/lib:$LIB_LIBRARY_PATH
# nsys profile -t cuda,nvtx,oshmem -o test_run2 --duration 60 python /workspace/liuda/fault/DeepEP/tests/test_low_latency.py --pressure-test 2>&1 | tee /workspace/liuda/fault/DeepEP/internode_test_node2.log
# export CUDA_VISIBLE_DEVICES=1
# python /workspace/liuda/fault/DeepEP/tests/test_internode.py --skip-combine 2>&1 | tee /workspace/liuda/fault/DeepEP/internode_test_node2.log
# export CUDA_LAUNCH_BLOCKING=1