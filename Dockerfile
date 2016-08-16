FROM tensorflow/tensorflow:0.9.0-gpu

# Fix cuda linkage
RUN ln -s /usr/local/nvidia/lib64/libcuda.so.1 /usr/lib/x86_64-linux-gnu/libcuda.so
LABEL com.nvidia.volumes.needed="nvidia_driver"
LABEL com.nvidia.cuda.version="7.0"

WORKDIR /opt
COPY testTensorflow.sh /opt

