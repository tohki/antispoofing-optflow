FROM tohki/ubuntu-opencv2:latest

WORKDIR /root/src/

ENV LD_LIBRARY_PATH /usr/local/lib:$LD_LIBRARY_PATH
ENV PATH /opt/conda/bin:$PATH

RUN apt install -y git && \
    wget https://repo.continuum.io/miniconda/Miniconda2-latest-Linux-x86_64.sh && \
    bash Miniconda2-latest-Linux-x86_64.sh -b -p /opt/conda && \
    conda update -y conda && \
    conda update -n root conda && \
    conda config --set show_channel_urls True && \
    conda config --add channels defaults && \
    conda config --add channels https://www.idiap.ch/software/bob/conda && \
    conda install -y bob && \
    git clone https://gitlab.idiap.ch/bob/antispoofing.optflow.git && \
    cd antispoofing.optflow && \
    python setup.py install && \
    cd .. && \
    rm -f Miniconda2-latest-Linux-x86_64.sh && \
    rm -rf antispoofing.optflow && \
    rm -rf /opt/conda/pkgs/*
