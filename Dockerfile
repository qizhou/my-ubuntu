FROM ubuntu

RUN apt update
RUN apt install -y iputils-ping net-tools sysstat wget curl git golang vim python3 libssl-dev tmux

ENV NVM_DIR /root/.nvm
ENV NODE_VERSION 20

RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash \
    && . $NVM_DIR/nvm.sh \
    && nvm install $NODE_VERSION

RUN curl -o- https://raw.githubusercontent.com/qizhou/my-ubuntu/main/.bashrc >> ~/.bashrc

RUN curl -o- https://raw.githubusercontent.com/qizhou/my-ubuntu/main/.tmux.conf >> ~/.tmux.conf
