FROM alpine

RUN set -x \
      && apk add --no-cache \
      bash \
      python3 \
      py3-pip \
      git

RUN python3 -m venv /venv
ENV PATH="/venv/bin:$PATH"

RUN /venv/bin/pip install --upgrade pip
RUN /venv/bin/pip install --upgrade aider-chat

WORKDIR /workspace
ENV HOME=/workspace
ENV PATH="/workspace/.local/bin:${PATH}"
ENTRYPOINT ["tail", "-f", "/dev/null"]
