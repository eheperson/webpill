# pull official base image
FROM python:3.9.5-slim-buster

# set work directory
RUN mkdir app
WORKDIR /app

# set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# install dependencies
RUN pip install --upgrade pip
COPY ./requirements.txt .
RUN pip install -r requirements.txt

# install system dependencies
RUN apt-get update && apt-get install -y netcat

# copy entrypoint.sh
COPY ./entrypoint.sh .
RUN sed -i 's/\r$//g' /app/entrypoint.sh
RUN chmod +x /app/entrypoint.sh

# copy project
COPY $REPO_PATH /app

# run entrypoint.sh
ENTRYPOINT ["/app/entrypoint.sh"]
