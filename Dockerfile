FROM dart:stable
WORKDIR /root

# Setup apt packages
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && \
  apt-get install -y \
  git \
  curl \
  wget \
  vim \
  ssh
SHELL ["/bin/bash", "-c"]

RUN echo "export PATH=$HOME/.pub-cache/bin:$PATH" >> .bashrc
RUN dart pub global activate conduit 4.2.0