FROM python:3.8

WORKDIR /app

COPY requirements.txt requirements.txt
COPY . /app

RUN apt-get update && apt-get install -y python3-pip && apt-get upgrade -y pip
run pip install --user -r requirements.txt