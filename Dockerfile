FROM python:3.8.13-slim-buster
WORKDIR /test-flask-docker

COPY requirements.txt requirements.txt
RUN pip freeze > requirements.txt
RUN python3 -m pip install -r requirements.txt

COPY . .
EXPOSE 5000/tcp
CMD [“python3”, “-m”, “flask”, “run”, “--host=0.0.0.0”]
