from gcr.io/datamechanics/spark:platform-3.1-latest

ENV PYSPARK_MAJOR_PYTHON_VERSION=3

WORKDIR /opt/application/

COPY requirements.txt .
RUN pip3 install -r requirements.txt

ENV AWS_ACCESS_KEY_ID=
ENV AWS_SECRET_ACCESS_KEY=
COPY main.py .

COPY Papermill.ipynb .

RUN jupyter notebook --no-browser &
