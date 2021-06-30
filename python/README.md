docker build -t centos:v1 -f Dockerfile .
docker run centos:v1 /usr/bin/python3 /opt/flask_hello.py
