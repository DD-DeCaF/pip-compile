FROM python:3.6-alpine3.8

ENV PYTHONUNBUFFERED=1

WORKDIR /opt

RUN set -eux \
    && pip install --upgrade pip setuptools wheel pip-tools \
    && rm -rf /root/.cache/pip

ENTRYPOINT ["pip-compile", "--verbose", "--generate-hashes"]
