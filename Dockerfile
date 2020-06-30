FROM python:3.8.3-alpine3.12

RUN apk update

RUN apk add build-base \
            musl-dev \
            python3-dev \
            libffi-dev \
            openssl-dev

RUN pip install python-openstackclient

COPY src/ /

CMD /entrypoint.sh