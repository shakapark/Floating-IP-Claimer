FROM python:3.8.3-alpine3.12

RUN pip install python-openstackclient

COPY src/ /

CMD /entrypoint.sh