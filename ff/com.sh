export NVSHMEM_DIR=/workspace/liuda/output/nvshmem
export LD_LIBRARY_PATH="${NVSHMEM_DIR}/lib:$LD_LIBRARY_PATH"
export PATH="${NVSHMEM_DIR}/bin:$PATH"
export TORCH_CUDA_ARCH_LIST="9.0"
rm -rf build/
cd /workspace/liuda/fault/DeepEP
rm deep_ep_cpp.cpython-312-x86*
NVSHMEM_DIR=/workspace/liuda/output/nvshmem  python3 setup.py build
ln -sf build/lib.linux-x86_64-cpython-312/deep_ep_cpp.cpython-312-x86_64-linux-gnu.so deep_ep_cpp.cpython-312-x86_64-linux-gnu.so