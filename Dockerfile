FROM python:3
RUN mkdir /inventrol
WORKDIR /inventrol
COPY requirements.txt /inventrol/
RUN pip install -r requirements.txt
COPY . /inventrol/
