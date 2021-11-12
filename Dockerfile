FROM ubuntu:18.04
ENV PATH /root/.pyenv/bin:$PATH
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y \
    build-essential \
    curl \
    git \
    libbz2-dev \
    libffi-dev \
    liblzma-dev \
    libmysqlclient-dev \
    libncurses5-dev \
    libncursesw5-dev \
    libreadline-dev \
    libsqlite3-dev \
    libssl-dev \
    llvm \
    make \
    mysql-client \
    python-openssl \
    tk-dev \
    unixodbc-dev \
    wget \
    xz-utils \
    zlib1g-dev

RUN curl -L https://github.com/pyenv/pyenv-installer/raw/master/bin/pyenv-installer | bash
RUN apt-get update && apt-get install -y \
    graphviz \
    python3-distutils \
    python3.8 \
    python3-pip \
    protobuf-compiler \
    libgconf-2-4
RUN update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.8 1
RUN update-alternatives --install /usr/bin/pip pip /usr/bin/pip3 1
RUN pip3 install pipenv 

# RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
# RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" > /etc/apt/sources.list.d/yarn.list

# RUN apt-get update && apt-get install -y \
    # npm \
    # yarn

COPY app.sh .
CMD ['bash']
