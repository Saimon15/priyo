FROM python:3.6.0-slim
ENV PYTHONUNBUFFERED 1
RUN mkdir /app
WORKDIR /app
ADD requirements.txt /app/
RUN pip install -r requirements.txt
COPY ./priyo/ /app/
EXPOSE 8000
