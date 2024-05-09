FROM amazonlinux:2023

RUN dnf install -y \
     git \
     gzip \
     nodejs \
     npm \
     python3-pip \
     shadow-utils \
     tar \
     vim \
     xz \
   && dnf clean all \
   && ln -s /usr/bin/python3 /usr/bin/python \
   && npm install -g pnpm

WORKDIR /workspace
ENV HOME=/workspace
ENV PATH="/workspace/.local/bin:${PATH}"
ENTRYPOINT ["tail", "-f", "/dev/null"]
