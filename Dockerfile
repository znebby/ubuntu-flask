FROM ubuntu:16.04
MAINTAINER znebby <znebby@znebby.com>

RUN apt-get update \
    && apt-get install -y python3 python3-pip python3-dev nginx supervisor \
    && pip3 install --upgrade pip

COPY flask.conf /etc/nginx/sites-available
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf
COPY ./myproject /myproject

RUN pip3 install -r /myproject/requirements.txt \
    && ln -s /etc/nginx/sites-available/flask.conf /etc/nginx/sites-enabled

CMD ["/usr/bin/supervisord"]