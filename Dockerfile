FROM ubuntu:latest

RUN apt-get update

RUN apt-get install -y \
	screen \
	bsdmainutils \
	wget
	
WORKDIR /root
RUN wget https://bootstrap.pypa.io/get-pip.py
RUN python3 get-pip.py

COPY . /data
WORKDIR /data

RUN pip install -r requirements.txt
