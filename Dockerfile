FROM tensorflow/tensorflow

WORKDIR /tensorflow
EXPOSE 5005

RUN pip install --upgrade flask pymongo
COPY . .

ENTRYPOINT FLASK_APP=app.py flask run --host=0.0.0.0 --port=5005
