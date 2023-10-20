FROM python:3.9-slim-buster

WORKDIR /app
RUN apt-get update
RUN apt-get install -y python3-pip
RUN pip3 install Flask

COPY Python.py /app
EXPOSE 5000

CMD ["gunicorn", "-b", "0.0.0.0:5000", "run:app"]
