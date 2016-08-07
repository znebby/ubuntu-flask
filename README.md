# ubuntu-flask

A docker container to run the flask hello world app in Ubuntu.

It uses Ubuntu 16.04, Python3, nginx, uwsgi and the flask framework.

## Building

Pull the git repo and cd into the repo directory.

Run the following command: docker build -t znebby/ubuntu-flask .

## Running

Run the following command: docker run -d -p 80:80 znebby/ubuntu-flask