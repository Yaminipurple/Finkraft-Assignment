FROM python:3.9-slim-buster

WORKDIR /app
COPY Python.py ./app/testing.py

RUN python3 testing.py

EXPOSE 5000

CMD ["gunicorn", "-b", "0.0.0.0:5000", "run:app"]
