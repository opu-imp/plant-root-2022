FROM pytorch/pytorch:1.0.1-cuda10.0-cudnn7-runtime

COPY requirements.txt .
RUN pip install -r requirements.txt

WORKDIR /work