FROM tensorflow/tensorflow:0.9.0-gpu

WORKDIR /opt
COPY testTensorflow.sh /opt

