FROM ubuntu:20.04
ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=Asia/Shanghai
RUN DEBIAN_FRONTEND=noninteractive \
    apt-get update \
    && apt-get install -y \
      python3-pip \
      python3-dev \
      build-essential \
      libffi7 \
      libffi-dev \
      libssl-dev \
      curl \
      bash-completion \
      vim \
      git \
      graphviz \
      libgraphviz-dev \
      pkg-config

RUN pip3 install --upgrade pip -i https://mirrors.aliyun.com/pypi/simple/
COPY requirements.txt /requirements.txt
RUN pip3 install -r requirements.txt -i https://mirrors.aliyun.com/pypi/simple/

RUN curl -fsSL https://deb.nodesource.com/setup_20.x  | bash -
RUN apt-get install -y nodejs

COPY web /web
WORKDIR /web
RUN npm install --registry=https://registry.npmmirror.com

COPY orquesta /orquesta
WORKDIR /orquesta
RUN pip3 install -e .

WORKDIR /web
COPY bin/docker-entrypoint.sh /usr/local/bin/
ENTRYPOINT ["docker-entrypoint.sh"]
