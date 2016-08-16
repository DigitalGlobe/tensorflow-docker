FROM tensorflow/tensorflow:0.10.0rc0-gpu

WORKDIR /opt
COPY testTensorflow.sh /opt

