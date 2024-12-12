FROM nvidia/cudagl:11.3.0-devel
RUN apt update && apt install -y sudo x11-apps mesa-utils git python3 python3-pip
RUN mkdir -p /home/$USER/PROJECTS # This is only required inside VS Code

ARG PIP_NO_CACHE_DIR=1

RUN pip3 install pip==23.0.0
RUN pip3 install --no-cache-dir open3d opencv-python
RUN pip3 install --no-cache-dir torch==1.10.2 torchvision --index-url https://download.pytorch.org/whl/cu113
RUN pip3 install --no-cache-dir gdown wheel tensorboard hydra-core==1.1.0

ARG TORCH_CUDA_ARCH_LIST="6.1+PTX"

RUN pip3 install --no-cache-dir openmim && mim install mmcv-full==1.4.0 && mim install mmdet==2.14.0
RUN pip3 install timm
RUN apt-get autoremove -y
RUN apt-get clean