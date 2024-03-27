FROM python:3.8

ENV FLASK_APP=server
LABEL version="0.0.1" author="user@name.com"

WORKDIR app
COPY . /app
RUN pip install -r requirements.txt

EXPOSE 8080

CMD ["python", "server.py"]
