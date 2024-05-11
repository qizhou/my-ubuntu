FROM ubuntu

RUN apt update
RUN apt install -y iputils-ping net-tools sysstat wget curl git golang
RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
RUN nvm install 20
