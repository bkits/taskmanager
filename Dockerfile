FROM ubuntu

RUN apt-get update
RUN apt-get install python -y
RUN apt-get install python-pip -y

RUN pip install flask
RUN pip install flask-sqlalchemy

COPY . /opt/source-code
ENTRYPOINT FLASK_APP=/opt/source-code/app.py flask run --host=0.0.0.0
