FROM continuumio/anaconda

MAINTAINER Yuta Akizuki <yt@ytakzk.me>


# install required packages (vim is not necessary)
RUN apt-get update && apt-get install -y \
    vim \
    gcc \
    libx11-dev \
    && rm -rf /var/lib/apt/lists/*

# install COMPAS and the dependent packages
RUN conda config --add channels conda-forge && \
    conda install -y COMPAS && \
    pip install \
    msgpack \
    argparse \
    compas_fab

# set up jupyter
RUN jupyter notebook --generate-config
RUN mkdir jupyter
COPY ./templates/jupyter_notebook_config.py /root/.jupyter/jupyter_notebook_config.py

# launch jupyter
COPY ./scripts/startup.sh /root/startup.sh
RUN chmod +x /root/startup.sh
CMD ["/root/startup.sh"]
