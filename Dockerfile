FROM python:3.11

WORKDIR /app

ADD requirements.txt requirements.txt
RUN pip install -r requirements.txt --upgrade

ADD . .

ENTRYPOINT ["python", "main.py"]