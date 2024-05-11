FROM ubuntu

RUN apt update
RUN apt install -y iputils-ping
RUN apt install -y net-tools
