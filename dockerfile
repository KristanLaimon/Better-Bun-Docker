FROM debian:12

# Installing bun v1.2.2
SHELL [ "/usr/bin/bash", "-c" ]
RUN apt update   &&\
  apt install curl -y &&\
  apt install git -y &&\
  apt install unzip -y
RUN curl -fsSL https://bun.sh/install | bash -s "bun-v1.2.2"
ENV PATH="/root/.bun/bin:${PATH}"
