FROM python:3.9-slim-buster

WORKDIR /app
RUN apt-get update
RUN apt-get install -y python3-pip
RUN pip3 install Flask
RUN pip install --no-cache gunicorn==20.1.0

COPY Python.py .
EXPOSE 5000

CMD ["gunicorn", "-b", "0.0.0.0:5000", "run:app"]
